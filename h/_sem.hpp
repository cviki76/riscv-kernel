#ifndef PROJECT_BASE__SEM_HPP
#define PROJECT_BASE__SEM_HPP

#include "../lib/hw.h"
#include "../h/list.hpp"
#include "../h/tcb.hpp"
#include "syscall_c.h"

class _sem {
public:
    ~_sem();

    void *operator new(size_t size) { return MemoryAllocator::alloc(size); }

    void operator delete(void *toDelete) { MemoryAllocator::freee(toDelete); }

private:

    List<TCB> waitingThreads;

    int val;

    bool closed;

    _sem(sem_t *handle, unsigned init);

    int close();

    int wait();

    int signal();

    friend class Riscv;
};


#endif //PROJECT_BASE__SEM_HPP
