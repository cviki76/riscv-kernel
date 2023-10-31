#include "../h/tcb.hpp"
//#include "../h/workers.hpp"
//#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/userMain.hpp"
#include "../test/printing.hpp"
#include "../h/MemoryAllocator.hpp"

int b = 0;
void wrapperUser(void* arg){
    userMain();
    printString("Zavrsio");
    b = 1;
}

int main()
{
    MemoryAllocator::mem_init();
    printString("mainStarted\n");
    TCB* mainKernelThread = TCB::createThread(nullptr,nullptr,nullptr);
    TCB* idleThread = TCB::createIdleThread(TCB::idleWrapper);

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    thread_t user = nullptr;
    thread_create(&user,wrapperUser,nullptr);

//    thread_t thread1 = nullptr;
//    int a = 0;
//    int retval1 = thread_create(&thread1,workerBodyA,&a);
//    printInteger(retval1);
//
//    thread_t thread2 = nullptr;
//    int b = 500;
//    int retval2 = thread_create(&thread2,workerBodyB,&b);
//    printInteger(retval2);
//
//    thread_t thread3 = nullptr;
//    int b1 = 300;
//    int retval3 = thread_create(&thread3,workerBodyB,&b1);
//    printInteger(retval3);
//
//    thread_t thread4 = nullptr;
//    int b2 = 100;
//    int retval4 = thread_create(&thread4,workerBodyB,&b2);
//    printInteger(retval4);
//
//
    while(b == 0){
        thread_dispatch();
    }

    delete mainKernelThread;
    delete idleThread;
    return 0;
}