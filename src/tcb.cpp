#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

TCB* TCB::running = nullptr;

TCB *TCB::idle = nullptr;

List<TCB> TCB::threadsSleeping;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThreadNS(Body body,void* arg,uint64* stack)
{
    return new TCB(body, arg, stack);
}

TCB *TCB::createThread(Body body,void* arg,uint64* stack)
{
    if (!body && running) return nullptr; //vec postoji kernel nit

    TCB* tcb = createThreadNS(body, arg, stack);
    if (tcb->systemThread) {
        TCB::running = tcb;
    }
    else{
        tcb->status = READY;
        Scheduler::put(tcb);
    }
    return tcb;
}

TCB *TCB::createIdleThread(TCB::Body body) {
    if (!idle) {
        uint64 *stack = (uint64*)MemoryAllocator::alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
        idle = createThreadNS(body, nullptr, stack);
        idle->status = IDLE;
        idle->systemThread = true;
    }
    return idle;
}


void TCB::idleWrapper(void* arg)
{
    while (true) {
        thread_dispatch();
    }
}

void TCB::dispatch()
{
    TCB::timeSliceCounter=0;
    TCB *old = running;

    Scheduler::readyThreadQueue.peekFirst();

    if (old->status == RUNNING) {
        old->status = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();

    if (running) {
        running->status = RUNNING;
    } else {
        running = idle;
    }

    //Riscv::privilege();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    //Riscv::privilege();
    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

int TCB::exit() {
    if (running->status != RUNNING) {
        return -3;
    }
    running->status = FINISHED;
    dispatch();
    return 0;
}

int TCB::wait() {
    if (running->status != RUNNING) {
        return -3;
    }
    running->status = WAITING;
    dispatch();
    return 0;
}

int TCB::signal() {
    if (status != WAITING) {
        return -3;
    }
    status = READY;
    Scheduler::put(this);
    Scheduler::readyThreadQueue.peekFirst();
    return 0;
}

int TCB::time_sleep(time_t time) {
    if (running->status != RUNNING) {
        return -3;
    }
    if(time == 0)
        return 0;
    running->status = SLEEPING;
    running->timeout = time;
    TCB::threadsSleeping.addFirst(TCB::running);
    dispatch();
    return 0;
}

void TCB::checkForWakeUp() {
    if (threadsSleeping.peekFirst() == 0) return; //nema elemenata

    int result;

    List<TCB>::Elem *curr = TCB::threadsSleeping.head;
    List<TCB>::Elem *prev = nullptr;
    while (prev != TCB::threadsSleeping.tail && curr!=nullptr){
        result = 0;
        curr->data->timeout--;
        if (curr->data->timeout <= 0){
            result = curr->data->wakeUp(prev,curr);
        }
        if (result == 0) {
            prev = curr;
            curr = curr->next;
        }else if(result == 1){
            prev = nullptr;
            curr = TCB::threadsSleeping.head;
        }else if(result == 2){
            prev = TCB::threadsSleeping.tail;
        }else if(result == 3){
            curr = prev->next;
        }
    }
}

int TCB::wakeUp(List<TCB>::Elem *prev,List<TCB>::Elem *curr) {
    TCB* threadToWakeUp;
    int result = 0;

    if(prev == nullptr){
        threadToWakeUp = TCB::threadsSleeping.removeFirst();
        result = 1;
    }
    else if(curr->data == TCB::threadsSleeping.tail->data){
        threadToWakeUp = TCB::threadsSleeping.removeLast();
        result = 2;
    }
    else{
        threadToWakeUp = curr->data;
        prev->next = curr->next;
        delete curr;
        result = 3;
    }
    threadToWakeUp->status = READY;
    threadToWakeUp->timeout = 0;
    Scheduler::put(threadToWakeUp);

    return result;
}

int TCB::start() {
    if (status != CREATED) {
        return -1;
    }
    status = READY;
    Scheduler::put(this);
    return 0;
}


