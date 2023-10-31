#include "../h/_sem.hpp"


_sem::_sem(sem_t *handle, unsigned int init) {
    *handle = this;
    val = init;
    closed = false;
}

int _sem::wait() {
    if (closed)
        return -3;
    if (--val < 0){
        waitingThreads.addLast(TCB::running);
        TCB::wait();
    }
    return 0;
}

int _sem::close() {
    if (closed)
        return -3;
    val = 0;
    closed = true;
    while (waitingThreads.peekFirst()!=nullptr){
        TCB* thread = waitingThreads.removeFirst();
        thread->signal();
    }
    return 0;
}

int _sem::signal() {
    if (closed)
        return -3;
    if(++val <= 0){
        TCB* thread = waitingThreads.removeFirst();
        thread->signal();
    }
    return 0;
}

_sem::~_sem() {
    close();
}




