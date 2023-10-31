#include "../h/MemoryAllocator.hpp"
#include "../h/MemoryDesc.hpp"

MemoryDesc* MemoryAllocator::free = nullptr;

MemoryDesc* MemoryAllocator::allocated = nullptr;

void MemoryAllocator::mem_init() {
    MemoryDesc* memory = (MemoryDesc*)HEAP_START_ADDR;
    memory->status = FREE;
    memory->prev = nullptr;
    memory->next = nullptr;
    memory->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - MEM_BLOCK_SIZE);
    free = memory;
}

void *MemoryAllocator::alloc(size_t size){
    if (size % MEM_BLOCK_SIZE != 0)
        size = ((size / MEM_BLOCK_SIZE) + 1) * MEM_BLOCK_SIZE;

    MemoryDesc* temp = free;
    while(temp){
        if (temp->size == size){
            deletee(&free,temp);
            insert(&allocated,temp,ALLOCATED);
            return (void*)((char*)(temp) + MEM_BLOCK_SIZE);
        }
        else if(temp->size > size){
            deletee(&free,temp);

            MemoryDesc* newFree = (MemoryDesc*)((char*)temp+MEM_BLOCK_SIZE+size);
            newFree->size =(size_t)(temp->size-size-MEM_BLOCK_SIZE);
            newFree->prev = nullptr;
            newFree->next = nullptr;
            insert(&free,newFree,FREE);

            temp->size = size;
            insert(&allocated,temp,ALLOCATED);
            return (void*)((char*)(temp) + MEM_BLOCK_SIZE);
        }

        temp=temp->next;
    }

    return nullptr;
}

int MemoryAllocator::freee(void* toFree) {
    if (toFree == nullptr)
        return -3;
    MemoryDesc* toFreeDesc = (MemoryDesc*)((char*)toFree - MEM_BLOCK_SIZE);

    if (toFreeDesc->status!=ALLOCATED)
        return -3;

    deletee(&allocated,toFreeDesc);
    insert(&free,toFreeDesc,FREE);
    //squash(toFreeDesc);

    return 0;
}