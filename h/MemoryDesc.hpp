#ifndef PROJECT_BASE_MEMORYDESC_HPP
#define PROJECT_BASE_MEMORYDESC_HPP

#include "../lib/hw.h"

enum MemoryStatus{
    ALLOCATED,
    FREE
};

typedef struct MemoryDesc{
    MemoryDesc* next;
    MemoryDesc* prev;
    size_t size;
    MemoryStatus status;
}MemoryDesc;

void insert(MemoryDesc **head, MemoryDesc *toInsert, MemoryStatus status);

void deletee(MemoryDesc **head, MemoryDesc *toDelete);

//void squash(MemoryDesc *free);
#endif //PROJECT_BASE_MEMORYDESC_HPP
