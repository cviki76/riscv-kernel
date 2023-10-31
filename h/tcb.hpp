#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "MemoryAllocator.hpp"

enum Status
{
    FINISHED,
    RUNNING,
    READY,
    CREATED,
    WAITING,
    SLEEPING,
    IDLE
};

// Thread Control Block
class TCB
{
public:
    ~TCB() { delete[] stack; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void(*)(void*);

    static TCB* createThread(Body body,void *arg,uint64* stack);

    static TCB* createThreadNS(Body body,void *arg,uint64* stack);

    static TCB* createIdleThread(Body body);

    int start();

    static TCB* running;

    static TCB* idle;

    static void idleWrapper(void*);

    void* operator new(size_t size) { return MemoryAllocator::alloc(size); }

    void operator delete(void *toDelete) { MemoryAllocator::freee(toDelete); }

private:
    TCB(Body body, void *arg,uint64* stack) :
            body(body),
            arg(arg),
            stack(body != nullptr ? stack : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            status(CREATED)
    {
        timeSlice = DEFAULT_TIME_SLICE;
        if (body == nullptr) {
            status = RUNNING;
            systemThread = true;
        }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void *arg;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    Status status;
    bool systemThread=false;
    time_t timeout = 0;

    static List<TCB> threadsSleeping;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static int exit();

    static int time_sleep(time_t);

    static void checkForWakeUp();

    static int wakeUp(List<TCB>::Elem *prev,List<TCB>::Elem *curr);

    static void dispatch();

    static int wait();

    int signal();

    friend class Riscv;

    friend class _sem;

    static uint64 timeSliceCounter;

    static uint64 constexpr TIME_SLICE = 2;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
