#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"
#include "../h/_sem.hpp"
#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"

void Riscv::privilege() {
    if (TCB::running->systemThread) {
        ms_sstatus(SSTATUS_SPP);
    } else {
        mc_sstatus(SSTATUS_SPP);
    }
}

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

using Body = void(*)(void*);

uint64 Riscv::systemCall(uint64* args){
    uint64 code = (uint64)args[0];

    if(code == Cthread_create){
        thread_t* handle = (thread_t*)args[1];
        Body start_routine = (Body)args[2];
        void* arg = (void*)args[3];
        uint64* stack = (uint64*)args[4];

        *handle = TCB::createThread(start_routine,arg,stack);
        if(!handle)
            return -3;
        return 0;
    }
    if(code == Cthread_createNS){
        thread_t* handle = (thread_t*)args[1];
        Body start_routine = (Body)args[2];
        void* arg = (void*)args[3];
        uint64* stack = (uint64*)args[4];

        *handle = TCB::createThreadNS(start_routine,arg,stack);
        if(!handle)
            return -3;
        return 0;
    }
    else if (code == Cthread_start)
    {
        thread_t handle = (thread_t)args[1];
        uint64 retval = handle->start();
        return retval;
    }
    else if(code == Cthread_exit){
        uint64 retval = TCB::exit();
        return retval;
    }
    else if(code == Cthread_dispatch){
        TCB::dispatch();
        return 0;
    }
    else if(code == Csem_open){
        sem_t* handle = (sem_t*)args[1];
        unsigned init = (unsigned)args[2];

        new _sem(handle,init);
        return 0;
    }
    else if(code == Csem_close){
        sem_t handle = (sem_t)args[1];
        uint64 retval = handle->close();
        return retval;
    }
    else if(code == Csem_wait){
        sem_t handle = (sem_t)args[1];
        uint64 retval = handle->wait();
        return retval;
    }
    else if(code == Csem_signal){
        sem_t handle = (sem_t)args[1];
        uint64 retval = handle->signal();
        return retval;
    }
    else if(code == Ctime_sleep){
        time_t time = (time_t)args[1];
        uint64 retval = TCB::time_sleep(time);
        return retval;
    }
    else if(code == Cmem_alloc){
        size_t volatile size = (size_t)args[1];
        uint64 retval = (uint64)MemoryAllocator::alloc(size);
        return retval;
    }
    else if(code == Cmem_free){
        void* toFree = (void*)args[1];
        uint64 retval = (uint64)MemoryAllocator::freee(toFree);
        return retval;
    }

    return -9;
}



void Riscv::handleSupervisorTrap()
{
    uint64 args[5];
    loadArgsFromRegs(args);

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {

        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
      //  printString("Usao u ecall\n");
       // printInteger(args[0]);
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 retval = (uint64)systemCall(args);

        w_retval(retval);
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        TCB::timeSliceCounter++;
        //printString("Tajmer\n");
        TCB::checkForWakeUp();
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
       //     printString("Treba menjati\n");
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
            mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        uint64 scause = r_scause();
        uint64 stvec = r_stvec();
        uint64 sepc = r_sepc();

        printString("scause: ");
        printInt(scause);
        printString("\n");

        printString("stvec: ");
        printInt(stvec);
        printString("\n");

        printString("sepc: ");
        printInt(sepc);
        printString("\n");
    }
}