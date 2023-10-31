#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../h/MemoryDesc.hpp"

class MemoryAllocator {

    static MemoryDesc* free;
    static MemoryDesc* allocated;

public:
    static void* alloc(size_t size);
    static int freee(void*);

    static void mem_init();

    friend class Riscv;
};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
