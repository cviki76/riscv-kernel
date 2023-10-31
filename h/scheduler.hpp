#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP

#include "list.hpp"

class TCB;

class Scheduler
{
private:


public:
    static List<TCB> readyThreadQueue;

    static TCB *get();

    static void put(TCB *tcb);

};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
