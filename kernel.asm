
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	86013103          	ld	sp,-1952(sp) # 80008860 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7dd030ef          	jal	ra,80003ff8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp,-256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp,256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	4ac010ef          	jal	ra,80002630 <_ZN5Riscv20handleSupervisorTrapEv>

    csrr a1, scause
    80001188:	142025f3          	csrr	a1,scause
    addi a1, a1, -8
    8000118c:	ff858593          	addi	a1,a1,-8
    beqz a1, syscall
    80001190:	00058663          	beqz	a1,8000119c <syscall>
    addi a1, a1, -1
    80001194:	fff58593          	addi	a1,a1,-1
    bnez a1, other
    80001198:	00059463          	bnez	a1,800011a0 <other>

000000008000119c <syscall>:
syscall:
    sd x10, 10*8(sp)
    8000119c:	04a13823          	sd	a0,80(sp)

00000000800011a0 <other>:
other:

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011a0:	00013003          	ld	zero,0(sp)
    800011a4:	00813083          	ld	ra,8(sp)
    800011a8:	01013103          	ld	sp,16(sp)
    800011ac:	01813183          	ld	gp,24(sp)
    800011b0:	02013203          	ld	tp,32(sp)
    800011b4:	02813283          	ld	t0,40(sp)
    800011b8:	03013303          	ld	t1,48(sp)
    800011bc:	03813383          	ld	t2,56(sp)
    800011c0:	04013403          	ld	s0,64(sp)
    800011c4:	04813483          	ld	s1,72(sp)
    800011c8:	05013503          	ld	a0,80(sp)
    800011cc:	05813583          	ld	a1,88(sp)
    800011d0:	06013603          	ld	a2,96(sp)
    800011d4:	06813683          	ld	a3,104(sp)
    800011d8:	07013703          	ld	a4,112(sp)
    800011dc:	07813783          	ld	a5,120(sp)
    800011e0:	08013803          	ld	a6,128(sp)
    800011e4:	08813883          	ld	a7,136(sp)
    800011e8:	09013903          	ld	s2,144(sp)
    800011ec:	09813983          	ld	s3,152(sp)
    800011f0:	0a013a03          	ld	s4,160(sp)
    800011f4:	0a813a83          	ld	s5,168(sp)
    800011f8:	0b013b03          	ld	s6,176(sp)
    800011fc:	0b813b83          	ld	s7,184(sp)
    80001200:	0c013c03          	ld	s8,192(sp)
    80001204:	0c813c83          	ld	s9,200(sp)
    80001208:	0d013d03          	ld	s10,208(sp)
    8000120c:	0d813d83          	ld	s11,216(sp)
    80001210:	0e013e03          	ld	t3,224(sp)
    80001214:	0e813e83          	ld	t4,232(sp)
    80001218:	0f013f03          	ld	t5,240(sp)
    8000121c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001220:	10010113          	addi	sp,sp,256

    sret
    80001224:	10200073          	sret
	...

0000000080001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001244:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001248:	00b29a63          	bne	t0,a1,8000125c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000124c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001250:	fe029ae3          	bnez	t0,80001244 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001254:	00000513          	li	a0,0
    jr ra                  # Return.
    80001258:	00008067          	ret

000000008000125c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000125c:	00100513          	li	a0,1
    80001260:	00008067          	ret

0000000080001264 <_Z20createStackForThreadPP3TCBPFvPvES2_S2_>:
    uint64 volatile ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return ret;
}

int createStackForThread(thread_t* handle,void(*start_routine)(void*),void* arg,void* stack_space){
    80001264:	fe010113          	addi	sp,sp,-32
    80001268:	00813c23          	sd	s0,24(sp)
    8000126c:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    80001270:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    80001274:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    80001278:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    8000127c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    80001280:	01100793          	li	a5,17
    80001284:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001288:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    8000128c:	00050793          	mv	a5,a0
    80001290:	fef43423          	sd	a5,-24(s0)
    return ret;
    80001294:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Cthread_create);
    return returnVal();
}
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	01813403          	ld	s0,24(sp)
    800012a0:	02010113          	addi	sp,sp,32
    800012a4:	00008067          	ret

00000000800012a8 <_Z22createStackForThreadNSPP3TCBPFvPvES2_S2_>:
    void *stack = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    if(!stack) return -2;
    return createStackForThread(handle,start_routine,arg,stack);
}

int createStackForThreadNS(thread_t* handle,void(*start_routine)(void*),void* arg,void* stack_space){
    800012a8:	fe010113          	addi	sp,sp,-32
    800012ac:	00813c23          	sd	s0,24(sp)
    800012b0:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    800012b4:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    800012b8:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    800012bc:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    800012c0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    800012c4:	09100793          	li	a5,145
    800012c8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800012cc:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800012d0:	00050793          	mv	a5,a0
    800012d4:	fef43423          	sd	a5,-24(s0)
    return ret;
    800012d8:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Cthread_createNS);
    return returnVal();
}
    800012dc:	0005051b          	sext.w	a0,a0
    800012e0:	01813403          	ld	s0,24(sp)
    800012e4:	02010113          	addi	sp,sp,32
    800012e8:	00008067          	ret

00000000800012ec <_Z12thread_startP3TCB>:
    if(!stack) return -2;
    return createStackForThreadNS(handle,start_routine,arg,stack);
}

int thread_start(thread_t handle){
    if (!handle)
    800012ec:	04050463          	beqz	a0,80001334 <_Z12thread_startP3TCB+0x48>
int thread_start(thread_t handle){
    800012f0:	fe010113          	addi	sp,sp,-32
    800012f4:	00813c23          	sd	s0,24(sp)
    800012f8:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    800012fc:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    80001300:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    80001304:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    80001308:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    8000130c:	09200793          	li	a5,146
    80001310:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001314:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001318:	00050793          	mv	a5,a0
    8000131c:	fef43423          	sd	a5,-24(s0)
    return ret;
    80001320:	fe843503          	ld	a0,-24(s0)
        return -3;
    shiftArgsInRegs();
    ecall(Cthread_start);
    return returnVal();
    80001324:	0005051b          	sext.w	a0,a0
}
    80001328:	01813403          	ld	s0,24(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret
        return -3;
    80001334:	ffd00513          	li	a0,-3
}
    80001338:	00008067          	ret

000000008000133c <_Z11thread_exitv>:

int thread_exit(){
    8000133c:	fe010113          	addi	sp,sp,-32
    80001340:	00813c23          	sd	s0,24(sp)
    80001344:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    80001348:	01200793          	li	a5,18
    8000134c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001350:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001354:	00050793          	mv	a5,a0
    80001358:	fef43423          	sd	a5,-24(s0)
    return ret;
    8000135c:	fe843503          	ld	a0,-24(s0)
    ecall(Cthread_exit);
    return returnVal();
}
    80001360:	0005051b          	sext.w	a0,a0
    80001364:	01813403          	ld	s0,24(sp)
    80001368:	02010113          	addi	sp,sp,32
    8000136c:	00008067          	ret

0000000080001370 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001370:	ff010113          	addi	sp,sp,-16
    80001374:	00813423          	sd	s0,8(sp)
    80001378:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    8000137c:	01300793          	li	a5,19
    80001380:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001384:	00000073          	ecall
    ecall(Cthread_dispatch);
}
    80001388:	00813403          	ld	s0,8(sp)
    8000138c:	01010113          	addi	sp,sp,16
    80001390:	00008067          	ret

0000000080001394 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init){
    80001394:	fe010113          	addi	sp,sp,-32
    80001398:	00813c23          	sd	s0,24(sp)
    8000139c:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    800013a0:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    800013a4:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    800013a8:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    800013ac:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    800013b0:	02100793          	li	a5,33
    800013b4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013b8:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800013bc:	00050793          	mv	a5,a0
    800013c0:	fef43423          	sd	a5,-24(s0)
    return ret;
    800013c4:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Csem_open);
    return returnVal();
}
    800013c8:	0005051b          	sext.w	a0,a0
    800013cc:	01813403          	ld	s0,24(sp)
    800013d0:	02010113          	addi	sp,sp,32
    800013d4:	00008067          	ret

00000000800013d8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle){
    800013d8:	fe010113          	addi	sp,sp,-32
    800013dc:	00813c23          	sd	s0,24(sp)
    800013e0:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    800013e4:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    800013e8:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    800013ec:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    800013f0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    800013f4:	02200793          	li	a5,34
    800013f8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013fc:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001400:	00050793          	mv	a5,a0
    80001404:	fef43423          	sd	a5,-24(s0)
    return ret;
    80001408:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Csem_close);
    return returnVal();
}
    8000140c:	0005051b          	sext.w	a0,a0
    80001410:	01813403          	ld	s0,24(sp)
    80001414:	02010113          	addi	sp,sp,32
    80001418:	00008067          	ret

000000008000141c <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    8000141c:	fe010113          	addi	sp,sp,-32
    80001420:	00813c23          	sd	s0,24(sp)
    80001424:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    80001428:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    8000142c:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    80001430:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    80001434:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    80001438:	02300793          	li	a5,35
    8000143c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001440:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001444:	00050793          	mv	a5,a0
    80001448:	fef43423          	sd	a5,-24(s0)
    return ret;
    8000144c:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Csem_wait);
    return returnVal();
}
    80001450:	0005051b          	sext.w	a0,a0
    80001454:	01813403          	ld	s0,24(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    80001460:	fe010113          	addi	sp,sp,-32
    80001464:	00813c23          	sd	s0,24(sp)
    80001468:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    8000146c:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    80001470:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    80001474:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    80001478:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    8000147c:	02400793          	li	a5,36
    80001480:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001484:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001488:	00050793          	mv	a5,a0
    8000148c:	fef43423          	sd	a5,-24(s0)
    return ret;
    80001490:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Csem_signal);
    return returnVal();
}
    80001494:	0005051b          	sext.w	a0,a0
    80001498:	01813403          	ld	s0,24(sp)
    8000149c:	02010113          	addi	sp,sp,32
    800014a0:	00008067          	ret

00000000800014a4 <_Z10time_sleepm>:

int time_sleep(time_t){
    800014a4:	fe010113          	addi	sp,sp,-32
    800014a8:	00813c23          	sd	s0,24(sp)
    800014ac:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    800014b0:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    800014b4:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    800014b8:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    800014bc:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    800014c0:	03100793          	li	a5,49
    800014c4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800014c8:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800014cc:	00050793          	mv	a5,a0
    800014d0:	fef43423          	sd	a5,-24(s0)
    return ret;
    800014d4:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Ctime_sleep);
    return returnVal();
}
    800014d8:	0005051b          	sext.w	a0,a0
    800014dc:	01813403          	ld	s0,24(sp)
    800014e0:	02010113          	addi	sp,sp,32
    800014e4:	00008067          	ret

00000000800014e8 <_Z9mem_allocm>:

void* mem_alloc(size_t size){
    800014e8:	fe010113          	addi	sp,sp,-32
    800014ec:	00813c23          	sd	s0,24(sp)
    800014f0:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    800014f4:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    800014f8:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    800014fc:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    80001500:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    80001504:	00100793          	li	a5,1
    80001508:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000150c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001510:	00050793          	mv	a5,a0
    80001514:	fef43423          	sd	a5,-24(s0)
    return ret;
    80001518:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Cmem_alloc);
    return (void*)returnVal();
}
    8000151c:	01813403          	ld	s0,24(sp)
    80001520:	02010113          	addi	sp,sp,32
    80001524:	00008067          	ret

0000000080001528 <_Z13thread_createPP3TCBPFvPvES2_>:
int thread_create(thread_t* handle,void(*start_routine)(void*),void* arg){
    80001528:	fd010113          	addi	sp,sp,-48
    8000152c:	02113423          	sd	ra,40(sp)
    80001530:	02813023          	sd	s0,32(sp)
    80001534:	00913c23          	sd	s1,24(sp)
    80001538:	01213823          	sd	s2,16(sp)
    8000153c:	01313423          	sd	s3,8(sp)
    80001540:	03010413          	addi	s0,sp,48
    80001544:	00050493          	mv	s1,a0
    80001548:	00058913          	mv	s2,a1
    8000154c:	00060993          	mv	s3,a2
    void *stack = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    80001550:	00008537          	lui	a0,0x8
    80001554:	00000097          	auipc	ra,0x0
    80001558:	f94080e7          	jalr	-108(ra) # 800014e8 <_Z9mem_allocm>
    if(!stack) return -2;
    8000155c:	02050c63          	beqz	a0,80001594 <_Z13thread_createPP3TCBPFvPvES2_+0x6c>
    80001560:	00050693          	mv	a3,a0
    return createStackForThread(handle,start_routine,arg,stack);
    80001564:	00098613          	mv	a2,s3
    80001568:	00090593          	mv	a1,s2
    8000156c:	00048513          	mv	a0,s1
    80001570:	00000097          	auipc	ra,0x0
    80001574:	cf4080e7          	jalr	-780(ra) # 80001264 <_Z20createStackForThreadPP3TCBPFvPvES2_S2_>
}
    80001578:	02813083          	ld	ra,40(sp)
    8000157c:	02013403          	ld	s0,32(sp)
    80001580:	01813483          	ld	s1,24(sp)
    80001584:	01013903          	ld	s2,16(sp)
    80001588:	00813983          	ld	s3,8(sp)
    8000158c:	03010113          	addi	sp,sp,48
    80001590:	00008067          	ret
    if(!stack) return -2;
    80001594:	ffe00513          	li	a0,-2
    80001598:	fe1ff06f          	j	80001578 <_Z13thread_createPP3TCBPFvPvES2_+0x50>

000000008000159c <_Z15thread_createNSPP3TCBPFvPvES2_>:
int thread_createNS(thread_t* handle,void(*start_routine)(void*),void* arg){
    8000159c:	fd010113          	addi	sp,sp,-48
    800015a0:	02113423          	sd	ra,40(sp)
    800015a4:	02813023          	sd	s0,32(sp)
    800015a8:	00913c23          	sd	s1,24(sp)
    800015ac:	01213823          	sd	s2,16(sp)
    800015b0:	01313423          	sd	s3,8(sp)
    800015b4:	03010413          	addi	s0,sp,48
    800015b8:	00050493          	mv	s1,a0
    800015bc:	00058913          	mv	s2,a1
    800015c0:	00060993          	mv	s3,a2
    void *stack = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    800015c4:	00008537          	lui	a0,0x8
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	f20080e7          	jalr	-224(ra) # 800014e8 <_Z9mem_allocm>
    if(!stack) return -2;
    800015d0:	02050c63          	beqz	a0,80001608 <_Z15thread_createNSPP3TCBPFvPvES2_+0x6c>
    800015d4:	00050693          	mv	a3,a0
    return createStackForThreadNS(handle,start_routine,arg,stack);
    800015d8:	00098613          	mv	a2,s3
    800015dc:	00090593          	mv	a1,s2
    800015e0:	00048513          	mv	a0,s1
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	cc4080e7          	jalr	-828(ra) # 800012a8 <_Z22createStackForThreadNSPP3TCBPFvPvES2_S2_>
}
    800015ec:	02813083          	ld	ra,40(sp)
    800015f0:	02013403          	ld	s0,32(sp)
    800015f4:	01813483          	ld	s1,24(sp)
    800015f8:	01013903          	ld	s2,16(sp)
    800015fc:	00813983          	ld	s3,8(sp)
    80001600:	03010113          	addi	sp,sp,48
    80001604:	00008067          	ret
    if(!stack) return -2;
    80001608:	ffe00513          	li	a0,-2
    8000160c:	fe1ff06f          	j	800015ec <_Z15thread_createNSPP3TCBPFvPvES2_+0x50>

0000000080001610 <_Z8mem_freePv>:

int mem_free(void* toFree){
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00813c23          	sd	s0,24(sp)
    80001618:	02010413          	addi	s0,sp,32
        __asm__ volatile ("mv a4, a3");
    8000161c:	00068713          	mv	a4,a3
        __asm__ volatile ("mv a3, a2");
    80001620:	00060693          	mv	a3,a2
        __asm__ volatile ("mv a2, a1");
    80001624:	00058613          	mv	a2,a1
        __asm__ volatile ("mv a1, a0");
    80001628:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    8000162c:	00200793          	li	a5,2
    80001630:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001634:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001638:	00050793          	mv	a5,a0
    8000163c:	fef43423          	sd	a5,-24(s0)
    return ret;
    80001640:	fe843503          	ld	a0,-24(s0)
    shiftArgsInRegs();
    ecall(Cmem_free);
    return returnVal();
}
    80001644:	0005051b          	sext.w	a0,a0
    80001648:	01813403          	ld	s0,24(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret

0000000080001654 <_Z4getcv>:

char getc(){
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00113423          	sd	ra,8(sp)
    8000165c:	00813023          	sd	s0,0(sp)
    80001660:	01010413          	addi	s0,sp,16
    return __getc();
    80001664:	00005097          	auipc	ra,0x5
    80001668:	a94080e7          	jalr	-1388(ra) # 800060f8 <__getc>
}
    8000166c:	00813083          	ld	ra,8(sp)
    80001670:	00013403          	ld	s0,0(sp)
    80001674:	01010113          	addi	sp,sp,16
    80001678:	00008067          	ret

000000008000167c <_Z4putcc>:

void putc(char c){
    8000167c:	ff010113          	addi	sp,sp,-16
    80001680:	00113423          	sd	ra,8(sp)
    80001684:	00813023          	sd	s0,0(sp)
    80001688:	01010413          	addi	s0,sp,16
    __putc(c);
    8000168c:	00005097          	auipc	ra,0x5
    80001690:	a30080e7          	jalr	-1488(ra) # 800060bc <__putc>
    80001694:	00813083          	ld	ra,8(sp)
    80001698:	00013403          	ld	s0,0(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00113423          	sd	ra,8(sp)
    800016ac:	00813023          	sd	s0,0(sp)
    800016b0:	01010413          	addi	s0,sp,16
    800016b4:	00007797          	auipc	a5,0x7
    800016b8:	08c78793          	addi	a5,a5,140 # 80008740 <_ZTV9Semaphore+0x10>
    800016bc:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    sem_close(myHandle);
    800016c0:	00853503          	ld	a0,8(a0)
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	d14080e7          	jalr	-748(ra) # 800013d8 <_Z9sem_closeP4_sem>
}
    800016cc:	00813083          	ld	ra,8(sp)
    800016d0:	00013403          	ld	s0,0(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	02010413          	addi	s0,sp,32
    800016f0:	00050493          	mv	s1,a0
}
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	fb0080e7          	jalr	-80(ra) # 800016a4 <_ZN9SemaphoreD1Ev>
    800016fc:	00048513          	mv	a0,s1
    80001700:	00001097          	auipc	ra,0x1
    80001704:	b5c080e7          	jalr	-1188(ra) # 8000225c <_ZdlPv>
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	02010113          	addi	sp,sp,32
    80001718:	00008067          	ret

000000008000171c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00113423          	sd	ra,8(sp)
    80001724:	00813023          	sd	s0,0(sp)
    80001728:	01010413          	addi	s0,sp,16
    8000172c:	00007797          	auipc	a5,0x7
    80001730:	01478793          	addi	a5,a5,20 # 80008740 <_ZTV9Semaphore+0x10>
    80001734:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001738:	00850513          	addi	a0,a0,8
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	c58080e7          	jalr	-936(ra) # 80001394 <_Z8sem_openPP4_semj>
}
    80001744:	00813083          	ld	ra,8(sp)
    80001748:	00013403          	ld	s0,0(sp)
    8000174c:	01010113          	addi	sp,sp,16
    80001750:	00008067          	ret

0000000080001754 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00113423          	sd	ra,8(sp)
    8000175c:	00813023          	sd	s0,0(sp)
    80001760:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001764:	00853503          	ld	a0,8(a0)
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	cb4080e7          	jalr	-844(ra) # 8000141c <_Z8sem_waitP4_sem>
}
    80001770:	00813083          	ld	ra,8(sp)
    80001774:	00013403          	ld	s0,0(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001780:	ff010113          	addi	sp,sp,-16
    80001784:	00113423          	sd	ra,8(sp)
    80001788:	00813023          	sd	s0,0(sp)
    8000178c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001790:	00853503          	ld	a0,8(a0)
    80001794:	00000097          	auipc	ra,0x0
    80001798:	ccc080e7          	jalr	-820(ra) # 80001460 <_Z10sem_signalP4_sem>
}
    8000179c:	00813083          	ld	ra,8(sp)
    800017a0:	00013403          	ld	s0,0(sp)
    800017a4:	01010113          	addi	sp,sp,16
    800017a8:	00008067          	ret

00000000800017ac <_ZN6ThreadD1Ev>:

int Thread::start(){
    return thread_start(myHandle);
}

Thread::~Thread() {
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00813423          	sd	s0,8(sp)
    800017b4:	01010413          	addi	s0,sp,16
}
    800017b8:	00813403          	ld	s0,8(sp)
    800017bc:	01010113          	addi	sp,sp,16
    800017c0:	00008067          	ret

00000000800017c4 <_ZN6Thread7wrapperEPv>:
{
    return time_sleep(time);
}

void Thread::wrapper(void *thread)
{
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00113423          	sd	ra,8(sp)
    800017cc:	00813023          	sd	s0,0(sp)
    800017d0:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    800017d4:	00053783          	ld	a5,0(a0)
    800017d8:	0107b783          	ld	a5,16(a5)
    800017dc:	000780e7          	jalr	a5
}
    800017e0:	00813083          	ld	ra,8(sp)
    800017e4:	00013403          	ld	s0,0(sp)
    800017e8:	01010113          	addi	sp,sp,16
    800017ec:	00008067          	ret

00000000800017f0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800017f0:	ff010113          	addi	sp,sp,-16
    800017f4:	00113423          	sd	ra,8(sp)
    800017f8:	00813023          	sd	s0,0(sp)
    800017fc:	01010413          	addi	s0,sp,16
}
    80001800:	00001097          	auipc	ra,0x1
    80001804:	a5c080e7          	jalr	-1444(ra) # 8000225c <_ZdlPv>
    80001808:	00813083          	ld	ra,8(sp)
    8000180c:	00013403          	ld	s0,0(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    80001828:	00007797          	auipc	a5,0x7
    8000182c:	f4078793          	addi	a5,a5,-192 # 80008768 <_ZTV6Thread+0x10>
    80001830:	00f53023          	sd	a5,0(a0)
    thread_createNS(&myHandle, Thread::wrapper, this);
    80001834:	00050613          	mv	a2,a0
    80001838:	00000597          	auipc	a1,0x0
    8000183c:	f8c58593          	addi	a1,a1,-116 # 800017c4 <_ZN6Thread7wrapperEPv>
    80001840:	00850513          	addi	a0,a0,8
    80001844:	00000097          	auipc	ra,0x0
    80001848:	d58080e7          	jalr	-680(ra) # 8000159c <_Z15thread_createNSPP3TCBPFvPvES2_>
}
    8000184c:	00813083          	ld	ra,8(sp)
    80001850:	00013403          	ld	s0,0(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    8000186c:	00007797          	auipc	a5,0x7
    80001870:	efc78793          	addi	a5,a5,-260 # 80008768 <_ZTV6Thread+0x10>
    80001874:	00f53023          	sd	a5,0(a0)
    thread_createNS(&myHandle, body, arg);
    80001878:	00850513          	addi	a0,a0,8
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	d20080e7          	jalr	-736(ra) # 8000159c <_Z15thread_createNSPP3TCBPFvPvES2_>
}
    80001884:	00813083          	ld	ra,8(sp)
    80001888:	00013403          	ld	s0,0(sp)
    8000188c:	01010113          	addi	sp,sp,16
    80001890:	00008067          	ret

0000000080001894 <_ZN6Thread5startEv>:
int Thread::start(){
    80001894:	ff010113          	addi	sp,sp,-16
    80001898:	00113423          	sd	ra,8(sp)
    8000189c:	00813023          	sd	s0,0(sp)
    800018a0:	01010413          	addi	s0,sp,16
    return thread_start(myHandle);
    800018a4:	00853503          	ld	a0,8(a0)
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	a44080e7          	jalr	-1468(ra) # 800012ec <_Z12thread_startP3TCB>
}
    800018b0:	00813083          	ld	ra,8(sp)
    800018b4:	00013403          	ld	s0,0(sp)
    800018b8:	01010113          	addi	sp,sp,16
    800018bc:	00008067          	ret

00000000800018c0 <_ZN6Thread8dispatchEv>:
{
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00113423          	sd	ra,8(sp)
    800018c8:	00813023          	sd	s0,0(sp)
    800018cc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	aa0080e7          	jalr	-1376(ra) # 80001370 <_Z15thread_dispatchv>
}
    800018d8:	00813083          	ld	ra,8(sp)
    800018dc:	00013403          	ld	s0,0(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <_ZN6Thread5sleepEm>:
{
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00113423          	sd	ra,8(sp)
    800018f0:	00813023          	sd	s0,0(sp)
    800018f4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	bac080e7          	jalr	-1108(ra) # 800014a4 <_Z10time_sleepm>
}
    80001900:	00813083          	ld	ra,8(sp)
    80001904:	00013403          	ld	s0,0(sp)
    80001908:	01010113          	addi	sp,sp,16
    8000190c:	00008067          	ret

0000000080001910 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void wrapper(void*);
protected:
    Thread ();
    virtual void run () {}
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00813423          	sd	s0,8(sp)
    80001918:	01010413          	addi	s0,sp,16
    8000191c:	00813403          	ld	s0,8(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN7Console4getcEv>:
#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"
char Console::getc() {
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00113423          	sd	ra,8(sp)
    80001930:	00813023          	sd	s0,0(sp)
    80001934:	01010413          	addi	s0,sp,16
    return __getc();
    80001938:	00004097          	auipc	ra,0x4
    8000193c:	7c0080e7          	jalr	1984(ra) # 800060f8 <__getc>
}
    80001940:	00813083          	ld	ra,8(sp)
    80001944:	00013403          	ld	s0,0(sp)
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret

0000000080001950 <_ZN7Console4putcEc>:

void Console::putc(char c){
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00113423          	sd	ra,8(sp)
    80001958:	00813023          	sd	s0,0(sp)
    8000195c:	01010413          	addi	s0,sp,16
    __putc(c);
    80001960:	00004097          	auipc	ra,0x4
    80001964:	75c080e7          	jalr	1884(ra) # 800060bc <__putc>
    80001968:	00813083          	ld	ra,8(sp)
    8000196c:	00013403          	ld	s0,0(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_Z11wrapperUserPv>:
#include "../h/userMain.hpp"
#include "../test/printing.hpp"
#include "../h/MemoryAllocator.hpp"

int b = 0;
void wrapperUser(void* arg){
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    userMain();
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	fc0080e7          	jalr	-64(ra) # 80003948 <_Z8userMainv>
    printString("Zavrsio");
    80001990:	00005517          	auipc	a0,0x5
    80001994:	69050513          	addi	a0,a0,1680 # 80007020 <CONSOLE_STATUS+0x10>
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	4e8080e7          	jalr	1256(ra) # 80002e80 <_Z11printStringPKc>
    b = 1;
    800019a0:	00100793          	li	a5,1
    800019a4:	00007717          	auipc	a4,0x7
    800019a8:	f2f72623          	sw	a5,-212(a4) # 800088d0 <b>
}
    800019ac:	00813083          	ld	ra,8(sp)
    800019b0:	00013403          	ld	s0,0(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <main>:

int main()
{
    800019bc:	fd010113          	addi	sp,sp,-48
    800019c0:	02113423          	sd	ra,40(sp)
    800019c4:	02813023          	sd	s0,32(sp)
    800019c8:	00913c23          	sd	s1,24(sp)
    800019cc:	01213823          	sd	s2,16(sp)
    800019d0:	03010413          	addi	s0,sp,48
    MemoryAllocator::mem_init();
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	1fc080e7          	jalr	508(ra) # 80002bd0 <_ZN15MemoryAllocator8mem_initEv>
    printString("mainStarted\n");
    800019dc:	00005517          	auipc	a0,0x5
    800019e0:	64c50513          	addi	a0,a0,1612 # 80007028 <CONSOLE_STATUS+0x18>
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	49c080e7          	jalr	1180(ra) # 80002e80 <_Z11printStringPKc>
    TCB* mainKernelThread = TCB::createThread(nullptr,nullptr,nullptr);
    800019ec:	00000613          	li	a2,0
    800019f0:	00000593          	li	a1,0
    800019f4:	00000513          	li	a0,0
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	204080e7          	jalr	516(ra) # 80001bfc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80001a00:	00050913          	mv	s2,a0
    TCB* idleThread = TCB::createIdleThread(TCB::idleWrapper);
    80001a04:	00007517          	auipc	a0,0x7
    80001a08:	e6453503          	ld	a0,-412(a0) # 80008868 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	264080e7          	jalr	612(ra) # 80001c70 <_ZN3TCB16createIdleThreadEPFvPvE>
    80001a14:	00050493          	mv	s1,a0

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001a18:	00007797          	auipc	a5,0x7
    80001a1c:	e387b783          	ld	a5,-456(a5) # 80008850 <_GLOBAL_OFFSET_TABLE_+0x10>
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
}

inline uint64 Riscv::r_stval()
{
    80001a20:	10579073          	csrw	stvec,a5
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    80001a24:	00200793          	li	a5,2
    80001a28:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    thread_t user = nullptr;
    80001a2c:	fc043c23          	sd	zero,-40(s0)
    thread_create(&user,wrapperUser,nullptr);
    80001a30:	00000613          	li	a2,0
    80001a34:	00000597          	auipc	a1,0x0
    80001a38:	f4458593          	addi	a1,a1,-188 # 80001978 <_Z11wrapperUserPv>
    80001a3c:	fd840513          	addi	a0,s0,-40
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	ae8080e7          	jalr	-1304(ra) # 80001528 <_Z13thread_createPP3TCBPFvPvES2_>
//    int b2 = 100;
//    int retval4 = thread_create(&thread4,workerBodyB,&b2);
//    printInteger(retval4);
//
//
    while(b == 0){
    80001a48:	00007797          	auipc	a5,0x7
    80001a4c:	e887a783          	lw	a5,-376(a5) # 800088d0 <b>
    80001a50:	00079863          	bnez	a5,80001a60 <main+0xa4>
        thread_dispatch();
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	91c080e7          	jalr	-1764(ra) # 80001370 <_Z15thread_dispatchv>
    80001a5c:	fedff06f          	j	80001a48 <main+0x8c>
    }

    delete mainKernelThread;
    80001a60:	02090063          	beqz	s2,80001a80 <main+0xc4>
public:
    ~TCB() { delete[] stack; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void(*)(void*);
    80001a64:	01093503          	ld	a0,16(s2)
    80001a68:	00050663          	beqz	a0,80001a74 <main+0xb8>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	818080e7          	jalr	-2024(ra) # 80002284 <_ZdaPv>

    void operator delete(void *toDelete) { MemoryAllocator::freee(toDelete); }

private:
    TCB(Body body, void *arg,uint64* stack) :
            body(body),
    80001a74:	00090513          	mv	a0,s2
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	2c0080e7          	jalr	704(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
    delete idleThread;
    80001a80:	02048063          	beqz	s1,80001aa0 <main+0xe4>
    using Body = void(*)(void*);
    80001a84:	0104b503          	ld	a0,16(s1)
    80001a88:	00050663          	beqz	a0,80001a94 <main+0xd8>
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	7f8080e7          	jalr	2040(ra) # 80002284 <_ZdaPv>
            body(body),
    80001a94:	00048513          	mv	a0,s1
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	2a0080e7          	jalr	672(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
    return 0;
    80001aa0:	00000513          	li	a0,0
    80001aa4:	02813083          	ld	ra,40(sp)
    80001aa8:	02013403          	ld	s0,32(sp)
    80001aac:	01813483          	ld	s1,24(sp)
    80001ab0:	01013903          	ld	s2,16(sp)
    80001ab4:	03010113          	addi	sp,sp,48
    80001ab8:	00008067          	ret

0000000080001abc <_Z41__static_initialization_and_destruction_0ii>:
        return -1;
    }
    status = READY;
    Scheduler::put(this);
    return 0;
}
    80001abc:	ff010113          	addi	sp,sp,-16
    80001ac0:	00813423          	sd	s0,8(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    80001ac8:	00100793          	li	a5,1
    80001acc:	00f50863          	beq	a0,a5,80001adc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ad0:	00813403          	ld	s0,8(sp)
    80001ad4:	01010113          	addi	sp,sp,16
    80001ad8:	00008067          	ret
    80001adc:	000107b7          	lui	a5,0x10
    80001ae0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ae4:	fef596e3          	bne	a1,a5,80001ad0 <_Z41__static_initialization_and_destruction_0ii+0x14>
        void *operator new(size_t size) { return MemoryAllocator::alloc(size); }
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    };

    Elem *head, *tail;
    List() : head(0), tail(0) {}
    80001ae8:	00007797          	auipc	a5,0x7
    80001aec:	df078793          	addi	a5,a5,-528 # 800088d8 <_ZN3TCB15threadsSleepingE>
    80001af0:	0007b023          	sd	zero,0(a5)
    80001af4:	0007b423          	sd	zero,8(a5)
    80001af8:	fd9ff06f          	j	80001ad0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001afc <_ZN3TCB13threadWrapperEv>:
{
    80001afc:	ff010113          	addi	sp,sp,-16
    80001b00:	00113423          	sd	ra,8(sp)
    80001b04:	00813023          	sd	s0,0(sp)
    80001b08:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	920080e7          	jalr	-1760(ra) # 8000242c <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b14:	00007797          	auipc	a5,0x7
    80001b18:	dd47b783          	ld	a5,-556(a5) # 800088e8 <_ZN3TCB7runningE>
    80001b1c:	0007b703          	ld	a4,0(a5)
    80001b20:	0087b503          	ld	a0,8(a5)
    80001b24:	000700e7          	jalr	a4
    thread_exit();
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	814080e7          	jalr	-2028(ra) # 8000133c <_Z11thread_exitv>
}
    80001b30:	00813083          	ld	ra,8(sp)
    80001b34:	00013403          	ld	s0,0(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret

0000000080001b40 <_ZN3TCB14createThreadNSEPFvPvES0_Pm>:
{
    80001b40:	fd010113          	addi	sp,sp,-48
    80001b44:	02113423          	sd	ra,40(sp)
    80001b48:	02813023          	sd	s0,32(sp)
    80001b4c:	00913c23          	sd	s1,24(sp)
    80001b50:	01213823          	sd	s2,16(sp)
    80001b54:	01313423          	sd	s3,8(sp)
    80001b58:	03010413          	addi	s0,sp,48
    80001b5c:	00050913          	mv	s2,a0
    80001b60:	00058993          	mv	s3,a1
    80001b64:	00060493          	mv	s1,a2
    void* operator new(size_t size) { return MemoryAllocator::alloc(size); }
    80001b68:	04000513          	li	a0,64
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	0bc080e7          	jalr	188(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>
            arg(arg),
            stack(body != nullptr ? stack : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            status(CREATED)
    80001b74:	01253023          	sd	s2,0(a0)
    80001b78:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? stack : nullptr),
    80001b7c:	06090063          	beqz	s2,80001bdc <_ZN3TCB14createThreadNSEPFvPvES0_Pm+0x9c>
    80001b80:	00048793          	mv	a5,s1
            status(CREATED)
    80001b84:	00f53823          	sd	a5,16(a0)
    80001b88:	00000797          	auipc	a5,0x0
    80001b8c:	f7478793          	addi	a5,a5,-140 # 80001afc <_ZN3TCB13threadWrapperEv>
    80001b90:	00f53c23          	sd	a5,24(a0)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b94:	04048863          	beqz	s1,80001be4 <_ZN3TCB14createThreadNSEPFvPvES0_Pm+0xa4>
    80001b98:	00008637          	lui	a2,0x8
    80001b9c:	00c484b3          	add	s1,s1,a2
            status(CREATED)
    80001ba0:	02953023          	sd	s1,32(a0)
    80001ba4:	00300793          	li	a5,3
    80001ba8:	02f52823          	sw	a5,48(a0)
    80001bac:	02050a23          	sb	zero,52(a0)
    80001bb0:	02053c23          	sd	zero,56(a0)
    {
        timeSlice = DEFAULT_TIME_SLICE;
    80001bb4:	00200793          	li	a5,2
    80001bb8:	02f53423          	sd	a5,40(a0)
        if (body == nullptr) {
    80001bbc:	02090863          	beqz	s2,80001bec <_ZN3TCB14createThreadNSEPFvPvES0_Pm+0xac>
}
    80001bc0:	02813083          	ld	ra,40(sp)
    80001bc4:	02013403          	ld	s0,32(sp)
    80001bc8:	01813483          	ld	s1,24(sp)
    80001bcc:	01013903          	ld	s2,16(sp)
    80001bd0:	00813983          	ld	s3,8(sp)
    80001bd4:	03010113          	addi	sp,sp,48
    80001bd8:	00008067          	ret
            stack(body != nullptr ? stack : nullptr),
    80001bdc:	00000793          	li	a5,0
    80001be0:	fa5ff06f          	j	80001b84 <_ZN3TCB14createThreadNSEPFvPvES0_Pm+0x44>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001be4:	00000493          	li	s1,0
    80001be8:	fb9ff06f          	j	80001ba0 <_ZN3TCB14createThreadNSEPFvPvES0_Pm+0x60>
            status = RUNNING;
    80001bec:	00100793          	li	a5,1
    80001bf0:	02f52823          	sw	a5,48(a0)
            systemThread = true;
    80001bf4:	02f50a23          	sb	a5,52(a0)
    return new TCB(body, arg, stack);
    80001bf8:	fc9ff06f          	j	80001bc0 <_ZN3TCB14createThreadNSEPFvPvES0_Pm+0x80>

0000000080001bfc <_ZN3TCB12createThreadEPFvPvES0_Pm>:
{
    80001bfc:	fe010113          	addi	sp,sp,-32
    80001c00:	00113c23          	sd	ra,24(sp)
    80001c04:	00813823          	sd	s0,16(sp)
    80001c08:	00913423          	sd	s1,8(sp)
    80001c0c:	02010413          	addi	s0,sp,32
    if (!body && running) return nullptr; //vec postoji kernel nit
    80001c10:	02050c63          	beqz	a0,80001c48 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x4c>
    TCB* tcb = createThreadNS(body, arg, stack);
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	f2c080e7          	jalr	-212(ra) # 80001b40 <_ZN3TCB14createThreadNSEPFvPvES0_Pm>
    80001c1c:	00050493          	mv	s1,a0
    if (tcb->systemThread) {
    80001c20:	03454783          	lbu	a5,52(a0)
    80001c24:	02078c63          	beqz	a5,80001c5c <_ZN3TCB12createThreadEPFvPvES0_Pm+0x60>
        TCB::running = tcb;
    80001c28:	00007797          	auipc	a5,0x7
    80001c2c:	cca7b023          	sd	a0,-832(a5) # 800088e8 <_ZN3TCB7runningE>
}
    80001c30:	00048513          	mv	a0,s1
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	01013403          	ld	s0,16(sp)
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	02010113          	addi	sp,sp,32
    80001c44:	00008067          	ret
    if (!body && running) return nullptr; //vec postoji kernel nit
    80001c48:	00007797          	auipc	a5,0x7
    80001c4c:	ca07b783          	ld	a5,-864(a5) # 800088e8 <_ZN3TCB7runningE>
    80001c50:	fc0782e3          	beqz	a5,80001c14 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x18>
    80001c54:	00000493          	li	s1,0
    80001c58:	fd9ff06f          	j	80001c30 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x34>
        tcb->status = READY;
    80001c5c:	00200793          	li	a5,2
    80001c60:	02f52823          	sw	a5,48(a0)
        Scheduler::put(tcb);
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	ecc080e7          	jalr	-308(ra) # 80002b30 <_ZN9Scheduler3putEP3TCB>
    80001c6c:	fc5ff06f          	j	80001c30 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x34>

0000000080001c70 <_ZN3TCB16createIdleThreadEPFvPvE>:
    if (!idle) {
    80001c70:	00007797          	auipc	a5,0x7
    80001c74:	c807b783          	ld	a5,-896(a5) # 800088f0 <_ZN3TCB4idleE>
    80001c78:	00078863          	beqz	a5,80001c88 <_ZN3TCB16createIdleThreadEPFvPvE+0x18>
}
    80001c7c:	00007517          	auipc	a0,0x7
    80001c80:	c7453503          	ld	a0,-908(a0) # 800088f0 <_ZN3TCB4idleE>
    80001c84:	00008067          	ret
TCB *TCB::createIdleThread(TCB::Body body) {
    80001c88:	fe010113          	addi	sp,sp,-32
    80001c8c:	00113c23          	sd	ra,24(sp)
    80001c90:	00813823          	sd	s0,16(sp)
    80001c94:	00913423          	sd	s1,8(sp)
    80001c98:	02010413          	addi	s0,sp,32
    80001c9c:	00050493          	mv	s1,a0
        uint64 *stack = (uint64*)MemoryAllocator::alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    80001ca0:	00008537          	lui	a0,0x8
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	f84080e7          	jalr	-124(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>
    80001cac:	00050613          	mv	a2,a0
        idle = createThreadNS(body, nullptr, stack);
    80001cb0:	00000593          	li	a1,0
    80001cb4:	00048513          	mv	a0,s1
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	e88080e7          	jalr	-376(ra) # 80001b40 <_ZN3TCB14createThreadNSEPFvPvES0_Pm>
    80001cc0:	00007797          	auipc	a5,0x7
    80001cc4:	c2a7b823          	sd	a0,-976(a5) # 800088f0 <_ZN3TCB4idleE>
        idle->status = IDLE;
    80001cc8:	00600793          	li	a5,6
    80001ccc:	02f52823          	sw	a5,48(a0) # 8030 <_entry-0x7fff7fd0>
        idle->systemThread = true;
    80001cd0:	00100793          	li	a5,1
    80001cd4:	02f50a23          	sb	a5,52(a0)
}
    80001cd8:	00007517          	auipc	a0,0x7
    80001cdc:	c1853503          	ld	a0,-1000(a0) # 800088f0 <_ZN3TCB4idleE>
    80001ce0:	01813083          	ld	ra,24(sp)
    80001ce4:	01013403          	ld	s0,16(sp)
    80001ce8:	00813483          	ld	s1,8(sp)
    80001cec:	02010113          	addi	sp,sp,32
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN3TCB11idleWrapperEPv>:
{
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00113423          	sd	ra,8(sp)
    80001cfc:	00813023          	sd	s0,0(sp)
    80001d00:	01010413          	addi	s0,sp,16
        thread_dispatch();
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	66c080e7          	jalr	1644(ra) # 80001370 <_Z15thread_dispatchv>
    while (true) {
    80001d0c:	ff9ff06f          	j	80001d04 <_ZN3TCB11idleWrapperEPv+0x10>

0000000080001d10 <_ZN3TCB8dispatchEv>:
{
    80001d10:	fe010113          	addi	sp,sp,-32
    80001d14:	00113c23          	sd	ra,24(sp)
    80001d18:	00813823          	sd	s0,16(sp)
    80001d1c:	00913423          	sd	s1,8(sp)
    80001d20:	02010413          	addi	s0,sp,32
    TCB::timeSliceCounter=0;
    80001d24:	00007797          	auipc	a5,0x7
    80001d28:	bb478793          	addi	a5,a5,-1100 # 800088d8 <_ZN3TCB15threadsSleepingE>
    80001d2c:	0207b023          	sd	zero,32(a5)
    TCB *old = running;
    80001d30:	0107b483          	ld	s1,16(a5)
    if (old->status == RUNNING) {
    80001d34:	0304a703          	lw	a4,48(s1)
    80001d38:	00100793          	li	a5,1
    80001d3c:	04f70663          	beq	a4,a5,80001d88 <_ZN3TCB8dispatchEv+0x78>
    running = Scheduler::get();
    80001d40:	00001097          	auipc	ra,0x1
    80001d44:	d88080e7          	jalr	-632(ra) # 80002ac8 <_ZN9Scheduler3getEv>
    80001d48:	00007797          	auipc	a5,0x7
    80001d4c:	baa7b023          	sd	a0,-1120(a5) # 800088e8 <_ZN3TCB7runningE>
    if (running) {
    80001d50:	04050863          	beqz	a0,80001da0 <_ZN3TCB8dispatchEv+0x90>
        running->status = RUNNING;
    80001d54:	00100793          	li	a5,1
    80001d58:	02f52823          	sw	a5,48(a0)
    TCB::contextSwitch(&old->context, &running->context);
    80001d5c:	00007597          	auipc	a1,0x7
    80001d60:	b8c5b583          	ld	a1,-1140(a1) # 800088e8 <_ZN3TCB7runningE>
    80001d64:	01858593          	addi	a1,a1,24
    80001d68:	01848513          	addi	a0,s1,24
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	4c4080e7          	jalr	1220(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d74:	01813083          	ld	ra,24(sp)
    80001d78:	01013403          	ld	s0,16(sp)
    80001d7c:	00813483          	ld	s1,8(sp)
    80001d80:	02010113          	addi	sp,sp,32
    80001d84:	00008067          	ret
        old->status = READY;
    80001d88:	00200793          	li	a5,2
    80001d8c:	02f4a823          	sw	a5,48(s1)
        Scheduler::put(old);
    80001d90:	00048513          	mv	a0,s1
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	d9c080e7          	jalr	-612(ra) # 80002b30 <_ZN9Scheduler3putEP3TCB>
    80001d9c:	fa5ff06f          	j	80001d40 <_ZN3TCB8dispatchEv+0x30>
        running = idle;
    80001da0:	00007797          	auipc	a5,0x7
    80001da4:	b3878793          	addi	a5,a5,-1224 # 800088d8 <_ZN3TCB15threadsSleepingE>
    80001da8:	0187b703          	ld	a4,24(a5)
    80001dac:	00e7b823          	sd	a4,16(a5)
    80001db0:	fadff06f          	j	80001d5c <_ZN3TCB8dispatchEv+0x4c>

0000000080001db4 <_ZN3TCB4exitEv>:
    if (running->status != RUNNING) {
    80001db4:	00007797          	auipc	a5,0x7
    80001db8:	b347b783          	ld	a5,-1228(a5) # 800088e8 <_ZN3TCB7runningE>
    80001dbc:	0307a683          	lw	a3,48(a5)
    80001dc0:	00100713          	li	a4,1
    80001dc4:	02e69a63          	bne	a3,a4,80001df8 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00113423          	sd	ra,8(sp)
    80001dd0:	00813023          	sd	s0,0(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    running->status = FINISHED;
    80001dd8:	0207a823          	sw	zero,48(a5)
    dispatch();
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	f34080e7          	jalr	-204(ra) # 80001d10 <_ZN3TCB8dispatchEv>
    return 0;
    80001de4:	00000513          	li	a0,0
}
    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret
        return -3;
    80001df8:	ffd00513          	li	a0,-3
}
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN3TCB4waitEv>:
    if (running->status != RUNNING) {
    80001e00:	00007797          	auipc	a5,0x7
    80001e04:	ae87b783          	ld	a5,-1304(a5) # 800088e8 <_ZN3TCB7runningE>
    80001e08:	0307a683          	lw	a3,48(a5)
    80001e0c:	00100713          	li	a4,1
    80001e10:	02e69c63          	bne	a3,a4,80001e48 <_ZN3TCB4waitEv+0x48>
int TCB::wait() {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00113423          	sd	ra,8(sp)
    80001e1c:	00813023          	sd	s0,0(sp)
    80001e20:	01010413          	addi	s0,sp,16
    running->status = WAITING;
    80001e24:	00400713          	li	a4,4
    80001e28:	02e7a823          	sw	a4,48(a5)
    dispatch();
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	ee4080e7          	jalr	-284(ra) # 80001d10 <_ZN3TCB8dispatchEv>
    return 0;
    80001e34:	00000513          	li	a0,0
}
    80001e38:	00813083          	ld	ra,8(sp)
    80001e3c:	00013403          	ld	s0,0(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret
        return -3;
    80001e48:	ffd00513          	li	a0,-3
}
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN3TCB6signalEv>:
    if (status != WAITING) {
    80001e50:	03052703          	lw	a4,48(a0)
    80001e54:	00400793          	li	a5,4
    80001e58:	02f71c63          	bne	a4,a5,80001e90 <_ZN3TCB6signalEv+0x40>
int TCB::signal() {
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00113423          	sd	ra,8(sp)
    80001e64:	00813023          	sd	s0,0(sp)
    80001e68:	01010413          	addi	s0,sp,16
    status = READY;
    80001e6c:	00200793          	li	a5,2
    80001e70:	02f52823          	sw	a5,48(a0)
    Scheduler::put(this);
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	cbc080e7          	jalr	-836(ra) # 80002b30 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001e7c:	00000513          	li	a0,0
}
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret
        return -3;
    80001e90:	ffd00513          	li	a0,-3
}
    80001e94:	00008067          	ret

0000000080001e98 <_ZN3TCB10time_sleepEm>:
int TCB::time_sleep(time_t time) {
    80001e98:	fe010113          	addi	sp,sp,-32
    80001e9c:	00113c23          	sd	ra,24(sp)
    80001ea0:	00813823          	sd	s0,16(sp)
    80001ea4:	00913423          	sd	s1,8(sp)
    80001ea8:	02010413          	addi	s0,sp,32
    if (running->status != RUNNING) {
    80001eac:	00007497          	auipc	s1,0x7
    80001eb0:	a3c4b483          	ld	s1,-1476(s1) # 800088e8 <_ZN3TCB7runningE>
    80001eb4:	0304a703          	lw	a4,48(s1)
    80001eb8:	00100793          	li	a5,1
    80001ebc:	06f71a63          	bne	a4,a5,80001f30 <_ZN3TCB10time_sleepEm+0x98>
    if(time == 0)
    80001ec0:	00051e63          	bnez	a0,80001edc <_ZN3TCB10time_sleepEm+0x44>
        return 0;
    80001ec4:	00000513          	li	a0,0
}
    80001ec8:	01813083          	ld	ra,24(sp)
    80001ecc:	01013403          	ld	s0,16(sp)
    80001ed0:	00813483          	ld	s1,8(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret
    running->status = SLEEPING;
    80001edc:	00500793          	li	a5,5
    80001ee0:	02f4a823          	sw	a5,48(s1)
    running->timeout = time;
    80001ee4:	02a4bc23          	sd	a0,56(s1)
        void *operator new(size_t size) { return MemoryAllocator::alloc(size); }
    80001ee8:	01000513          	li	a0,16
    80001eec:	00001097          	auipc	ra,0x1
    80001ef0:	d3c080e7          	jalr	-708(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>

    List<T> &operator=(const List<T> &) = delete;

    void addFirst(T *data)
    {
        Elem *elem = new Elem(data, head);
    80001ef4:	00007797          	auipc	a5,0x7
    80001ef8:	9e478793          	addi	a5,a5,-1564 # 800088d8 <_ZN3TCB15threadsSleepingE>
    80001efc:	0007b703          	ld	a4,0(a5)
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001f00:	00953023          	sd	s1,0(a0)
    80001f04:	00e53423          	sd	a4,8(a0)
        head = elem;
    80001f08:	00a7b023          	sd	a0,0(a5)
        if (!tail) { tail = head; }
    80001f0c:	0087b783          	ld	a5,8(a5)
    80001f10:	00078a63          	beqz	a5,80001f24 <_ZN3TCB10time_sleepEm+0x8c>
    dispatch();
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	dfc080e7          	jalr	-516(ra) # 80001d10 <_ZN3TCB8dispatchEv>
    return 0;
    80001f1c:	00000513          	li	a0,0
    80001f20:	fa9ff06f          	j	80001ec8 <_ZN3TCB10time_sleepEm+0x30>
    80001f24:	00007797          	auipc	a5,0x7
    80001f28:	9aa7be23          	sd	a0,-1604(a5) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>
    80001f2c:	fe9ff06f          	j	80001f14 <_ZN3TCB10time_sleepEm+0x7c>
        return -3;
    80001f30:	ffd00513          	li	a0,-3
    80001f34:	f95ff06f          	j	80001ec8 <_ZN3TCB10time_sleepEm+0x30>

0000000080001f38 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_>:
int TCB::wakeUp(List<TCB>::Elem *prev,List<TCB>::Elem *curr) {
    80001f38:	fe010113          	addi	sp,sp,-32
    80001f3c:	00113c23          	sd	ra,24(sp)
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00913423          	sd	s1,8(sp)
    80001f48:	01213023          	sd	s2,0(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    if(prev == nullptr){
    80001f50:	06050463          	beqz	a0,80001fb8 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x80>
    else if(curr->data == TCB::threadsSleeping.tail->data){
    80001f54:	0005b483          	ld	s1,0(a1)
    80001f58:	00007797          	auipc	a5,0x7
    80001f5c:	9887b783          	ld	a5,-1656(a5) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>
    80001f60:	0007b783          	ld	a5,0(a5)
    80001f64:	08f48863          	beq	s1,a5,80001ff4 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0xbc>
        prev->next = curr->next;
    80001f68:	0085b783          	ld	a5,8(a1)
    80001f6c:	00f53423          	sd	a5,8(a0)
        delete curr;
    80001f70:	0e058c63          	beqz	a1,80002068 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x130>
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    80001f74:	00058513          	mv	a0,a1
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	dc0080e7          	jalr	-576(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
        result = 3;
    80001f80:	00300913          	li	s2,3
    threadToWakeUp->status = READY;
    80001f84:	00200793          	li	a5,2
    80001f88:	02f4a823          	sw	a5,48(s1)
    threadToWakeUp->timeout = 0;
    80001f8c:	0204bc23          	sd	zero,56(s1)
    Scheduler::put(threadToWakeUp);
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	b9c080e7          	jalr	-1124(ra) # 80002b30 <_ZN9Scheduler3putEP3TCB>
}
    80001f9c:	00090513          	mv	a0,s2
    80001fa0:	01813083          	ld	ra,24(sp)
    80001fa4:	01013403          	ld	s0,16(sp)
    80001fa8:	00813483          	ld	s1,8(sp)
    80001fac:	00013903          	ld	s2,0(sp)
    80001fb0:	02010113          	addi	sp,sp,32
    80001fb4:	00008067          	ret
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001fb8:	00007517          	auipc	a0,0x7
    80001fbc:	92053503          	ld	a0,-1760(a0) # 800088d8 <_ZN3TCB15threadsSleepingE>
    80001fc0:	08050e63          	beqz	a0,8000205c <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x124>

        Elem *elem = head;
        head = head->next;
    80001fc4:	00853783          	ld	a5,8(a0)
    80001fc8:	00007717          	auipc	a4,0x7
    80001fcc:	90f73823          	sd	a5,-1776(a4) # 800088d8 <_ZN3TCB15threadsSleepingE>
        if (!head) { tail = 0; }
    80001fd0:	00078c63          	beqz	a5,80001fe8 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0xb0>

        T *ret = elem->data;
    80001fd4:	00053483          	ld	s1,0(a0)
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	d60080e7          	jalr	-672(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
        result = 1;
    80001fe0:	00100913          	li	s2,1
        delete elem;
        return ret;
    80001fe4:	fa1ff06f          	j	80001f84 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x4c>
        if (!head) { tail = 0; }
    80001fe8:	00007797          	auipc	a5,0x7
    80001fec:	8e07bc23          	sd	zero,-1800(a5) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>
    80001ff0:	fe5ff06f          	j	80001fd4 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x9c>
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }
    80001ff4:	00007497          	auipc	s1,0x7
    80001ff8:	8e44b483          	ld	s1,-1820(s1) # 800088d8 <_ZN3TCB15threadsSleepingE>
    80001ffc:	04048663          	beqz	s1,80002048 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x110>

        Elem *prev = 0;
    80002000:	00000713          	li	a4,0
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    80002004:	00048e63          	beqz	s1,80002020 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0xe8>
    80002008:	00007797          	auipc	a5,0x7
    8000200c:	8d87b783          	ld	a5,-1832(a5) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>
    80002010:	00f48863          	beq	s1,a5,80002020 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0xe8>
        {
            prev = curr;
    80002014:	00048713          	mv	a4,s1
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    80002018:	0084b483          	ld	s1,8(s1)
    8000201c:	fe9ff06f          	j	80002004 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0xcc>
        }

        Elem *elem = tail;
    80002020:	00007517          	auipc	a0,0x7
    80002024:	8c053503          	ld	a0,-1856(a0) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>
        if (prev) { prev->next = 0; }
    80002028:	02070463          	beqz	a4,80002050 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x118>
    8000202c:	00073423          	sd	zero,8(a4)
        else { head = 0; }
        tail = prev;
    80002030:	00007797          	auipc	a5,0x7
    80002034:	8ae7b823          	sd	a4,-1872(a5) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>

        T *ret = elem->data;
    80002038:	00053483          	ld	s1,0(a0)
        delete elem;
    8000203c:	00050663          	beqz	a0,80002048 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x110>
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    80002040:	00001097          	auipc	ra,0x1
    80002044:	cf8080e7          	jalr	-776(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
        result = 2;
    80002048:	00200913          	li	s2,2
    8000204c:	f39ff06f          	j	80001f84 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x4c>
        else { head = 0; }
    80002050:	00007797          	auipc	a5,0x7
    80002054:	8807b423          	sd	zero,-1912(a5) # 800088d8 <_ZN3TCB15threadsSleepingE>
    80002058:	fd9ff06f          	j	80002030 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0xf8>
        if (!head) { return 0; }
    8000205c:	00050493          	mv	s1,a0
        result = 1;
    80002060:	00100913          	li	s2,1
    80002064:	f21ff06f          	j	80001f84 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x4c>
        result = 3;
    80002068:	00300913          	li	s2,3
    8000206c:	f19ff06f          	j	80001f84 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_+0x4c>

0000000080002070 <_ZN3TCB14checkForWakeUpEv>:
void TCB::checkForWakeUp() {
    80002070:	fe010113          	addi	sp,sp,-32
    80002074:	00113c23          	sd	ra,24(sp)
    80002078:	00813823          	sd	s0,16(sp)
    8000207c:	00913423          	sd	s1,8(sp)
    80002080:	01213023          	sd	s2,0(sp)
    80002084:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002088:	00007497          	auipc	s1,0x7
    8000208c:	8504b483          	ld	s1,-1968(s1) # 800088d8 <_ZN3TCB15threadsSleepingE>
    80002090:	08048c63          	beqz	s1,80002128 <_ZN3TCB14checkForWakeUpEv+0xb8>
        return head->data;
    80002094:	0004b783          	ld	a5,0(s1)
    if (threadsSleeping.peekFirst() == 0) return; //nema elemenata
    80002098:	08078863          	beqz	a5,80002128 <_ZN3TCB14checkForWakeUpEv+0xb8>
    List<TCB>::Elem *prev = nullptr;
    8000209c:	00000913          	li	s2,0
    800020a0:	00c0006f          	j	800020ac <_ZN3TCB14checkForWakeUpEv+0x3c>
            prev = curr;
    800020a4:	00048913          	mv	s2,s1
            curr = curr->next;
    800020a8:	0084b483          	ld	s1,8(s1)
    while (prev != TCB::threadsSleeping.tail && curr!=nullptr){
    800020ac:	00007797          	auipc	a5,0x7
    800020b0:	8347b783          	ld	a5,-1996(a5) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>
    800020b4:	07278a63          	beq	a5,s2,80002128 <_ZN3TCB14checkForWakeUpEv+0xb8>
    800020b8:	06048863          	beqz	s1,80002128 <_ZN3TCB14checkForWakeUpEv+0xb8>
        curr->data->timeout--;
    800020bc:	0004b703          	ld	a4,0(s1)
    800020c0:	03873783          	ld	a5,56(a4)
    800020c4:	fff78793          	addi	a5,a5,-1
    800020c8:	02f73c23          	sd	a5,56(a4)
        if (curr->data->timeout <= 0){
    800020cc:	0004b783          	ld	a5,0(s1)
    800020d0:	0387b783          	ld	a5,56(a5)
    800020d4:	fc0798e3          	bnez	a5,800020a4 <_ZN3TCB14checkForWakeUpEv+0x34>
            result = curr->data->wakeUp(prev,curr);
    800020d8:	00048593          	mv	a1,s1
    800020dc:	00090513          	mv	a0,s2
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	e58080e7          	jalr	-424(ra) # 80001f38 <_ZN3TCB6wakeUpEPN4ListIS_E4ElemES3_>
        if (result == 0) {
    800020e8:	fa050ee3          	beqz	a0,800020a4 <_ZN3TCB14checkForWakeUpEv+0x34>
        }else if(result == 1){
    800020ec:	00100793          	li	a5,1
    800020f0:	00f50e63          	beq	a0,a5,8000210c <_ZN3TCB14checkForWakeUpEv+0x9c>
        }else if(result == 2){
    800020f4:	00200793          	li	a5,2
    800020f8:	02f50263          	beq	a0,a5,8000211c <_ZN3TCB14checkForWakeUpEv+0xac>
        }else if(result == 3){
    800020fc:	00300793          	li	a5,3
    80002100:	faf516e3          	bne	a0,a5,800020ac <_ZN3TCB14checkForWakeUpEv+0x3c>
            curr = prev->next;
    80002104:	00893483          	ld	s1,8(s2)
    80002108:	fa5ff06f          	j	800020ac <_ZN3TCB14checkForWakeUpEv+0x3c>
            curr = TCB::threadsSleeping.head;
    8000210c:	00006497          	auipc	s1,0x6
    80002110:	7cc4b483          	ld	s1,1996(s1) # 800088d8 <_ZN3TCB15threadsSleepingE>
            prev = nullptr;
    80002114:	00000913          	li	s2,0
    80002118:	f95ff06f          	j	800020ac <_ZN3TCB14checkForWakeUpEv+0x3c>
            prev = TCB::threadsSleeping.tail;
    8000211c:	00006917          	auipc	s2,0x6
    80002120:	7c493903          	ld	s2,1988(s2) # 800088e0 <_ZN3TCB15threadsSleepingE+0x8>
    80002124:	f89ff06f          	j	800020ac <_ZN3TCB14checkForWakeUpEv+0x3c>
}
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	01013403          	ld	s0,16(sp)
    80002130:	00813483          	ld	s1,8(sp)
    80002134:	00013903          	ld	s2,0(sp)
    80002138:	02010113          	addi	sp,sp,32
    8000213c:	00008067          	ret

0000000080002140 <_ZN3TCB5startEv>:
    if (status != CREATED) {
    80002140:	03052703          	lw	a4,48(a0)
    80002144:	00300793          	li	a5,3
    80002148:	02f71c63          	bne	a4,a5,80002180 <_ZN3TCB5startEv+0x40>
int TCB::start() {
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00113423          	sd	ra,8(sp)
    80002154:	00813023          	sd	s0,0(sp)
    80002158:	01010413          	addi	s0,sp,16
    status = READY;
    8000215c:	00200793          	li	a5,2
    80002160:	02f52823          	sw	a5,48(a0)
    Scheduler::put(this);
    80002164:	00001097          	auipc	ra,0x1
    80002168:	9cc080e7          	jalr	-1588(ra) # 80002b30 <_ZN9Scheduler3putEP3TCB>
    return 0;
    8000216c:	00000513          	li	a0,0
}
    80002170:	00813083          	ld	ra,8(sp)
    80002174:	00013403          	ld	s0,0(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret
        return -1;
    80002180:	fff00513          	li	a0,-1
}
    80002184:	00008067          	ret

0000000080002188 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	01010413          	addi	s0,sp,16
    80002198:	000105b7          	lui	a1,0x10
    8000219c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800021a0:	00100513          	li	a0,1
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	918080e7          	jalr	-1768(ra) # 80001abc <_Z41__static_initialization_and_destruction_0ii>
    800021ac:	00813083          	ld	ra,8(sp)
    800021b0:	00013403          	ld	s0,0(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <__mem_alloc>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void* __mem_alloc(size_t size)
{
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00113423          	sd	ra,8(sp)
    800021c4:	00813023          	sd	s0,0(sp)
    800021c8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::alloc(size);
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	a5c080e7          	jalr	-1444(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>
}
    800021d4:	00813083          	ld	ra,8(sp)
    800021d8:	00013403          	ld	s0,0(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <__mem_free>:

int __mem_free(void *toFree)
{
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::freee(toFree);
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	b44080e7          	jalr	-1212(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
}
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_Znwm>:

void *operator new(size_t n)
{
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00113423          	sd	ra,8(sp)
    80002214:	00813023          	sd	s0,0(sp)
    80002218:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	2cc080e7          	jalr	716(ra) # 800014e8 <_Z9mem_allocm>
}
    80002224:	00813083          	ld	ra,8(sp)
    80002228:	00013403          	ld	s0,0(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_Znam>:

void *operator new[](size_t n)
{
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00113423          	sd	ra,8(sp)
    8000223c:	00813023          	sd	s0,0(sp)
    80002240:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	2a4080e7          	jalr	676(ra) # 800014e8 <_Z9mem_allocm>
}
    8000224c:	00813083          	ld	ra,8(sp)
    80002250:	00013403          	ld	s0,0(sp)
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00008067          	ret

000000008000225c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00113423          	sd	ra,8(sp)
    80002264:	00813023          	sd	s0,0(sp)
    80002268:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	3a4080e7          	jalr	932(ra) # 80001610 <_Z8mem_freePv>
}
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00113423          	sd	ra,8(sp)
    8000228c:	00813023          	sd	s0,0(sp)
    80002290:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002294:	fffff097          	auipc	ra,0xfffff
    80002298:	37c080e7          	jalr	892(ra) # 80001610 <_Z8mem_freePv>
}
    8000229c:	00813083          	ld	ra,8(sp)
    800022a0:	00013403          	ld	s0,0(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <_ZN14PeriodicThread7wrapperEPv>:
struct ThreadPeriod{
    PeriodicThread *pt;
    time_t period;
};

void PeriodicThread::wrapper(void* arg) {
    800022ac:	fe010113          	addi	sp,sp,-32
    800022b0:	00113c23          	sd	ra,24(sp)
    800022b4:	00813823          	sd	s0,16(sp)
    800022b8:	00913423          	sd	s1,8(sp)
    800022bc:	02010413          	addi	s0,sp,32
    800022c0:	00050493          	mv	s1,a0
    ThreadPeriod* threadPeriod = (ThreadPeriod*)arg;
    while(true){
        threadPeriod->pt->periodicActivation();
    800022c4:	0004b503          	ld	a0,0(s1)
    800022c8:	00053783          	ld	a5,0(a0)
    800022cc:	0187b783          	ld	a5,24(a5)
    800022d0:	000780e7          	jalr	a5
        time_sleep(threadPeriod->period);
    800022d4:	0084b503          	ld	a0,8(s1)
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	1cc080e7          	jalr	460(ra) # 800014a4 <_Z10time_sleepm>
    while(true){
    800022e0:	fe5ff06f          	j	800022c4 <_ZN14PeriodicThread7wrapperEPv+0x18>

00000000800022e4 <_ZN14PeriodicThreadC1Em>:
    }
    delete threadPeriod;
}

PeriodicThread::PeriodicThread(time_t period):Thread(PeriodicThread::wrapper,(void*)new ThreadPeriod{this,period}) {
    800022e4:	fe010113          	addi	sp,sp,-32
    800022e8:	00113c23          	sd	ra,24(sp)
    800022ec:	00813823          	sd	s0,16(sp)
    800022f0:	00913423          	sd	s1,8(sp)
    800022f4:	01213023          	sd	s2,0(sp)
    800022f8:	02010413          	addi	s0,sp,32
    800022fc:	00050493          	mv	s1,a0
    80002300:	00058913          	mv	s2,a1
    80002304:	01000513          	li	a0,16
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	f04080e7          	jalr	-252(ra) # 8000220c <_Znwm>
    80002310:	00050613          	mv	a2,a0
    80002314:	00953023          	sd	s1,0(a0)
    80002318:	01253423          	sd	s2,8(a0)
    8000231c:	00000597          	auipc	a1,0x0
    80002320:	f9058593          	addi	a1,a1,-112 # 800022ac <_ZN14PeriodicThread7wrapperEPv>
    80002324:	00048513          	mv	a0,s1
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	534080e7          	jalr	1332(ra) # 8000185c <_ZN6ThreadC1EPFvPvES0_>
    80002330:	00006797          	auipc	a5,0x6
    80002334:	46078793          	addi	a5,a5,1120 # 80008790 <_ZTV14PeriodicThread+0x10>
    80002338:	00f4b023          	sd	a5,0(s1)
}
    8000233c:	01813083          	ld	ra,24(sp)
    80002340:	01013403          	ld	s0,16(sp)
    80002344:	00813483          	ld	s1,8(sp)
    80002348:	00013903          	ld	s2,0(sp)
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret

0000000080002354 <_ZN14PeriodicThread18periodicActivationEv>:
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    80002360:	00813403          	ld	s0,8(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00113423          	sd	ra,8(sp)
    80002374:	00813023          	sd	s0,0(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	00006797          	auipc	a5,0x6
    80002380:	41478793          	addi	a5,a5,1044 # 80008790 <_ZTV14PeriodicThread+0x10>
    80002384:	00f53023          	sd	a5,0(a0)
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	424080e7          	jalr	1060(ra) # 800017ac <_ZN6ThreadD1Ev>
    80002390:	00813083          	ld	ra,8(sp)
    80002394:	00013403          	ld	s0,0(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <_ZN14PeriodicThreadD0Ev>:
    800023a0:	fe010113          	addi	sp,sp,-32
    800023a4:	00113c23          	sd	ra,24(sp)
    800023a8:	00813823          	sd	s0,16(sp)
    800023ac:	00913423          	sd	s1,8(sp)
    800023b0:	02010413          	addi	s0,sp,32
    800023b4:	00050493          	mv	s1,a0
    800023b8:	00006797          	auipc	a5,0x6
    800023bc:	3d878793          	addi	a5,a5,984 # 80008790 <_ZTV14PeriodicThread+0x10>
    800023c0:	00f53023          	sd	a5,0(a0)
    800023c4:	fffff097          	auipc	ra,0xfffff
    800023c8:	3e8080e7          	jalr	1000(ra) # 800017ac <_ZN6ThreadD1Ev>
    800023cc:	00048513          	mv	a0,s1
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	e8c080e7          	jalr	-372(ra) # 8000225c <_ZdlPv>
    800023d8:	01813083          	ld	ra,24(sp)
    800023dc:	01013403          	ld	s0,16(sp)
    800023e0:	00813483          	ld	s1,8(sp)
    800023e4:	02010113          	addi	sp,sp,32
    800023e8:	00008067          	ret

00000000800023ec <_ZN5Riscv9privilegeEv>:
#include "../test/printing.hpp"
#include "../h/_sem.hpp"
#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"

void Riscv::privilege() {
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00813423          	sd	s0,8(sp)
    800023f4:	01010413          	addi	s0,sp,16
    if (TCB::running->systemThread) {
    800023f8:	00006797          	auipc	a5,0x6
    800023fc:	4787b783          	ld	a5,1144(a5) # 80008870 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002400:	0007b783          	ld	a5,0(a5)
    80002404:	0347c783          	lbu	a5,52(a5)
    80002408:	00078c63          	beqz	a5,80002420 <_ZN5Riscv9privilegeEv+0x34>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000240c:	10000793          	li	a5,256
    80002410:	1007a073          	csrs	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    } else {
        mc_sstatus(SSTATUS_SPP);
    }
}
    80002414:	00813403          	ld	s0,8(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002420:	10000793          	li	a5,256
    80002424:	1007b073          	csrc	sstatus,a5
    80002428:	fedff06f          	j	80002414 <_ZN5Riscv9privilegeEv+0x28>

000000008000242c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00813423          	sd	s0,8(sp)
    80002434:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002438:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000243c:	10200073          	sret
}
    80002440:	00813403          	ld	s0,8(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_ZN5Riscv10systemCallEPm>:

using Body = void(*)(void*);

uint64 Riscv::systemCall(uint64* args){
    8000244c:	fc010113          	addi	sp,sp,-64
    80002450:	02113c23          	sd	ra,56(sp)
    80002454:	02813823          	sd	s0,48(sp)
    80002458:	02913423          	sd	s1,40(sp)
    8000245c:	03213023          	sd	s2,32(sp)
    80002460:	01313c23          	sd	s3,24(sp)
    80002464:	04010413          	addi	s0,sp,64
    uint64 code = (uint64)args[0];
    80002468:	00053783          	ld	a5,0(a0)

    if(code == Cthread_create){
    8000246c:	01100713          	li	a4,17
    80002470:	06e78e63          	beq	a5,a4,800024ec <_ZN5Riscv10systemCallEPm+0xa0>
        *handle = TCB::createThread(start_routine,arg,stack);
        if(!handle)
            return -3;
        return 0;
    }
    if(code == Cthread_createNS){
    80002474:	09100713          	li	a4,145
    80002478:	0ae78263          	beq	a5,a4,8000251c <_ZN5Riscv10systemCallEPm+0xd0>
        *handle = TCB::createThreadNS(start_routine,arg,stack);
        if(!handle)
            return -3;
        return 0;
    }
    else if (code == Cthread_start)
    8000247c:	09200713          	li	a4,146
    80002480:	0ce78663          	beq	a5,a4,8000254c <_ZN5Riscv10systemCallEPm+0x100>
    {
        thread_t handle = (thread_t)args[1];
        uint64 retval = handle->start();
        return retval;
    }
    else if(code == Cthread_exit){
    80002484:	01200713          	li	a4,18
    80002488:	0ce78a63          	beq	a5,a4,8000255c <_ZN5Riscv10systemCallEPm+0x110>
        uint64 retval = TCB::exit();
        return retval;
    }
    else if(code == Cthread_dispatch){
    8000248c:	01300713          	li	a4,19
    80002490:	0ce78c63          	beq	a5,a4,80002568 <_ZN5Riscv10systemCallEPm+0x11c>
        TCB::dispatch();
        return 0;
    }
    else if(code == Csem_open){
    80002494:	02100713          	li	a4,33
    80002498:	0ee78063          	beq	a5,a4,80002578 <_ZN5Riscv10systemCallEPm+0x12c>
        unsigned init = (unsigned)args[2];

        new _sem(handle,init);
        return 0;
    }
    else if(code == Csem_close){
    8000249c:	02200713          	li	a4,34
    800024a0:	10e78263          	beq	a5,a4,800025a4 <_ZN5Riscv10systemCallEPm+0x158>
        sem_t handle = (sem_t)args[1];
        uint64 retval = handle->close();
        return retval;
    }
    else if(code == Csem_wait){
    800024a4:	02300713          	li	a4,35
    800024a8:	10e78663          	beq	a5,a4,800025b4 <_ZN5Riscv10systemCallEPm+0x168>
        sem_t handle = (sem_t)args[1];
        uint64 retval = handle->wait();
        return retval;
    }
    else if(code == Csem_signal){
    800024ac:	02400713          	li	a4,36
    800024b0:	10e78a63          	beq	a5,a4,800025c4 <_ZN5Riscv10systemCallEPm+0x178>
        sem_t handle = (sem_t)args[1];
        uint64 retval = handle->signal();
        return retval;
    }
    else if(code == Ctime_sleep){
    800024b4:	03100713          	li	a4,49
    800024b8:	10e78e63          	beq	a5,a4,800025d4 <_ZN5Riscv10systemCallEPm+0x188>
        time_t time = (time_t)args[1];
        uint64 retval = TCB::time_sleep(time);
        return retval;
    }
    else if(code == Cmem_alloc){
    800024bc:	00100713          	li	a4,1
    800024c0:	12e78263          	beq	a5,a4,800025e4 <_ZN5Riscv10systemCallEPm+0x198>
        size_t volatile size = (size_t)args[1];
        uint64 retval = (uint64)MemoryAllocator::alloc(size);
        return retval;
    }
    else if(code == Cmem_free){
    800024c4:	00200713          	li	a4,2
    800024c8:	12e78a63          	beq	a5,a4,800025fc <_ZN5Riscv10systemCallEPm+0x1b0>
        void* toFree = (void*)args[1];
        uint64 retval = (uint64)MemoryAllocator::freee(toFree);
        return retval;
    }

    return -9;
    800024cc:	ff700513          	li	a0,-9
}
    800024d0:	03813083          	ld	ra,56(sp)
    800024d4:	03013403          	ld	s0,48(sp)
    800024d8:	02813483          	ld	s1,40(sp)
    800024dc:	02013903          	ld	s2,32(sp)
    800024e0:	01813983          	ld	s3,24(sp)
    800024e4:	04010113          	addi	sp,sp,64
    800024e8:	00008067          	ret
        thread_t* handle = (thread_t*)args[1];
    800024ec:	00853483          	ld	s1,8(a0)
        *handle = TCB::createThread(start_routine,arg,stack);
    800024f0:	02053603          	ld	a2,32(a0)
    800024f4:	01853583          	ld	a1,24(a0)
    800024f8:	01053503          	ld	a0,16(a0)
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	700080e7          	jalr	1792(ra) # 80001bfc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002504:	00a4b023          	sd	a0,0(s1)
        if(!handle)
    80002508:	00048663          	beqz	s1,80002514 <_ZN5Riscv10systemCallEPm+0xc8>
        return 0;
    8000250c:	00000513          	li	a0,0
    80002510:	fc1ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
            return -3;
    80002514:	ffd00513          	li	a0,-3
    80002518:	fb9ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        thread_t* handle = (thread_t*)args[1];
    8000251c:	00853483          	ld	s1,8(a0)
        *handle = TCB::createThreadNS(start_routine,arg,stack);
    80002520:	02053603          	ld	a2,32(a0)
    80002524:	01853583          	ld	a1,24(a0)
    80002528:	01053503          	ld	a0,16(a0)
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	614080e7          	jalr	1556(ra) # 80001b40 <_ZN3TCB14createThreadNSEPFvPvES0_Pm>
    80002534:	00a4b023          	sd	a0,0(s1)
        if(!handle)
    80002538:	00048663          	beqz	s1,80002544 <_ZN5Riscv10systemCallEPm+0xf8>
        return 0;
    8000253c:	00000513          	li	a0,0
    80002540:	f91ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
            return -3;
    80002544:	ffd00513          	li	a0,-3
    80002548:	f89ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        uint64 retval = handle->start();
    8000254c:	00853503          	ld	a0,8(a0)
    80002550:	00000097          	auipc	ra,0x0
    80002554:	bf0080e7          	jalr	-1040(ra) # 80002140 <_ZN3TCB5startEv>
        return retval;
    80002558:	f79ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        uint64 retval = TCB::exit();
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	858080e7          	jalr	-1960(ra) # 80001db4 <_ZN3TCB4exitEv>
        return retval;
    80002564:	f6dff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        TCB::dispatch();
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	7a8080e7          	jalr	1960(ra) # 80001d10 <_ZN3TCB8dispatchEv>
        return 0;
    80002570:	00000513          	li	a0,0
    80002574:	f5dff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        sem_t* handle = (sem_t*)args[1];
    80002578:	00853903          	ld	s2,8(a0)
        unsigned init = (unsigned)args[2];
    8000257c:	01052983          	lw	s3,16(a0)

class _sem {
public:
    ~_sem();

    void *operator new(size_t size) { return MemoryAllocator::alloc(size); }
    80002580:	01800513          	li	a0,24
    80002584:	00000097          	auipc	ra,0x0
    80002588:	6a4080e7          	jalr	1700(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>
    8000258c:	00050493          	mv	s1,a0
        new _sem(handle,init);
    80002590:	00098613          	mv	a2,s3
    80002594:	00090593          	mv	a1,s2
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	2c0080e7          	jalr	704(ra) # 80002858 <_ZN4_semC1EPPS_j>
    800025a0:	06c0006f          	j	8000260c <_ZN5Riscv10systemCallEPm+0x1c0>
        uint64 retval = handle->close();
    800025a4:	00853503          	ld	a0,8(a0)
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	384080e7          	jalr	900(ra) # 8000292c <_ZN4_sem5closeEv>
        return retval;
    800025b0:	f21ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        uint64 retval = handle->wait();
    800025b4:	00853503          	ld	a0,8(a0)
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	2cc080e7          	jalr	716(ra) # 80002884 <_ZN4_sem4waitEv>
        return retval;
    800025c0:	f11ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        uint64 retval = handle->signal();
    800025c4:	00853503          	ld	a0,8(a0)
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	400080e7          	jalr	1024(ra) # 800029c8 <_ZN4_sem6signalEv>
        return retval;
    800025d0:	f01ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        uint64 retval = TCB::time_sleep(time);
    800025d4:	00853503          	ld	a0,8(a0)
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	8c0080e7          	jalr	-1856(ra) # 80001e98 <_ZN3TCB10time_sleepEm>
        return retval;
    800025e0:	ef1ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        size_t volatile size = (size_t)args[1];
    800025e4:	00853783          	ld	a5,8(a0)
    800025e8:	fcf43423          	sd	a5,-56(s0)
        uint64 retval = (uint64)MemoryAllocator::alloc(size);
    800025ec:	fc843503          	ld	a0,-56(s0)
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	638080e7          	jalr	1592(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>
        return retval;
    800025f8:	ed9ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        uint64 retval = (uint64)MemoryAllocator::freee(toFree);
    800025fc:	00853503          	ld	a0,8(a0)
    80002600:	00000097          	auipc	ra,0x0
    80002604:	738080e7          	jalr	1848(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
        return retval;
    80002608:	ec9ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
        return 0;
    8000260c:	00000513          	li	a0,0
    80002610:	ec1ff06f          	j	800024d0 <_ZN5Riscv10systemCallEPm+0x84>
    80002614:	00050913          	mv	s2,a0

    void operator delete(void *toDelete) { MemoryAllocator::freee(toDelete); }
    80002618:	00048513          	mv	a0,s1
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	71c080e7          	jalr	1820(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
    80002624:	00090513          	mv	a0,s2
    80002628:	00007097          	auipc	ra,0x7
    8000262c:	3e0080e7          	jalr	992(ra) # 80009a08 <_Unwind_Resume>

0000000080002630 <_ZN5Riscv20handleSupervisorTrapEv>:



void Riscv::handleSupervisorTrap()
{
    80002630:	f4010113          	addi	sp,sp,-192
    80002634:	0a113c23          	sd	ra,184(sp)
    80002638:	0a813823          	sd	s0,176(sp)
    8000263c:	0a913423          	sd	s1,168(sp)
    80002640:	0b213023          	sd	s2,160(sp)
    80002644:	09313c23          	sd	s3,152(sp)
    80002648:	0c010413          	addi	s0,sp,192
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

inline void Riscv::loadArgsFromRegs(uint64 *arguments)
{
    __asm__ volatile ("mv %0, a0" : "=r" (arguments[0]));
    8000264c:	00050793          	mv	a5,a0
    80002650:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("mv %0, a1" : "=r" (arguments[1]));
    80002654:	00058793          	mv	a5,a1
    80002658:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("mv %0, a2" : "=r" (arguments[2]));
    8000265c:	00060793          	mv	a5,a2
    80002660:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a3" : "=r" (arguments[3]));
    80002664:	00068793          	mv	a5,a3
    80002668:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %0, a4" : "=r" (arguments[4]));
    8000266c:	00070793          	mv	a5,a4
    80002670:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002674:	142027f3          	csrr	a5,scause
    80002678:	f6f43423          	sd	a5,-152(s0)
    return scause;
    8000267c:	f6843703          	ld	a4,-152(s0)
    uint64 args[5];
    loadArgsFromRegs(args);

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002680:	ff870693          	addi	a3,a4,-8
    80002684:	00100793          	li	a5,1
    80002688:	10d7f063          	bgeu	a5,a3,80002788 <_ZN5Riscv20handleSupervisorTrapEv+0x158>

        w_retval(retval);
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    8000268c:	fff00793          	li	a5,-1
    80002690:	03f79793          	slli	a5,a5,0x3f
    80002694:	00178793          	addi	a5,a5,1
    80002698:	12f70c63          	beq	a4,a5,800027d0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
            mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    8000269c:	fff00793          	li	a5,-1
    800026a0:	03f79793          	slli	a5,a5,0x3f
    800026a4:	00978793          	addi	a5,a5,9
    800026a8:	1af70263          	beq	a4,a5,8000284c <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800026ac:	142027f3          	csrr	a5,scause
    800026b0:	faf43023          	sd	a5,-96(s0)
    return scause;
    800026b4:	fa043983          	ld	s3,-96(s0)
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    800026b8:	105027f3          	csrr	a5,stvec
    800026bc:	f8f43c23          	sd	a5,-104(s0)
    return stvec;
    800026c0:	f9843903          	ld	s2,-104(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800026c4:	141027f3          	csrr	a5,sepc
    800026c8:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    800026cc:	f9043483          	ld	s1,-112(s0)
    {
        uint64 scause = r_scause();
        uint64 stvec = r_stvec();
        uint64 sepc = r_sepc();

        printString("scause: ");
    800026d0:	00005517          	auipc	a0,0x5
    800026d4:	96850513          	addi	a0,a0,-1688 # 80007038 <CONSOLE_STATUS+0x28>
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	7a8080e7          	jalr	1960(ra) # 80002e80 <_Z11printStringPKc>
        printInt(scause);
    800026e0:	00000613          	li	a2,0
    800026e4:	00a00593          	li	a1,10
    800026e8:	0009851b          	sext.w	a0,s3
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	92c080e7          	jalr	-1748(ra) # 80003018 <_Z8printIntiii>
        printString("\n");
    800026f4:	00005517          	auipc	a0,0x5
    800026f8:	9b450513          	addi	a0,a0,-1612 # 800070a8 <CONSOLE_STATUS+0x98>
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	784080e7          	jalr	1924(ra) # 80002e80 <_Z11printStringPKc>

        printString("stvec: ");
    80002704:	00005517          	auipc	a0,0x5
    80002708:	94450513          	addi	a0,a0,-1724 # 80007048 <CONSOLE_STATUS+0x38>
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	774080e7          	jalr	1908(ra) # 80002e80 <_Z11printStringPKc>
        printInt(stvec);
    80002714:	00000613          	li	a2,0
    80002718:	00a00593          	li	a1,10
    8000271c:	0009051b          	sext.w	a0,s2
    80002720:	00001097          	auipc	ra,0x1
    80002724:	8f8080e7          	jalr	-1800(ra) # 80003018 <_Z8printIntiii>
        printString("\n");
    80002728:	00005517          	auipc	a0,0x5
    8000272c:	98050513          	addi	a0,a0,-1664 # 800070a8 <CONSOLE_STATUS+0x98>
    80002730:	00000097          	auipc	ra,0x0
    80002734:	750080e7          	jalr	1872(ra) # 80002e80 <_Z11printStringPKc>

        printString("sepc: ");
    80002738:	00005517          	auipc	a0,0x5
    8000273c:	91850513          	addi	a0,a0,-1768 # 80007050 <CONSOLE_STATUS+0x40>
    80002740:	00000097          	auipc	ra,0x0
    80002744:	740080e7          	jalr	1856(ra) # 80002e80 <_Z11printStringPKc>
        printInt(sepc);
    80002748:	00000613          	li	a2,0
    8000274c:	00a00593          	li	a1,10
    80002750:	0004851b          	sext.w	a0,s1
    80002754:	00001097          	auipc	ra,0x1
    80002758:	8c4080e7          	jalr	-1852(ra) # 80003018 <_Z8printIntiii>
        printString("\n");
    8000275c:	00005517          	auipc	a0,0x5
    80002760:	94c50513          	addi	a0,a0,-1716 # 800070a8 <CONSOLE_STATUS+0x98>
    80002764:	00000097          	auipc	ra,0x0
    80002768:	71c080e7          	jalr	1820(ra) # 80002e80 <_Z11printStringPKc>
    }
    8000276c:	0b813083          	ld	ra,184(sp)
    80002770:	0b013403          	ld	s0,176(sp)
    80002774:	0a813483          	ld	s1,168(sp)
    80002778:	0a013903          	ld	s2,160(sp)
    8000277c:	09813983          	ld	s3,152(sp)
    80002780:	0c010113          	addi	sp,sp,192
    80002784:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002788:	141027f3          	csrr	a5,sepc
    8000278c:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80002790:	f7843783          	ld	a5,-136(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002794:	00478793          	addi	a5,a5,4
    80002798:	f4f43423          	sd	a5,-184(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000279c:	100027f3          	csrr	a5,sstatus
    800027a0:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    800027a4:	f7043783          	ld	a5,-144(s0)
        uint64 volatile sstatus = r_sstatus();
    800027a8:	f4f43823          	sd	a5,-176(s0)
        uint64 retval = (uint64)systemCall(args);
    800027ac:	fa840513          	addi	a0,s0,-88
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	c9c080e7          	jalr	-868(ra) # 8000244c <_ZN5Riscv10systemCallEPm>
}

inline void Riscv::w_retval(uint64 retval) {
    __asm__ volatile ("mv a0, %0" : : "r" (retval));
    800027b8:	00050513          	mv	a0,a0
        w_sstatus(sstatus);
    800027bc:	f5043783          	ld	a5,-176(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800027c0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800027c4:	f4843783          	ld	a5,-184(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800027c8:	14179073          	csrw	sepc,a5
}
    800027cc:	fa1ff06f          	j	8000276c <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        TCB::timeSliceCounter++;
    800027d0:	00006497          	auipc	s1,0x6
    800027d4:	0884b483          	ld	s1,136(s1) # 80008858 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027d8:	0004b783          	ld	a5,0(s1)
    800027dc:	00178793          	addi	a5,a5,1
    800027e0:	00f4b023          	sd	a5,0(s1)
        TCB::checkForWakeUp();
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	88c080e7          	jalr	-1908(ra) # 80002070 <_ZN3TCB14checkForWakeUpEv>
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800027ec:	00006797          	auipc	a5,0x6
    800027f0:	0847b783          	ld	a5,132(a5) # 80008870 <_GLOBAL_OFFSET_TABLE_+0x30>
    800027f4:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const { return timeSlice; }
    800027f8:	0287b783          	ld	a5,40(a5)
    800027fc:	0004b703          	ld	a4,0(s1)
    80002800:	00f77863          	bgeu	a4,a5,80002810 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002804:	00200793          	li	a5,2
    80002808:	1447b073          	csrc	sip,a5
}
    8000280c:	f61ff06f          	j	8000276c <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002810:	141027f3          	csrr	a5,sepc
    80002814:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002818:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sepc = r_sepc();
    8000281c:	f4f43c23          	sd	a5,-168(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002820:	100027f3          	csrr	a5,sstatus
    80002824:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80002828:	f8043783          	ld	a5,-128(s0)
            uint64 volatile sstatus = r_sstatus();
    8000282c:	f6f43023          	sd	a5,-160(s0)
            TCB::dispatch();
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	4e0080e7          	jalr	1248(ra) # 80001d10 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002838:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000283c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002840:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002844:	14179073          	csrw	sepc,a5
}
    80002848:	fbdff06f          	j	80002804 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
        console_handler();
    8000284c:	00004097          	auipc	ra,0x4
    80002850:	8e4080e7          	jalr	-1820(ra) # 80006130 <console_handler>
    80002854:	f19ff06f          	j	8000276c <_ZN5Riscv20handleSupervisorTrapEv+0x13c>

0000000080002858 <_ZN4_semC1EPPS_j>:
#include "../h/_sem.hpp"


_sem::_sem(sem_t *handle, unsigned int init) {
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813423          	sd	s0,8(sp)
    80002860:	01010413          	addi	s0,sp,16
        void *operator new(size_t size) { return MemoryAllocator::alloc(size); }
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    };

    Elem *head, *tail;
    List() : head(0), tail(0) {}
    80002864:	00053023          	sd	zero,0(a0)
    80002868:	00053423          	sd	zero,8(a0)
    *handle = this;
    8000286c:	00a5b023          	sd	a0,0(a1)
    val = init;
    80002870:	00c52823          	sw	a2,16(a0)
    closed = false;
    80002874:	00050a23          	sb	zero,20(a0)
}
    80002878:	00813403          	ld	s0,8(sp)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <_ZN4_sem4waitEv>:

int _sem::wait() {
    if (closed)
    80002884:	01454783          	lbu	a5,20(a0)
    80002888:	08079e63          	bnez	a5,80002924 <_ZN4_sem4waitEv+0xa0>
int _sem::wait() {
    8000288c:	fe010113          	addi	sp,sp,-32
    80002890:	00113c23          	sd	ra,24(sp)
    80002894:	00813823          	sd	s0,16(sp)
    80002898:	00913423          	sd	s1,8(sp)
    8000289c:	01213023          	sd	s2,0(sp)
    800028a0:	02010413          	addi	s0,sp,32
    800028a4:	00050493          	mv	s1,a0
        return -3;
    if (--val < 0){
    800028a8:	01052783          	lw	a5,16(a0)
    800028ac:	fff7879b          	addiw	a5,a5,-1
    800028b0:	00f52823          	sw	a5,16(a0)
    800028b4:	02079713          	slli	a4,a5,0x20
    800028b8:	02074063          	bltz	a4,800028d8 <_ZN4_sem4waitEv+0x54>
        waitingThreads.addLast(TCB::running);
        TCB::wait();
    }
    return 0;
    800028bc:	00000513          	li	a0,0
}
    800028c0:	01813083          	ld	ra,24(sp)
    800028c4:	01013403          	ld	s0,16(sp)
    800028c8:	00813483          	ld	s1,8(sp)
    800028cc:	00013903          	ld	s2,0(sp)
    800028d0:	02010113          	addi	sp,sp,32
    800028d4:	00008067          	ret
        waitingThreads.addLast(TCB::running);
    800028d8:	00006797          	auipc	a5,0x6
    800028dc:	f987b783          	ld	a5,-104(a5) # 80008870 <_GLOBAL_OFFSET_TABLE_+0x30>
    800028e0:	0007b903          	ld	s2,0(a5)
        void *operator new(size_t size) { return MemoryAllocator::alloc(size); }
    800028e4:	01000513          	li	a0,16
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	340080e7          	jalr	832(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800028f0:	01253023          	sd	s2,0(a0)
    800028f4:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    800028f8:	0084b783          	ld	a5,8(s1)
    800028fc:	00078e63          	beqz	a5,80002918 <_ZN4_sem4waitEv+0x94>
        {
            tail->next = elem;
    80002900:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002904:	00a4b423          	sd	a0,8(s1)
        TCB::wait();
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	4f8080e7          	jalr	1272(ra) # 80001e00 <_ZN3TCB4waitEv>
    return 0;
    80002910:	00000513          	li	a0,0
    80002914:	fadff06f          	j	800028c0 <_ZN4_sem4waitEv+0x3c>
        } else
        {
            head = tail = elem;
    80002918:	00a4b423          	sd	a0,8(s1)
    8000291c:	00a4b023          	sd	a0,0(s1)
    80002920:	fe9ff06f          	j	80002908 <_ZN4_sem4waitEv+0x84>
        return -3;
    80002924:	ffd00513          	li	a0,-3
}
    80002928:	00008067          	ret

000000008000292c <_ZN4_sem5closeEv>:

int _sem::close() {
    if (closed)
    8000292c:	01454783          	lbu	a5,20(a0)
    80002930:	06079663          	bnez	a5,8000299c <_ZN4_sem5closeEv+0x70>
int _sem::close() {
    80002934:	fe010113          	addi	sp,sp,-32
    80002938:	00113c23          	sd	ra,24(sp)
    8000293c:	00813823          	sd	s0,16(sp)
    80002940:	00913423          	sd	s1,8(sp)
    80002944:	01213023          	sd	s2,0(sp)
    80002948:	02010413          	addi	s0,sp,32
    8000294c:	00050493          	mv	s1,a0
        return -3;
    val = 0;
    80002950:	00052823          	sw	zero,16(a0)
    closed = true;
    80002954:	00100793          	li	a5,1
    80002958:	00f50a23          	sb	a5,20(a0)
    8000295c:	0200006f          	j	8000297c <_ZN4_sem5closeEv+0x50>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80002960:	0004b423          	sd	zero,8(s1)

        T *ret = elem->data;
    80002964:	00053903          	ld	s2,0(a0)
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	3d0080e7          	jalr	976(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
    while (waitingThreads.peekFirst()!=nullptr){
        TCB* thread = waitingThreads.removeFirst();
        thread->signal();
    80002970:	00090513          	mv	a0,s2
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	4dc080e7          	jalr	1244(ra) # 80001e50 <_ZN3TCB6signalEv>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    8000297c:	0004b503          	ld	a0,0(s1)
    80002980:	02050263          	beqz	a0,800029a4 <_ZN4_sem5closeEv+0x78>
        return head->data;
    80002984:	00053783          	ld	a5,0(a0)
    while (waitingThreads.peekFirst()!=nullptr){
    80002988:	02078c63          	beqz	a5,800029c0 <_ZN4_sem5closeEv+0x94>
        head = head->next;
    8000298c:	00853783          	ld	a5,8(a0)
    80002990:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    80002994:	fc0798e3          	bnez	a5,80002964 <_ZN4_sem5closeEv+0x38>
    80002998:	fc9ff06f          	j	80002960 <_ZN4_sem5closeEv+0x34>
        return -3;
    8000299c:	ffd00513          	li	a0,-3
    }
    return 0;
}
    800029a0:	00008067          	ret
    return 0;
    800029a4:	00000513          	li	a0,0
}
    800029a8:	01813083          	ld	ra,24(sp)
    800029ac:	01013403          	ld	s0,16(sp)
    800029b0:	00813483          	ld	s1,8(sp)
    800029b4:	00013903          	ld	s2,0(sp)
    800029b8:	02010113          	addi	sp,sp,32
    800029bc:	00008067          	ret
    return 0;
    800029c0:	00000513          	li	a0,0
    800029c4:	fe5ff06f          	j	800029a8 <_ZN4_sem5closeEv+0x7c>

00000000800029c8 <_ZN4_sem6signalEv>:

int _sem::signal() {
    if (closed)
    800029c8:	01454703          	lbu	a4,20(a0)
    800029cc:	08071663          	bnez	a4,80002a58 <_ZN4_sem6signalEv+0x90>
    800029d0:	00050793          	mv	a5,a0
        return -3;
    if(++val <= 0){
    800029d4:	01052703          	lw	a4,16(a0)
    800029d8:	0017071b          	addiw	a4,a4,1
    800029dc:	0007069b          	sext.w	a3,a4
    800029e0:	00e52823          	sw	a4,16(a0)
    800029e4:	00d05663          	blez	a3,800029f0 <_ZN4_sem6signalEv+0x28>
        TCB* thread = waitingThreads.removeFirst();
        thread->signal();
    }
    return 0;
    800029e8:	00000513          	li	a0,0
}
    800029ec:	00008067          	ret
int _sem::signal() {
    800029f0:	fe010113          	addi	sp,sp,-32
    800029f4:	00113c23          	sd	ra,24(sp)
    800029f8:	00813823          	sd	s0,16(sp)
    800029fc:	00913423          	sd	s1,8(sp)
    80002a00:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002a04:	00053503          	ld	a0,0(a0)
    80002a08:	04050463          	beqz	a0,80002a50 <_ZN4_sem6signalEv+0x88>
        head = head->next;
    80002a0c:	00853703          	ld	a4,8(a0)
    80002a10:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    80002a14:	02070a63          	beqz	a4,80002a48 <_ZN4_sem6signalEv+0x80>
        T *ret = elem->data;
    80002a18:	00053483          	ld	s1,0(a0)
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	31c080e7          	jalr	796(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
        thread->signal();
    80002a24:	00048513          	mv	a0,s1
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	428080e7          	jalr	1064(ra) # 80001e50 <_ZN3TCB6signalEv>
    return 0;
    80002a30:	00000513          	li	a0,0
}
    80002a34:	01813083          	ld	ra,24(sp)
    80002a38:	01013403          	ld	s0,16(sp)
    80002a3c:	00813483          	ld	s1,8(sp)
    80002a40:	02010113          	addi	sp,sp,32
    80002a44:	00008067          	ret
        if (!head) { tail = 0; }
    80002a48:	0007b423          	sd	zero,8(a5)
    80002a4c:	fcdff06f          	j	80002a18 <_ZN4_sem6signalEv+0x50>
        if (!head) { return 0; }
    80002a50:	00050493          	mv	s1,a0
    80002a54:	fd1ff06f          	j	80002a24 <_ZN4_sem6signalEv+0x5c>
        return -3;
    80002a58:	ffd00513          	li	a0,-3
    80002a5c:	00008067          	ret

0000000080002a60 <_ZN4_semD1Ev>:

_sem::~_sem() {
    80002a60:	ff010113          	addi	sp,sp,-16
    80002a64:	00113423          	sd	ra,8(sp)
    80002a68:	00813023          	sd	s0,0(sp)
    80002a6c:	01010413          	addi	s0,sp,16
    close();
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	ebc080e7          	jalr	-324(ra) # 8000292c <_ZN4_sem5closeEv>
}
    80002a78:	00813083          	ld	ra,8(sp)
    80002a7c:	00013403          	ld	s0,0(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret

0000000080002a88 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
    80002a88:	ff010113          	addi	sp,sp,-16
    80002a8c:	00813423          	sd	s0,8(sp)
    80002a90:	01010413          	addi	s0,sp,16
    80002a94:	00100793          	li	a5,1
    80002a98:	00f50863          	beq	a0,a5,80002aa8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a9c:	00813403          	ld	s0,8(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret
    80002aa8:	000107b7          	lui	a5,0x10
    80002aac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002ab0:	fef596e3          	bne	a1,a5,80002a9c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002ab4:	00006797          	auipc	a5,0x6
    80002ab8:	e4c78793          	addi	a5,a5,-436 # 80008900 <_ZN9Scheduler16readyThreadQueueE>
    80002abc:	0007b023          	sd	zero,0(a5)
    80002ac0:	0007b423          	sd	zero,8(a5)
    80002ac4:	fd9ff06f          	j	80002a9c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ac8 <_ZN9Scheduler3getEv>:
{
    80002ac8:	fe010113          	addi	sp,sp,-32
    80002acc:	00113c23          	sd	ra,24(sp)
    80002ad0:	00813823          	sd	s0,16(sp)
    80002ad4:	00913423          	sd	s1,8(sp)
    80002ad8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002adc:	00006517          	auipc	a0,0x6
    80002ae0:	e2453503          	ld	a0,-476(a0) # 80008900 <_ZN9Scheduler16readyThreadQueueE>
    80002ae4:	04050263          	beqz	a0,80002b28 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002ae8:	00853783          	ld	a5,8(a0)
    80002aec:	00006717          	auipc	a4,0x6
    80002af0:	e0f73a23          	sd	a5,-492(a4) # 80008900 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002af4:	02078463          	beqz	a5,80002b1c <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002af8:	00053483          	ld	s1,0(a0)
        void operator delete(void *toFree) { MemoryAllocator::freee(toFree); }
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	23c080e7          	jalr	572(ra) # 80002d38 <_ZN15MemoryAllocator5freeeEPv>
}
    80002b04:	00048513          	mv	a0,s1
    80002b08:	01813083          	ld	ra,24(sp)
    80002b0c:	01013403          	ld	s0,16(sp)
    80002b10:	00813483          	ld	s1,8(sp)
    80002b14:	02010113          	addi	sp,sp,32
    80002b18:	00008067          	ret
        if (!head) { tail = 0; }
    80002b1c:	00006797          	auipc	a5,0x6
    80002b20:	de07b623          	sd	zero,-532(a5) # 80008908 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b24:	fd5ff06f          	j	80002af8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002b28:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002b2c:	fd9ff06f          	j	80002b04 <_ZN9Scheduler3getEv+0x3c>

0000000080002b30 <_ZN9Scheduler3putEP3TCB>:
{
    80002b30:	fe010113          	addi	sp,sp,-32
    80002b34:	00113c23          	sd	ra,24(sp)
    80002b38:	00813823          	sd	s0,16(sp)
    80002b3c:	00913423          	sd	s1,8(sp)
    80002b40:	02010413          	addi	s0,sp,32
    80002b44:	00050493          	mv	s1,a0
        void *operator new(size_t size) { return MemoryAllocator::alloc(size); }
    80002b48:	01000513          	li	a0,16
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	0dc080e7          	jalr	220(ra) # 80002c28 <_ZN15MemoryAllocator5allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b54:	00953023          	sd	s1,0(a0)
    80002b58:	00053423          	sd	zero,8(a0)
        if (tail)
    80002b5c:	00006797          	auipc	a5,0x6
    80002b60:	dac7b783          	ld	a5,-596(a5) # 80008908 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b64:	02078263          	beqz	a5,80002b88 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002b68:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b6c:	00006797          	auipc	a5,0x6
    80002b70:	d8a7be23          	sd	a0,-612(a5) # 80008908 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b74:	01813083          	ld	ra,24(sp)
    80002b78:	01013403          	ld	s0,16(sp)
    80002b7c:	00813483          	ld	s1,8(sp)
    80002b80:	02010113          	addi	sp,sp,32
    80002b84:	00008067          	ret
            head = tail = elem;
    80002b88:	00006797          	auipc	a5,0x6
    80002b8c:	d7878793          	addi	a5,a5,-648 # 80008900 <_ZN9Scheduler16readyThreadQueueE>
    80002b90:	00a7b423          	sd	a0,8(a5)
    80002b94:	00a7b023          	sd	a0,0(a5)
    80002b98:	fddff06f          	j	80002b74 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002b9c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00113423          	sd	ra,8(sp)
    80002ba4:	00813023          	sd	s0,0(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    80002bac:	000105b7          	lui	a1,0x10
    80002bb0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002bb4:	00100513          	li	a0,1
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	ed0080e7          	jalr	-304(ra) # 80002a88 <_Z41__static_initialization_and_destruction_0ii>
    80002bc0:	00813083          	ld	ra,8(sp)
    80002bc4:	00013403          	ld	s0,0(sp)
    80002bc8:	01010113          	addi	sp,sp,16
    80002bcc:	00008067          	ret

0000000080002bd0 <_ZN15MemoryAllocator8mem_initEv>:

MemoryDesc* MemoryAllocator::free = nullptr;

MemoryDesc* MemoryAllocator::allocated = nullptr;

void MemoryAllocator::mem_init() {
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00813423          	sd	s0,8(sp)
    80002bd8:	01010413          	addi	s0,sp,16
    MemoryDesc* memory = (MemoryDesc*)HEAP_START_ADDR;
    80002bdc:	00006697          	auipc	a3,0x6
    80002be0:	c6c6b683          	ld	a3,-916(a3) # 80008848 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002be4:	0006b783          	ld	a5,0(a3)
    memory->status = FREE;
    80002be8:	00100713          	li	a4,1
    80002bec:	00e7ac23          	sw	a4,24(a5)
    memory->prev = nullptr;
    80002bf0:	0007b423          	sd	zero,8(a5)
    memory->next = nullptr;
    80002bf4:	0007b023          	sd	zero,0(a5)
    memory->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - MEM_BLOCK_SIZE);
    80002bf8:	00006717          	auipc	a4,0x6
    80002bfc:	c8073703          	ld	a4,-896(a4) # 80008878 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002c00:	00073703          	ld	a4,0(a4)
    80002c04:	0006b683          	ld	a3,0(a3)
    80002c08:	40d70733          	sub	a4,a4,a3
    80002c0c:	fc070713          	addi	a4,a4,-64
    80002c10:	00e7b823          	sd	a4,16(a5)
    free = memory;
    80002c14:	00006717          	auipc	a4,0x6
    80002c18:	cef73e23          	sd	a5,-772(a4) # 80008910 <_ZN15MemoryAllocator4freeE>
}
    80002c1c:	00813403          	ld	s0,8(sp)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret

0000000080002c28 <_ZN15MemoryAllocator5allocEm>:

void *MemoryAllocator::alloc(size_t size){
    80002c28:	fd010113          	addi	sp,sp,-48
    80002c2c:	02113423          	sd	ra,40(sp)
    80002c30:	02813023          	sd	s0,32(sp)
    80002c34:	00913c23          	sd	s1,24(sp)
    80002c38:	01213823          	sd	s2,16(sp)
    80002c3c:	01313423          	sd	s3,8(sp)
    80002c40:	03010413          	addi	s0,sp,48
    80002c44:	00050913          	mv	s2,a0
    if (size % MEM_BLOCK_SIZE != 0)
    80002c48:	03f57793          	andi	a5,a0,63
    80002c4c:	00078863          	beqz	a5,80002c5c <_ZN15MemoryAllocator5allocEm+0x34>
        size = ((size / MEM_BLOCK_SIZE) + 1) * MEM_BLOCK_SIZE;
    80002c50:	00655913          	srli	s2,a0,0x6
    80002c54:	00190913          	addi	s2,s2,1
    80002c58:	00691913          	slli	s2,s2,0x6

    MemoryDesc* temp = free;
    80002c5c:	00006497          	auipc	s1,0x6
    80002c60:	cb44b483          	ld	s1,-844(s1) # 80008910 <_ZN15MemoryAllocator4freeE>
    80002c64:	0580006f          	j	80002cbc <_ZN15MemoryAllocator5allocEm+0x94>
    while(temp){
        if (temp->size == size){
            deletee(&free,temp);
    80002c68:	00048593          	mv	a1,s1
    80002c6c:	00006517          	auipc	a0,0x6
    80002c70:	ca450513          	addi	a0,a0,-860 # 80008910 <_ZN15MemoryAllocator4freeE>
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	1a4080e7          	jalr	420(ra) # 80002e18 <_Z7deleteePP10MemoryDescS0_>
            insert(&allocated,temp,ALLOCATED);
    80002c7c:	00000613          	li	a2,0
    80002c80:	00048593          	mv	a1,s1
    80002c84:	00006517          	auipc	a0,0x6
    80002c88:	c9450513          	addi	a0,a0,-876 # 80008918 <_ZN15MemoryAllocator9allocatedE>
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	124080e7          	jalr	292(ra) # 80002db0 <_Z6insertPP10MemoryDescS0_12MemoryStatus>
            return (void*)((char*)(temp) + MEM_BLOCK_SIZE);
    80002c94:	04048493          	addi	s1,s1,64

        temp=temp->next;
    }

    return nullptr;
}
    80002c98:	00048513          	mv	a0,s1
    80002c9c:	02813083          	ld	ra,40(sp)
    80002ca0:	02013403          	ld	s0,32(sp)
    80002ca4:	01813483          	ld	s1,24(sp)
    80002ca8:	01013903          	ld	s2,16(sp)
    80002cac:	00813983          	ld	s3,8(sp)
    80002cb0:	03010113          	addi	sp,sp,48
    80002cb4:	00008067          	ret
        temp=temp->next;
    80002cb8:	0004b483          	ld	s1,0(s1)
    while(temp){
    80002cbc:	fc048ee3          	beqz	s1,80002c98 <_ZN15MemoryAllocator5allocEm+0x70>
        if (temp->size == size){
    80002cc0:	0104b783          	ld	a5,16(s1)
    80002cc4:	fb2782e3          	beq	a5,s2,80002c68 <_ZN15MemoryAllocator5allocEm+0x40>
        else if(temp->size > size){
    80002cc8:	fef978e3          	bgeu	s2,a5,80002cb8 <_ZN15MemoryAllocator5allocEm+0x90>
            deletee(&free,temp);
    80002ccc:	00006997          	auipc	s3,0x6
    80002cd0:	c4498993          	addi	s3,s3,-956 # 80008910 <_ZN15MemoryAllocator4freeE>
    80002cd4:	00048593          	mv	a1,s1
    80002cd8:	00098513          	mv	a0,s3
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	13c080e7          	jalr	316(ra) # 80002e18 <_Z7deleteePP10MemoryDescS0_>
            MemoryDesc* newFree = (MemoryDesc*)((char*)temp+MEM_BLOCK_SIZE+size);
    80002ce4:	04090593          	addi	a1,s2,64
    80002ce8:	00b485b3          	add	a1,s1,a1
            newFree->size =(size_t)(temp->size-size-MEM_BLOCK_SIZE);
    80002cec:	0104b783          	ld	a5,16(s1)
    80002cf0:	412787b3          	sub	a5,a5,s2
    80002cf4:	fc078793          	addi	a5,a5,-64
    80002cf8:	00f5b823          	sd	a5,16(a1)
            newFree->prev = nullptr;
    80002cfc:	0005b423          	sd	zero,8(a1)
            newFree->next = nullptr;
    80002d00:	0005b023          	sd	zero,0(a1)
            insert(&free,newFree,FREE);
    80002d04:	00100613          	li	a2,1
    80002d08:	00098513          	mv	a0,s3
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	0a4080e7          	jalr	164(ra) # 80002db0 <_Z6insertPP10MemoryDescS0_12MemoryStatus>
            temp->size = size;
    80002d14:	0124b823          	sd	s2,16(s1)
            insert(&allocated,temp,ALLOCATED);
    80002d18:	00000613          	li	a2,0
    80002d1c:	00048593          	mv	a1,s1
    80002d20:	00006517          	auipc	a0,0x6
    80002d24:	bf850513          	addi	a0,a0,-1032 # 80008918 <_ZN15MemoryAllocator9allocatedE>
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	088080e7          	jalr	136(ra) # 80002db0 <_Z6insertPP10MemoryDescS0_12MemoryStatus>
            return (void*)((char*)(temp) + MEM_BLOCK_SIZE);
    80002d30:	04048493          	addi	s1,s1,64
    80002d34:	f65ff06f          	j	80002c98 <_ZN15MemoryAllocator5allocEm+0x70>

0000000080002d38 <_ZN15MemoryAllocator5freeeEPv>:

int MemoryAllocator::freee(void* toFree) {
    if (toFree == nullptr)
    80002d38:	06050463          	beqz	a0,80002da0 <_ZN15MemoryAllocator5freeeEPv+0x68>
int MemoryAllocator::freee(void* toFree) {
    80002d3c:	fe010113          	addi	sp,sp,-32
    80002d40:	00113c23          	sd	ra,24(sp)
    80002d44:	00813823          	sd	s0,16(sp)
    80002d48:	00913423          	sd	s1,8(sp)
    80002d4c:	02010413          	addi	s0,sp,32
        return -3;
    MemoryDesc* toFreeDesc = (MemoryDesc*)((char*)toFree - MEM_BLOCK_SIZE);
    80002d50:	fc050493          	addi	s1,a0,-64

    if (toFreeDesc->status!=ALLOCATED)
    80002d54:	fd852783          	lw	a5,-40(a0)
    80002d58:	04079863          	bnez	a5,80002da8 <_ZN15MemoryAllocator5freeeEPv+0x70>
        return -3;

    deletee(&allocated,toFreeDesc);
    80002d5c:	00048593          	mv	a1,s1
    80002d60:	00006517          	auipc	a0,0x6
    80002d64:	bb850513          	addi	a0,a0,-1096 # 80008918 <_ZN15MemoryAllocator9allocatedE>
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	0b0080e7          	jalr	176(ra) # 80002e18 <_Z7deleteePP10MemoryDescS0_>
    insert(&free,toFreeDesc,FREE);
    80002d70:	00100613          	li	a2,1
    80002d74:	00048593          	mv	a1,s1
    80002d78:	00006517          	auipc	a0,0x6
    80002d7c:	b9850513          	addi	a0,a0,-1128 # 80008910 <_ZN15MemoryAllocator4freeE>
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	030080e7          	jalr	48(ra) # 80002db0 <_Z6insertPP10MemoryDescS0_12MemoryStatus>
    //squash(toFreeDesc);

    return 0;
    80002d88:	00000513          	li	a0,0
    80002d8c:	01813083          	ld	ra,24(sp)
    80002d90:	01013403          	ld	s0,16(sp)
    80002d94:	00813483          	ld	s1,8(sp)
    80002d98:	02010113          	addi	sp,sp,32
    80002d9c:	00008067          	ret
        return -3;
    80002da0:	ffd00513          	li	a0,-3
    80002da4:	00008067          	ret
        return -3;
    80002da8:	ffd00513          	li	a0,-3
    80002dac:	fe1ff06f          	j	80002d8c <_ZN15MemoryAllocator5freeeEPv+0x54>

0000000080002db0 <_Z6insertPP10MemoryDescS0_12MemoryStatus>:
#include "../h/MemoryDesc.hpp"

void insert(MemoryDesc** head, MemoryDesc* toInsert, MemoryStatus status){
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00813423          	sd	s0,8(sp)
    80002db8:	01010413          	addi	s0,sp,16
    if(toInsert == nullptr) return;
    80002dbc:	02058063          	beqz	a1,80002ddc <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x2c>

    toInsert->status = status;
    80002dc0:	00c5ac23          	sw	a2,24(a1)

    if (*head == nullptr){
    80002dc4:	00053783          	ld	a5,0(a0)
    80002dc8:	02078063          	beqz	a5,80002de8 <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x38>
        *head = toInsert;
    }
    else if(toInsert < *head){
    80002dcc:	02f5f263          	bgeu	a1,a5,80002df0 <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x40>
        toInsert->next = *head;
    80002dd0:	00f5b023          	sd	a5,0(a1)
        (*head)->prev = toInsert;
    80002dd4:	00b7b423          	sd	a1,8(a5)
        *head = toInsert;
    80002dd8:	00b53023          	sd	a1,0(a0)
            toInsert->next->prev = toInsert;

        temp->next = toInsert;
        toInsert->prev = temp;
    }
}
    80002ddc:	00813403          	ld	s0,8(sp)
    80002de0:	01010113          	addi	sp,sp,16
    80002de4:	00008067          	ret
        *head = toInsert;
    80002de8:	00b53023          	sd	a1,0(a0)
    80002dec:	ff1ff06f          	j	80002ddc <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x2c>
        while (temp->next != nullptr &&
    80002df0:	00078713          	mv	a4,a5
    80002df4:	0007b783          	ld	a5,0(a5)
    80002df8:	00078463          	beqz	a5,80002e00 <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x50>
    80002dfc:	feb7eae3          	bltu	a5,a1,80002df0 <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x40>
        toInsert->next = temp->next;
    80002e00:	00f5b023          	sd	a5,0(a1)
        if (temp->next != nullptr)
    80002e04:	00078463          	beqz	a5,80002e0c <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x5c>
            toInsert->next->prev = toInsert;
    80002e08:	00b7b423          	sd	a1,8(a5)
        temp->next = toInsert;
    80002e0c:	00b73023          	sd	a1,0(a4)
        toInsert->prev = temp;
    80002e10:	00e5b423          	sd	a4,8(a1)
    80002e14:	fc9ff06f          	j	80002ddc <_Z6insertPP10MemoryDescS0_12MemoryStatus+0x2c>

0000000080002e18 <_Z7deleteePP10MemoryDescS0_>:

void deletee(MemoryDesc **head, MemoryDesc *toDelete){
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00813423          	sd	s0,8(sp)
    80002e20:	01010413          	addi	s0,sp,16
    if(toDelete == nullptr) return;
    80002e24:	02058863          	beqz	a1,80002e54 <_Z7deleteePP10MemoryDescS0_+0x3c>

    if (*head == nullptr){
    80002e28:	00053783          	ld	a5,0(a0)
    80002e2c:	02078463          	beqz	a5,80002e54 <_Z7deleteePP10MemoryDescS0_+0x3c>
        return;
    }

    if(*head == toDelete) {
    80002e30:	02b78863          	beq	a5,a1,80002e60 <_Z7deleteePP10MemoryDescS0_+0x48>
            (*head)->prev = nullptr;
        }
        return;
    }

    toDelete->prev->next = toDelete->next;
    80002e34:	0085b703          	ld	a4,8(a1)
    80002e38:	0005b783          	ld	a5,0(a1)
    80002e3c:	00f73023          	sd	a5,0(a4)
    if(toDelete->next != nullptr)
    80002e40:	00078663          	beqz	a5,80002e4c <_Z7deleteePP10MemoryDescS0_+0x34>
        toDelete->next->prev = toDelete->prev;
    80002e44:	0085b703          	ld	a4,8(a1)
    80002e48:	00e7b423          	sd	a4,8(a5)

    toDelete->prev = nullptr;
    80002e4c:	0005b423          	sd	zero,8(a1)
    toDelete->next = nullptr;
    80002e50:	0005b023          	sd	zero,0(a1)

}
    80002e54:	00813403          	ld	s0,8(sp)
    80002e58:	01010113          	addi	sp,sp,16
    80002e5c:	00008067          	ret
        *head = (*head)->next;
    80002e60:	0007b783          	ld	a5,0(a5)
    80002e64:	00f53023          	sd	a5,0(a0)
        toDelete->prev = nullptr;
    80002e68:	0005b423          	sd	zero,8(a1)
        toDelete->next = nullptr;
    80002e6c:	0005b023          	sd	zero,0(a1)
        if (*head != nullptr) {
    80002e70:	00053783          	ld	a5,0(a0)
    80002e74:	fe0780e3          	beqz	a5,80002e54 <_Z7deleteePP10MemoryDescS0_+0x3c>
            (*head)->prev = nullptr;
    80002e78:	0007b423          	sd	zero,8(a5)
        return;
    80002e7c:	fd9ff06f          	j	80002e54 <_Z7deleteePP10MemoryDescS0_+0x3c>

0000000080002e80 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002e80:	fe010113          	addi	sp,sp,-32
    80002e84:	00113c23          	sd	ra,24(sp)
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	02010413          	addi	s0,sp,32
    80002e94:	00050493          	mv	s1,a0
    LOCK();
    80002e98:	00100613          	li	a2,1
    80002e9c:	00000593          	li	a1,0
    80002ea0:	00006517          	auipc	a0,0x6
    80002ea4:	a8050513          	addi	a0,a0,-1408 # 80008920 <lockPrint>
    80002ea8:	ffffe097          	auipc	ra,0xffffe
    80002eac:	39c080e7          	jalr	924(ra) # 80001244 <copy_and_swap>
    80002eb0:	fe0514e3          	bnez	a0,80002e98 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002eb4:	0004c503          	lbu	a0,0(s1)
    80002eb8:	00050a63          	beqz	a0,80002ecc <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002ebc:	ffffe097          	auipc	ra,0xffffe
    80002ec0:	7c0080e7          	jalr	1984(ra) # 8000167c <_Z4putcc>
        string++;
    80002ec4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ec8:	fedff06f          	j	80002eb4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002ecc:	00000613          	li	a2,0
    80002ed0:	00100593          	li	a1,1
    80002ed4:	00006517          	auipc	a0,0x6
    80002ed8:	a4c50513          	addi	a0,a0,-1460 # 80008920 <lockPrint>
    80002edc:	ffffe097          	auipc	ra,0xffffe
    80002ee0:	368080e7          	jalr	872(ra) # 80001244 <copy_and_swap>
    80002ee4:	fe0514e3          	bnez	a0,80002ecc <_Z11printStringPKc+0x4c>
}
    80002ee8:	01813083          	ld	ra,24(sp)
    80002eec:	01013403          	ld	s0,16(sp)
    80002ef0:	00813483          	ld	s1,8(sp)
    80002ef4:	02010113          	addi	sp,sp,32
    80002ef8:	00008067          	ret

0000000080002efc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002efc:	fd010113          	addi	sp,sp,-48
    80002f00:	02113423          	sd	ra,40(sp)
    80002f04:	02813023          	sd	s0,32(sp)
    80002f08:	00913c23          	sd	s1,24(sp)
    80002f0c:	01213823          	sd	s2,16(sp)
    80002f10:	01313423          	sd	s3,8(sp)
    80002f14:	01413023          	sd	s4,0(sp)
    80002f18:	03010413          	addi	s0,sp,48
    80002f1c:	00050993          	mv	s3,a0
    80002f20:	00058a13          	mv	s4,a1
    LOCK();
    80002f24:	00100613          	li	a2,1
    80002f28:	00000593          	li	a1,0
    80002f2c:	00006517          	auipc	a0,0x6
    80002f30:	9f450513          	addi	a0,a0,-1548 # 80008920 <lockPrint>
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	310080e7          	jalr	784(ra) # 80001244 <copy_and_swap>
    80002f3c:	fe0514e3          	bnez	a0,80002f24 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f40:	00000913          	li	s2,0
    80002f44:	00090493          	mv	s1,s2
    80002f48:	0019091b          	addiw	s2,s2,1
    80002f4c:	03495a63          	bge	s2,s4,80002f80 <_Z9getStringPci+0x84>
        cc = getc();
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	704080e7          	jalr	1796(ra) # 80001654 <_Z4getcv>
        if(cc < 1)
    80002f58:	02050463          	beqz	a0,80002f80 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002f5c:	009984b3          	add	s1,s3,s1
    80002f60:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002f64:	00a00793          	li	a5,10
    80002f68:	00f50a63          	beq	a0,a5,80002f7c <_Z9getStringPci+0x80>
    80002f6c:	00d00793          	li	a5,13
    80002f70:	fcf51ae3          	bne	a0,a5,80002f44 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002f74:	00090493          	mv	s1,s2
    80002f78:	0080006f          	j	80002f80 <_Z9getStringPci+0x84>
    80002f7c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002f80:	009984b3          	add	s1,s3,s1
    80002f84:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002f88:	00000613          	li	a2,0
    80002f8c:	00100593          	li	a1,1
    80002f90:	00006517          	auipc	a0,0x6
    80002f94:	99050513          	addi	a0,a0,-1648 # 80008920 <lockPrint>
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	2ac080e7          	jalr	684(ra) # 80001244 <copy_and_swap>
    80002fa0:	fe0514e3          	bnez	a0,80002f88 <_Z9getStringPci+0x8c>
    return buf;
}
    80002fa4:	00098513          	mv	a0,s3
    80002fa8:	02813083          	ld	ra,40(sp)
    80002fac:	02013403          	ld	s0,32(sp)
    80002fb0:	01813483          	ld	s1,24(sp)
    80002fb4:	01013903          	ld	s2,16(sp)
    80002fb8:	00813983          	ld	s3,8(sp)
    80002fbc:	00013a03          	ld	s4,0(sp)
    80002fc0:	03010113          	addi	sp,sp,48
    80002fc4:	00008067          	ret

0000000080002fc8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00813423          	sd	s0,8(sp)
    80002fd0:	01010413          	addi	s0,sp,16
    80002fd4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002fd8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002fdc:	0006c603          	lbu	a2,0(a3)
    80002fe0:	fd06071b          	addiw	a4,a2,-48
    80002fe4:	0ff77713          	andi	a4,a4,255
    80002fe8:	00900793          	li	a5,9
    80002fec:	02e7e063          	bltu	a5,a4,8000300c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002ff0:	0025179b          	slliw	a5,a0,0x2
    80002ff4:	00a787bb          	addw	a5,a5,a0
    80002ff8:	0017979b          	slliw	a5,a5,0x1
    80002ffc:	00168693          	addi	a3,a3,1
    80003000:	00c787bb          	addw	a5,a5,a2
    80003004:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003008:	fd5ff06f          	j	80002fdc <_Z11stringToIntPKc+0x14>
    return n;
}
    8000300c:	00813403          	ld	s0,8(sp)
    80003010:	01010113          	addi	sp,sp,16
    80003014:	00008067          	ret

0000000080003018 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003018:	fc010113          	addi	sp,sp,-64
    8000301c:	02113c23          	sd	ra,56(sp)
    80003020:	02813823          	sd	s0,48(sp)
    80003024:	02913423          	sd	s1,40(sp)
    80003028:	03213023          	sd	s2,32(sp)
    8000302c:	01313c23          	sd	s3,24(sp)
    80003030:	04010413          	addi	s0,sp,64
    80003034:	00050493          	mv	s1,a0
    80003038:	00058913          	mv	s2,a1
    8000303c:	00060993          	mv	s3,a2
    LOCK();
    80003040:	00100613          	li	a2,1
    80003044:	00000593          	li	a1,0
    80003048:	00006517          	auipc	a0,0x6
    8000304c:	8d850513          	addi	a0,a0,-1832 # 80008920 <lockPrint>
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	1f4080e7          	jalr	500(ra) # 80001244 <copy_and_swap>
    80003058:	fe0514e3          	bnez	a0,80003040 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000305c:	00098463          	beqz	s3,80003064 <_Z8printIntiii+0x4c>
    80003060:	0804c463          	bltz	s1,800030e8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003064:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003068:	00000593          	li	a1,0
    }

    i = 0;
    8000306c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003070:	0009079b          	sext.w	a5,s2
    80003074:	0325773b          	remuw	a4,a0,s2
    80003078:	00048613          	mv	a2,s1
    8000307c:	0014849b          	addiw	s1,s1,1
    80003080:	02071693          	slli	a3,a4,0x20
    80003084:	0206d693          	srli	a3,a3,0x20
    80003088:	00005717          	auipc	a4,0x5
    8000308c:	72870713          	addi	a4,a4,1832 # 800087b0 <digits>
    80003090:	00d70733          	add	a4,a4,a3
    80003094:	00074683          	lbu	a3,0(a4)
    80003098:	fd040713          	addi	a4,s0,-48
    8000309c:	00c70733          	add	a4,a4,a2
    800030a0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800030a4:	0005071b          	sext.w	a4,a0
    800030a8:	0325553b          	divuw	a0,a0,s2
    800030ac:	fcf772e3          	bgeu	a4,a5,80003070 <_Z8printIntiii+0x58>
    if(neg)
    800030b0:	00058c63          	beqz	a1,800030c8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800030b4:	fd040793          	addi	a5,s0,-48
    800030b8:	009784b3          	add	s1,a5,s1
    800030bc:	02d00793          	li	a5,45
    800030c0:	fef48823          	sb	a5,-16(s1)
    800030c4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800030c8:	fff4849b          	addiw	s1,s1,-1
    800030cc:	0204c463          	bltz	s1,800030f4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800030d0:	fd040793          	addi	a5,s0,-48
    800030d4:	009787b3          	add	a5,a5,s1
    800030d8:	ff07c503          	lbu	a0,-16(a5)
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	5a0080e7          	jalr	1440(ra) # 8000167c <_Z4putcc>
    800030e4:	fe5ff06f          	j	800030c8 <_Z8printIntiii+0xb0>
        x = -xx;
    800030e8:	4090053b          	negw	a0,s1
        neg = 1;
    800030ec:	00100593          	li	a1,1
        x = -xx;
    800030f0:	f7dff06f          	j	8000306c <_Z8printIntiii+0x54>

    UNLOCK();
    800030f4:	00000613          	li	a2,0
    800030f8:	00100593          	li	a1,1
    800030fc:	00006517          	auipc	a0,0x6
    80003100:	82450513          	addi	a0,a0,-2012 # 80008920 <lockPrint>
    80003104:	ffffe097          	auipc	ra,0xffffe
    80003108:	140080e7          	jalr	320(ra) # 80001244 <copy_and_swap>
    8000310c:	fe0514e3          	bnez	a0,800030f4 <_Z8printIntiii+0xdc>
    80003110:	03813083          	ld	ra,56(sp)
    80003114:	03013403          	ld	s0,48(sp)
    80003118:	02813483          	ld	s1,40(sp)
    8000311c:	02013903          	ld	s2,32(sp)
    80003120:	01813983          	ld	s3,24(sp)
    80003124:	04010113          	addi	sp,sp,64
    80003128:	00008067          	ret

000000008000312c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000312c:	fd010113          	addi	sp,sp,-48
    80003130:	02113423          	sd	ra,40(sp)
    80003134:	02813023          	sd	s0,32(sp)
    80003138:	00913c23          	sd	s1,24(sp)
    8000313c:	01213823          	sd	s2,16(sp)
    80003140:	01313423          	sd	s3,8(sp)
    80003144:	03010413          	addi	s0,sp,48
    80003148:	00050493          	mv	s1,a0
    8000314c:	00058913          	mv	s2,a1
    80003150:	0015879b          	addiw	a5,a1,1
    80003154:	0007851b          	sext.w	a0,a5
    80003158:	00f4a023          	sw	a5,0(s1)
    8000315c:	0004a823          	sw	zero,16(s1)
    80003160:	0004aa23          	sw	zero,20(s1)
    itemAvailable = new Semaphore(0);
    80003164:	00251513          	slli	a0,a0,0x2
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	380080e7          	jalr	896(ra) # 800014e8 <_Z9mem_allocm>
    80003170:	00a4b423          	sd	a0,8(s1)
    spaceAvailable = new Semaphore(_cap);
    80003174:	01000513          	li	a0,16
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	094080e7          	jalr	148(ra) # 8000220c <_Znwm>
    80003180:	00050993          	mv	s3,a0
    80003184:	00000593          	li	a1,0
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	594080e7          	jalr	1428(ra) # 8000171c <_ZN9SemaphoreC1Ej>
    80003190:	0334b023          	sd	s3,32(s1)
    mutexHead = new Semaphore(1);
    80003194:	01000513          	li	a0,16
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	074080e7          	jalr	116(ra) # 8000220c <_Znwm>
    800031a0:	00050993          	mv	s3,a0
    800031a4:	00090593          	mv	a1,s2
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	574080e7          	jalr	1396(ra) # 8000171c <_ZN9SemaphoreC1Ej>
    800031b0:	0134bc23          	sd	s3,24(s1)
    mutexTail = new Semaphore(1);
    800031b4:	01000513          	li	a0,16
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	054080e7          	jalr	84(ra) # 8000220c <_Znwm>
    800031c0:	00050913          	mv	s2,a0
    800031c4:	00100593          	li	a1,1
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	554080e7          	jalr	1364(ra) # 8000171c <_ZN9SemaphoreC1Ej>
    800031d0:	0324b423          	sd	s2,40(s1)
}
    800031d4:	01000513          	li	a0,16
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	034080e7          	jalr	52(ra) # 8000220c <_Znwm>
    800031e0:	00050913          	mv	s2,a0
    800031e4:	00100593          	li	a1,1
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	534080e7          	jalr	1332(ra) # 8000171c <_ZN9SemaphoreC1Ej>
    800031f0:	0324b823          	sd	s2,48(s1)

    800031f4:	02813083          	ld	ra,40(sp)
    800031f8:	02013403          	ld	s0,32(sp)
    800031fc:	01813483          	ld	s1,24(sp)
    80003200:	01013903          	ld	s2,16(sp)
    80003204:	00813983          	ld	s3,8(sp)
    80003208:	03010113          	addi	sp,sp,48
    8000320c:	00008067          	ret
    80003210:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003214:	00098513          	mv	a0,s3
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	044080e7          	jalr	68(ra) # 8000225c <_ZdlPv>
    80003220:	00048513          	mv	a0,s1
    80003224:	00006097          	auipc	ra,0x6
    80003228:	7e4080e7          	jalr	2020(ra) # 80009a08 <_Unwind_Resume>
    8000322c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003230:	00098513          	mv	a0,s3
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	028080e7          	jalr	40(ra) # 8000225c <_ZdlPv>
    8000323c:	00048513          	mv	a0,s1
    80003240:	00006097          	auipc	ra,0x6
    80003244:	7c8080e7          	jalr	1992(ra) # 80009a08 <_Unwind_Resume>
    80003248:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000324c:	00090513          	mv	a0,s2
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	00c080e7          	jalr	12(ra) # 8000225c <_ZdlPv>
    80003258:	00048513          	mv	a0,s1
    8000325c:	00006097          	auipc	ra,0x6
    80003260:	7ac080e7          	jalr	1964(ra) # 80009a08 <_Unwind_Resume>
    80003264:	00050493          	mv	s1,a0
}
    80003268:	00090513          	mv	a0,s2
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	ff0080e7          	jalr	-16(ra) # 8000225c <_ZdlPv>
    80003274:	00048513          	mv	a0,s1
    80003278:	00006097          	auipc	ra,0x6
    8000327c:	790080e7          	jalr	1936(ra) # 80009a08 <_Unwind_Resume>

0000000080003280 <_ZN9BufferCPP3putEi>:
    delete mutexHead;

}

void BufferCPP::put(int val) {
    spaceAvailable->wait();
    80003280:	fe010113          	addi	sp,sp,-32
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	00813823          	sd	s0,16(sp)
    8000328c:	00913423          	sd	s1,8(sp)
    80003290:	01213023          	sd	s2,0(sp)
    80003294:	02010413          	addi	s0,sp,32
    80003298:	00050493          	mv	s1,a0
    8000329c:	00058913          	mv	s2,a1

    800032a0:	01853503          	ld	a0,24(a0)
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	4b0080e7          	jalr	1200(ra) # 80001754 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    buffer[tail] = val;
    800032ac:	0304b503          	ld	a0,48(s1)
    800032b0:	ffffe097          	auipc	ra,0xffffe
    800032b4:	4a4080e7          	jalr	1188(ra) # 80001754 <_ZN9Semaphore4waitEv>
    tail = (tail + 1) % cap;
    800032b8:	0084b783          	ld	a5,8(s1)
    800032bc:	0144a703          	lw	a4,20(s1)
    800032c0:	00271713          	slli	a4,a4,0x2
    800032c4:	00e787b3          	add	a5,a5,a4
    800032c8:	0127a023          	sw	s2,0(a5)
    mutexTail->signal();
    800032cc:	0144a783          	lw	a5,20(s1)
    800032d0:	0017879b          	addiw	a5,a5,1
    800032d4:	0004a703          	lw	a4,0(s1)
    800032d8:	02e7e7bb          	remw	a5,a5,a4
    800032dc:	00f4aa23          	sw	a5,20(s1)

    800032e0:	0304b503          	ld	a0,48(s1)
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	49c080e7          	jalr	1180(ra) # 80001780 <_ZN9Semaphore6signalEv>
    itemAvailable->signal();

    800032ec:	0204b503          	ld	a0,32(s1)
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	490080e7          	jalr	1168(ra) # 80001780 <_ZN9Semaphore6signalEv>
}

    800032f8:	01813083          	ld	ra,24(sp)
    800032fc:	01013403          	ld	s0,16(sp)
    80003300:	00813483          	ld	s1,8(sp)
    80003304:	00013903          	ld	s2,0(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret

0000000080003310 <_ZN9BufferCPP3getEv>:
int BufferCPP::get() {
    itemAvailable->wait();
    80003310:	fe010113          	addi	sp,sp,-32
    80003314:	00113c23          	sd	ra,24(sp)
    80003318:	00813823          	sd	s0,16(sp)
    8000331c:	00913423          	sd	s1,8(sp)
    80003320:	01213023          	sd	s2,0(sp)
    80003324:	02010413          	addi	s0,sp,32
    80003328:	00050493          	mv	s1,a0

    8000332c:	02053503          	ld	a0,32(a0)
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	424080e7          	jalr	1060(ra) # 80001754 <_ZN9Semaphore4waitEv>
    mutexHead->wait();

    80003338:	0284b503          	ld	a0,40(s1)
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	418080e7          	jalr	1048(ra) # 80001754 <_ZN9Semaphore4waitEv>
    int ret = buffer[head];
    head = (head + 1) % cap;
    80003344:	0084b703          	ld	a4,8(s1)
    80003348:	0104a783          	lw	a5,16(s1)
    8000334c:	00279693          	slli	a3,a5,0x2
    80003350:	00d70733          	add	a4,a4,a3
    80003354:	00072903          	lw	s2,0(a4)
    mutexHead->signal();
    80003358:	0017879b          	addiw	a5,a5,1
    8000335c:	0004a703          	lw	a4,0(s1)
    80003360:	02e7e7bb          	remw	a5,a5,a4
    80003364:	00f4a823          	sw	a5,16(s1)

    80003368:	0284b503          	ld	a0,40(s1)
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	414080e7          	jalr	1044(ra) # 80001780 <_ZN9Semaphore6signalEv>
    spaceAvailable->signal();

    80003374:	0184b503          	ld	a0,24(s1)
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	408080e7          	jalr	1032(ra) # 80001780 <_ZN9Semaphore6signalEv>
    return ret;
}

    80003380:	00090513          	mv	a0,s2
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	00013903          	ld	s2,0(sp)
    80003394:	02010113          	addi	sp,sp,32
    80003398:	00008067          	ret

000000008000339c <_ZN9BufferCPP6getCntEv>:
int BufferCPP::getCnt() {
    int ret;
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00113c23          	sd	ra,24(sp)
    800033a4:	00813823          	sd	s0,16(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	01213023          	sd	s2,0(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	00050493          	mv	s1,a0

    mutexHead->wait();
    mutexTail->wait();
    800033b8:	02853503          	ld	a0,40(a0)
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	398080e7          	jalr	920(ra) # 80001754 <_ZN9Semaphore4waitEv>

    800033c4:	0304b503          	ld	a0,48(s1)
    800033c8:	ffffe097          	auipc	ra,0xffffe
    800033cc:	38c080e7          	jalr	908(ra) # 80001754 <_ZN9Semaphore4waitEv>
    if (tail >= head) {
        ret = tail - head;
    800033d0:	0144a783          	lw	a5,20(s1)
    800033d4:	0104a903          	lw	s2,16(s1)
    800033d8:	0327ce63          	blt	a5,s2,80003414 <_ZN9BufferCPP6getCntEv+0x78>
    } else {
    800033dc:	4127893b          	subw	s2,a5,s2
        ret = cap - head + tail;
    }

    mutexTail->signal();
    mutexHead->signal();
    800033e0:	0304b503          	ld	a0,48(s1)
    800033e4:	ffffe097          	auipc	ra,0xffffe
    800033e8:	39c080e7          	jalr	924(ra) # 80001780 <_ZN9Semaphore6signalEv>

    800033ec:	0284b503          	ld	a0,40(s1)
    800033f0:	ffffe097          	auipc	ra,0xffffe
    800033f4:	390080e7          	jalr	912(ra) # 80001780 <_ZN9Semaphore6signalEv>
    return ret;
}
    800033f8:	00090513          	mv	a0,s2
    800033fc:	01813083          	ld	ra,24(sp)
    80003400:	01013403          	ld	s0,16(sp)
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	00013903          	ld	s2,0(sp)
    8000340c:	02010113          	addi	sp,sp,32
    80003410:	00008067          	ret
    }
    80003414:	0004a703          	lw	a4,0(s1)
    80003418:	4127093b          	subw	s2,a4,s2
    8000341c:	00f9093b          	addw	s2,s2,a5
    80003420:	fc1ff06f          	j	800033e0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003424 <_ZN9BufferCPPD1Ev>:
    Console::putc('\n');
    80003424:	fe010113          	addi	sp,sp,-32
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	00813823          	sd	s0,16(sp)
    80003430:	00913423          	sd	s1,8(sp)
    80003434:	02010413          	addi	s0,sp,32
    80003438:	00050493          	mv	s1,a0
    printString("Buffer deleted!\n");
    8000343c:	00a00513          	li	a0,10
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	510080e7          	jalr	1296(ra) # 80001950 <_ZN7Console4putcEc>
    while (getCnt()) {
    80003448:	00004517          	auipc	a0,0x4
    8000344c:	c1050513          	addi	a0,a0,-1008 # 80007058 <CONSOLE_STATUS+0x48>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	a30080e7          	jalr	-1488(ra) # 80002e80 <_Z11printStringPKc>
        char ch = buffer[head];
    80003458:	00048513          	mv	a0,s1
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	f40080e7          	jalr	-192(ra) # 8000339c <_ZN9BufferCPP6getCntEv>
    80003464:	02050c63          	beqz	a0,8000349c <_ZN9BufferCPPD1Ev+0x78>
        Console::putc(ch);
    80003468:	0084b783          	ld	a5,8(s1)
    8000346c:	0104a703          	lw	a4,16(s1)
    80003470:	00271713          	slli	a4,a4,0x2
    80003474:	00e787b3          	add	a5,a5,a4
        head = (head + 1) % cap;
    80003478:	0007c503          	lbu	a0,0(a5)
    8000347c:	ffffe097          	auipc	ra,0xffffe
    80003480:	4d4080e7          	jalr	1236(ra) # 80001950 <_ZN7Console4putcEc>
    }
    80003484:	0104a783          	lw	a5,16(s1)
    80003488:	0017879b          	addiw	a5,a5,1
    8000348c:	0004a703          	lw	a4,0(s1)
    80003490:	02e7e7bb          	remw	a5,a5,a4
    80003494:	00f4a823          	sw	a5,16(s1)
        char ch = buffer[head];
    80003498:	fc1ff06f          	j	80003458 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('\n');
    8000349c:	02100513          	li	a0,33
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	4b0080e7          	jalr	1200(ra) # 80001950 <_ZN7Console4putcEc>

    800034a8:	00a00513          	li	a0,10
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	4a4080e7          	jalr	1188(ra) # 80001950 <_ZN7Console4putcEc>
    delete itemAvailable;
    800034b4:	0084b503          	ld	a0,8(s1)
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	158080e7          	jalr	344(ra) # 80001610 <_Z8mem_freePv>
    delete spaceAvailable;
    800034c0:	0204b503          	ld	a0,32(s1)
    800034c4:	00050863          	beqz	a0,800034d4 <_ZN9BufferCPPD1Ev+0xb0>
    800034c8:	00053783          	ld	a5,0(a0)
    800034cc:	0087b783          	ld	a5,8(a5)
    800034d0:	000780e7          	jalr	a5
    delete mutexTail;
    800034d4:	0184b503          	ld	a0,24(s1)
    800034d8:	00050863          	beqz	a0,800034e8 <_ZN9BufferCPPD1Ev+0xc4>
    800034dc:	00053783          	ld	a5,0(a0)
    800034e0:	0087b783          	ld	a5,8(a5)
    800034e4:	000780e7          	jalr	a5
    delete mutexHead;
    800034e8:	0304b503          	ld	a0,48(s1)
    800034ec:	00050863          	beqz	a0,800034fc <_ZN9BufferCPPD1Ev+0xd8>
    800034f0:	00053783          	ld	a5,0(a0)
    800034f4:	0087b783          	ld	a5,8(a5)
    800034f8:	000780e7          	jalr	a5

    800034fc:	0284b503          	ld	a0,40(s1)
    80003500:	00050863          	beqz	a0,80003510 <_ZN9BufferCPPD1Ev+0xec>
    80003504:	00053783          	ld	a5,0(a0)
    80003508:	0087b783          	ld	a5,8(a5)
    8000350c:	000780e7          	jalr	a5

    80003510:	01813083          	ld	ra,24(sp)
    80003514:	01013403          	ld	s0,16(sp)
    80003518:	00813483          	ld	s1,8(sp)
    8000351c:	02010113          	addi	sp,sp,32
    80003520:	00008067          	ret

0000000080003524 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80003524:	f8010113          	addi	sp,sp,-128
    80003528:	06113c23          	sd	ra,120(sp)
    8000352c:	06813823          	sd	s0,112(sp)
    80003530:	06913423          	sd	s1,104(sp)
    80003534:	07213023          	sd	s2,96(sp)
    80003538:	05313c23          	sd	s3,88(sp)
    8000353c:	05413823          	sd	s4,80(sp)
    80003540:	05513423          	sd	s5,72(sp)
    80003544:	05613023          	sd	s6,64(sp)
    80003548:	03713c23          	sd	s7,56(sp)
    8000354c:	03813823          	sd	s8,48(sp)
    80003550:	03913423          	sd	s9,40(sp)
    80003554:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80003558:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    8000355c:	00004517          	auipc	a0,0x4
    80003560:	b1450513          	addi	a0,a0,-1260 # 80007070 <CONSOLE_STATUS+0x60>
    80003564:	00000097          	auipc	ra,0x0
    80003568:	91c080e7          	jalr	-1764(ra) # 80002e80 <_Z11printStringPKc>
        getString(input, 30);
    8000356c:	01e00593          	li	a1,30
    80003570:	f8040493          	addi	s1,s0,-128
    80003574:	00048513          	mv	a0,s1
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	984080e7          	jalr	-1660(ra) # 80002efc <_Z9getStringPci>
        threadNum = stringToInt(input);
    80003580:	00048513          	mv	a0,s1
    80003584:	00000097          	auipc	ra,0x0
    80003588:	a44080e7          	jalr	-1468(ra) # 80002fc8 <_Z11stringToIntPKc>
    8000358c:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80003590:	00004517          	auipc	a0,0x4
    80003594:	b0050513          	addi	a0,a0,-1280 # 80007090 <CONSOLE_STATUS+0x80>
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	8e8080e7          	jalr	-1816(ra) # 80002e80 <_Z11printStringPKc>
        getString(input, 30);
    800035a0:	01e00593          	li	a1,30
    800035a4:	00048513          	mv	a0,s1
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	954080e7          	jalr	-1708(ra) # 80002efc <_Z9getStringPci>
        n = stringToInt(input);
    800035b0:	00048513          	mv	a0,s1
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	a14080e7          	jalr	-1516(ra) # 80002fc8 <_Z11stringToIntPKc>
    800035bc:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    800035c0:	00004517          	auipc	a0,0x4
    800035c4:	af050513          	addi	a0,a0,-1296 # 800070b0 <CONSOLE_STATUS+0xa0>
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	8b8080e7          	jalr	-1864(ra) # 80002e80 <_Z11printStringPKc>
    800035d0:	00000613          	li	a2,0
    800035d4:	00a00593          	li	a1,10
    800035d8:	00098513          	mv	a0,s3
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	a3c080e7          	jalr	-1476(ra) # 80003018 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    800035e4:	00004517          	auipc	a0,0x4
    800035e8:	ae450513          	addi	a0,a0,-1308 # 800070c8 <CONSOLE_STATUS+0xb8>
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	894080e7          	jalr	-1900(ra) # 80002e80 <_Z11printStringPKc>
    800035f4:	00000613          	li	a2,0
    800035f8:	00a00593          	li	a1,10
    800035fc:	00048513          	mv	a0,s1
    80003600:	00000097          	auipc	ra,0x0
    80003604:	a18080e7          	jalr	-1512(ra) # 80003018 <_Z8printIntiii>
        printString(".\n");
    80003608:	00004517          	auipc	a0,0x4
    8000360c:	ad850513          	addi	a0,a0,-1320 # 800070e0 <CONSOLE_STATUS+0xd0>
    80003610:	00000097          	auipc	ra,0x0
    80003614:	870080e7          	jalr	-1936(ra) # 80002e80 <_Z11printStringPKc>
        if(threadNum > n) {
    80003618:	0334c463          	blt	s1,s3,80003640 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    8000361c:	03305c63          	blez	s3,80003654 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80003620:	03800513          	li	a0,56
    80003624:	fffff097          	auipc	ra,0xfffff
    80003628:	be8080e7          	jalr	-1048(ra) # 8000220c <_Znwm>
    8000362c:	00050a93          	mv	s5,a0
    80003630:	00048593          	mv	a1,s1
    80003634:	00000097          	auipc	ra,0x0
    80003638:	af8080e7          	jalr	-1288(ra) # 8000312c <_ZN9BufferCPPC1Ei>
    8000363c:	0300006f          	j	8000366c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003640:	00004517          	auipc	a0,0x4
    80003644:	aa850513          	addi	a0,a0,-1368 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	838080e7          	jalr	-1992(ra) # 80002e80 <_Z11printStringPKc>
            return;
    80003650:	0140006f          	j	80003664 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003654:	00004517          	auipc	a0,0x4
    80003658:	ad450513          	addi	a0,a0,-1324 # 80007128 <CONSOLE_STATUS+0x118>
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	824080e7          	jalr	-2012(ra) # 80002e80 <_Z11printStringPKc>
            return;
    80003664:	000c0113          	mv	sp,s8
    80003668:	21c0006f          	j	80003884 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    8000366c:	01000513          	li	a0,16
    80003670:	fffff097          	auipc	ra,0xfffff
    80003674:	b9c080e7          	jalr	-1124(ra) # 8000220c <_Znwm>
    80003678:	00050493          	mv	s1,a0
    8000367c:	00000593          	li	a1,0
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	09c080e7          	jalr	156(ra) # 8000171c <_ZN9SemaphoreC1Ej>
    80003688:	00005717          	auipc	a4,0x5
    8000368c:	2a070713          	addi	a4,a4,672 # 80008928 <_ZN19ConsumerProducerCPP9threadEndE>
    80003690:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80003694:	00399793          	slli	a5,s3,0x3
    80003698:	00f78793          	addi	a5,a5,15
    8000369c:	ff07f793          	andi	a5,a5,-16
    800036a0:	40f10133          	sub	sp,sp,a5
    800036a4:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    800036a8:	0019869b          	addiw	a3,s3,1
    800036ac:	00169793          	slli	a5,a3,0x1
    800036b0:	00d787b3          	add	a5,a5,a3
    800036b4:	00379793          	slli	a5,a5,0x3
    800036b8:	00f78793          	addi	a5,a5,15
    800036bc:	ff07f793          	andi	a5,a5,-16
    800036c0:	40f10133          	sub	sp,sp,a5
    800036c4:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    800036c8:	00199493          	slli	s1,s3,0x1
    800036cc:	013484b3          	add	s1,s1,s3
    800036d0:	00349493          	slli	s1,s1,0x3
    800036d4:	009b04b3          	add	s1,s6,s1
    800036d8:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    800036dc:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    800036e0:	00873783          	ld	a5,8(a4)
    800036e4:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800036e8:	01800513          	li	a0,24
    800036ec:	fffff097          	auipc	ra,0xfffff
    800036f0:	b20080e7          	jalr	-1248(ra) # 8000220c <_Znwm>
    800036f4:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	120080e7          	jalr	288(ra) # 80001818 <_ZN6ThreadC1Ev>
    80003700:	00005797          	auipc	a5,0x5
    80003704:	12878793          	addi	a5,a5,296 # 80008828 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003708:	00fbb023          	sd	a5,0(s7)
    8000370c:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80003710:	000b8513          	mv	a0,s7
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	180080e7          	jalr	384(ra) # 80001894 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    8000371c:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80003720:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80003724:	00005797          	auipc	a5,0x5
    80003728:	20c7b783          	ld	a5,524(a5) # 80008930 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000372c:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003730:	01800513          	li	a0,24
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	ad8080e7          	jalr	-1320(ra) # 8000220c <_Znwm>
    8000373c:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	0d8080e7          	jalr	216(ra) # 80001818 <_ZN6ThreadC1Ev>
    80003748:	00005797          	auipc	a5,0x5
    8000374c:	09078793          	addi	a5,a5,144 # 800087d8 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003750:	00f4b023          	sd	a5,0(s1)
    80003754:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003758:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    8000375c:	00048513          	mv	a0,s1
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	134080e7          	jalr	308(ra) # 80001894 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80003768:	00100913          	li	s2,1
    8000376c:	0300006f          	j	8000379c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003770:	00005797          	auipc	a5,0x5
    80003774:	09078793          	addi	a5,a5,144 # 80008800 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003778:	00fcb023          	sd	a5,0(s9)
    8000377c:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80003780:	00391793          	slli	a5,s2,0x3
    80003784:	00fa07b3          	add	a5,s4,a5
    80003788:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    8000378c:	000c8513          	mv	a0,s9
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	104080e7          	jalr	260(ra) # 80001894 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80003798:	0019091b          	addiw	s2,s2,1
    8000379c:	05395263          	bge	s2,s3,800037e0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    800037a0:	00191493          	slli	s1,s2,0x1
    800037a4:	012484b3          	add	s1,s1,s2
    800037a8:	00349493          	slli	s1,s1,0x3
    800037ac:	009b04b3          	add	s1,s6,s1
    800037b0:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    800037b4:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    800037b8:	00005797          	auipc	a5,0x5
    800037bc:	1787b783          	ld	a5,376(a5) # 80008930 <_ZN19ConsumerProducerCPP10waitForAllE>
    800037c0:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    800037c4:	01800513          	li	a0,24
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	a44080e7          	jalr	-1468(ra) # 8000220c <_Znwm>
    800037d0:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	044080e7          	jalr	68(ra) # 80001818 <_ZN6ThreadC1Ev>
    800037dc:	f95ff06f          	j	80003770 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	0e0080e7          	jalr	224(ra) # 800018c0 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    800037e8:	00000493          	li	s1,0
    800037ec:	0099ce63          	blt	s3,s1,80003808 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    800037f0:	00005517          	auipc	a0,0x5
    800037f4:	14053503          	ld	a0,320(a0) # 80008930 <_ZN19ConsumerProducerCPP10waitForAllE>
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	f5c080e7          	jalr	-164(ra) # 80001754 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80003800:	0014849b          	addiw	s1,s1,1
    80003804:	fe9ff06f          	j	800037ec <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80003808:	00005517          	auipc	a0,0x5
    8000380c:	12853503          	ld	a0,296(a0) # 80008930 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003810:	00050863          	beqz	a0,80003820 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80003814:	00053783          	ld	a5,0(a0)
    80003818:	0087b783          	ld	a5,8(a5)
    8000381c:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80003820:	00000493          	li	s1,0
    80003824:	0080006f          	j	8000382c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80003828:	0014849b          	addiw	s1,s1,1
    8000382c:	0334d263          	bge	s1,s3,80003850 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80003830:	00349793          	slli	a5,s1,0x3
    80003834:	00fa07b3          	add	a5,s4,a5
    80003838:	0007b503          	ld	a0,0(a5)
    8000383c:	fe0506e3          	beqz	a0,80003828 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80003840:	00053783          	ld	a5,0(a0)
    80003844:	0087b783          	ld	a5,8(a5)
    80003848:	000780e7          	jalr	a5
    8000384c:	fddff06f          	j	80003828 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80003850:	000b8a63          	beqz	s7,80003864 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80003854:	000bb783          	ld	a5,0(s7)
    80003858:	0087b783          	ld	a5,8(a5)
    8000385c:	000b8513          	mv	a0,s7
    80003860:	000780e7          	jalr	a5
        delete buffer;
    80003864:	000a8e63          	beqz	s5,80003880 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80003868:	000a8513          	mv	a0,s5
    8000386c:	00000097          	auipc	ra,0x0
    80003870:	bb8080e7          	jalr	-1096(ra) # 80003424 <_ZN9BufferCPPD1Ev>
    80003874:	000a8513          	mv	a0,s5
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	9e4080e7          	jalr	-1564(ra) # 8000225c <_ZdlPv>
    80003880:	000c0113          	mv	sp,s8
    }
    80003884:	f8040113          	addi	sp,s0,-128
    80003888:	07813083          	ld	ra,120(sp)
    8000388c:	07013403          	ld	s0,112(sp)
    80003890:	06813483          	ld	s1,104(sp)
    80003894:	06013903          	ld	s2,96(sp)
    80003898:	05813983          	ld	s3,88(sp)
    8000389c:	05013a03          	ld	s4,80(sp)
    800038a0:	04813a83          	ld	s5,72(sp)
    800038a4:	04013b03          	ld	s6,64(sp)
    800038a8:	03813b83          	ld	s7,56(sp)
    800038ac:	03013c03          	ld	s8,48(sp)
    800038b0:	02813c83          	ld	s9,40(sp)
    800038b4:	08010113          	addi	sp,sp,128
    800038b8:	00008067          	ret
    800038bc:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    800038c0:	000a8513          	mv	a0,s5
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	998080e7          	jalr	-1640(ra) # 8000225c <_ZdlPv>
    800038cc:	00048513          	mv	a0,s1
    800038d0:	00006097          	auipc	ra,0x6
    800038d4:	138080e7          	jalr	312(ra) # 80009a08 <_Unwind_Resume>
    800038d8:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    800038dc:	00048513          	mv	a0,s1
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	97c080e7          	jalr	-1668(ra) # 8000225c <_ZdlPv>
    800038e8:	00090513          	mv	a0,s2
    800038ec:	00006097          	auipc	ra,0x6
    800038f0:	11c080e7          	jalr	284(ra) # 80009a08 <_Unwind_Resume>
    800038f4:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800038f8:	000b8513          	mv	a0,s7
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	960080e7          	jalr	-1696(ra) # 8000225c <_ZdlPv>
    80003904:	00048513          	mv	a0,s1
    80003908:	00006097          	auipc	ra,0x6
    8000390c:	100080e7          	jalr	256(ra) # 80009a08 <_Unwind_Resume>
    80003910:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003914:	00048513          	mv	a0,s1
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	944080e7          	jalr	-1724(ra) # 8000225c <_ZdlPv>
    80003920:	00090513          	mv	a0,s2
    80003924:	00006097          	auipc	ra,0x6
    80003928:	0e4080e7          	jalr	228(ra) # 80009a08 <_Unwind_Resume>
    8000392c:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80003930:	000c8513          	mv	a0,s9
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	928080e7          	jalr	-1752(ra) # 8000225c <_ZdlPv>
    8000393c:	00048513          	mv	a0,s1
    80003940:	00006097          	auipc	ra,0x6
    80003944:	0c8080e7          	jalr	200(ra) # 80009a08 <_Unwind_Resume>

0000000080003948 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80003948:	ff010113          	addi	sp,sp,-16
    8000394c:	00113423          	sd	ra,8(sp)
    80003950:	00813023          	sd	s0,0(sp)
    80003954:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80003958:	00000097          	auipc	ra,0x0
    8000395c:	bcc080e7          	jalr	-1076(ra) # 80003524 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>
    80003960:	00813083          	ld	ra,8(sp)
    80003964:	00013403          	ld	s0,0(sp)
    80003968:	01010113          	addi	sp,sp,16
    8000396c:	00008067          	ret

0000000080003970 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80003970:	fd010113          	addi	sp,sp,-48
    80003974:	02113423          	sd	ra,40(sp)
    80003978:	02813023          	sd	s0,32(sp)
    8000397c:	00913c23          	sd	s1,24(sp)
    80003980:	01213823          	sd	s2,16(sp)
    80003984:	01313423          	sd	s3,8(sp)
    80003988:	03010413          	addi	s0,sp,48
    8000398c:	00050913          	mv	s2,a0
            int i = 0;
    80003990:	00000993          	li	s3,0
    80003994:	0100006f          	j	800039a4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80003998:	00a00513          	li	a0,10
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	fb4080e7          	jalr	-76(ra) # 80001950 <_ZN7Console4putcEc>
            while (!threadEnd) {
    800039a4:	00005797          	auipc	a5,0x5
    800039a8:	f847a783          	lw	a5,-124(a5) # 80008928 <_ZN19ConsumerProducerCPP9threadEndE>
    800039ac:	04079a63          	bnez	a5,80003a00 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    800039b0:	01093783          	ld	a5,16(s2)
    800039b4:	0087b503          	ld	a0,8(a5)
    800039b8:	00000097          	auipc	ra,0x0
    800039bc:	958080e7          	jalr	-1704(ra) # 80003310 <_ZN9BufferCPP3getEv>
                i++;
    800039c0:	0019849b          	addiw	s1,s3,1
    800039c4:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    800039c8:	0ff57513          	andi	a0,a0,255
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	f84080e7          	jalr	-124(ra) # 80001950 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    800039d4:	05000793          	li	a5,80
    800039d8:	02f4e4bb          	remw	s1,s1,a5
    800039dc:	fc0494e3          	bnez	s1,800039a4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    800039e0:	fb9ff06f          	j	80003998 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    800039e4:	01093783          	ld	a5,16(s2)
    800039e8:	0087b503          	ld	a0,8(a5)
    800039ec:	00000097          	auipc	ra,0x0
    800039f0:	924080e7          	jalr	-1756(ra) # 80003310 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800039f4:	0ff57513          	andi	a0,a0,255
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	f58080e7          	jalr	-168(ra) # 80001950 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80003a00:	01093783          	ld	a5,16(s2)
    80003a04:	0087b503          	ld	a0,8(a5)
    80003a08:	00000097          	auipc	ra,0x0
    80003a0c:	994080e7          	jalr	-1644(ra) # 8000339c <_ZN9BufferCPP6getCntEv>
    80003a10:	fca04ae3          	bgtz	a0,800039e4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80003a14:	01093783          	ld	a5,16(s2)
    80003a18:	0107b503          	ld	a0,16(a5)
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	d64080e7          	jalr	-668(ra) # 80001780 <_ZN9Semaphore6signalEv>
        }
    80003a24:	02813083          	ld	ra,40(sp)
    80003a28:	02013403          	ld	s0,32(sp)
    80003a2c:	01813483          	ld	s1,24(sp)
    80003a30:	01013903          	ld	s2,16(sp)
    80003a34:	00813983          	ld	s3,8(sp)
    80003a38:	03010113          	addi	sp,sp,48
    80003a3c:	00008067          	ret

0000000080003a40 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00113423          	sd	ra,8(sp)
    80003a48:	00813023          	sd	s0,0(sp)
    80003a4c:	01010413          	addi	s0,sp,16
    80003a50:	00005797          	auipc	a5,0x5
    80003a54:	dd878793          	addi	a5,a5,-552 # 80008828 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003a58:	00f53023          	sd	a5,0(a0)
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	d50080e7          	jalr	-688(ra) # 800017ac <_ZN6ThreadD1Ev>
    80003a64:	00813083          	ld	ra,8(sp)
    80003a68:	00013403          	ld	s0,0(sp)
    80003a6c:	01010113          	addi	sp,sp,16
    80003a70:	00008067          	ret

0000000080003a74 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80003a74:	fe010113          	addi	sp,sp,-32
    80003a78:	00113c23          	sd	ra,24(sp)
    80003a7c:	00813823          	sd	s0,16(sp)
    80003a80:	00913423          	sd	s1,8(sp)
    80003a84:	02010413          	addi	s0,sp,32
    80003a88:	00050493          	mv	s1,a0
    80003a8c:	00005797          	auipc	a5,0x5
    80003a90:	d9c78793          	addi	a5,a5,-612 # 80008828 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003a94:	00f53023          	sd	a5,0(a0)
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	d14080e7          	jalr	-748(ra) # 800017ac <_ZN6ThreadD1Ev>
    80003aa0:	00048513          	mv	a0,s1
    80003aa4:	ffffe097          	auipc	ra,0xffffe
    80003aa8:	7b8080e7          	jalr	1976(ra) # 8000225c <_ZdlPv>
    80003aac:	01813083          	ld	ra,24(sp)
    80003ab0:	01013403          	ld	s0,16(sp)
    80003ab4:	00813483          	ld	s1,8(sp)
    80003ab8:	02010113          	addi	sp,sp,32
    80003abc:	00008067          	ret

0000000080003ac0 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00113423          	sd	ra,8(sp)
    80003ac8:	00813023          	sd	s0,0(sp)
    80003acc:	01010413          	addi	s0,sp,16
    80003ad0:	00005797          	auipc	a5,0x5
    80003ad4:	d0878793          	addi	a5,a5,-760 # 800087d8 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003ad8:	00f53023          	sd	a5,0(a0)
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	cd0080e7          	jalr	-816(ra) # 800017ac <_ZN6ThreadD1Ev>
    80003ae4:	00813083          	ld	ra,8(sp)
    80003ae8:	00013403          	ld	s0,0(sp)
    80003aec:	01010113          	addi	sp,sp,16
    80003af0:	00008067          	ret

0000000080003af4 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80003af4:	fe010113          	addi	sp,sp,-32
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	00813823          	sd	s0,16(sp)
    80003b00:	00913423          	sd	s1,8(sp)
    80003b04:	02010413          	addi	s0,sp,32
    80003b08:	00050493          	mv	s1,a0
    80003b0c:	00005797          	auipc	a5,0x5
    80003b10:	ccc78793          	addi	a5,a5,-820 # 800087d8 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003b14:	00f53023          	sd	a5,0(a0)
    80003b18:	ffffe097          	auipc	ra,0xffffe
    80003b1c:	c94080e7          	jalr	-876(ra) # 800017ac <_ZN6ThreadD1Ev>
    80003b20:	00048513          	mv	a0,s1
    80003b24:	ffffe097          	auipc	ra,0xffffe
    80003b28:	738080e7          	jalr	1848(ra) # 8000225c <_ZdlPv>
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	00813483          	ld	s1,8(sp)
    80003b38:	02010113          	addi	sp,sp,32
    80003b3c:	00008067          	ret

0000000080003b40 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00113423          	sd	ra,8(sp)
    80003b48:	00813023          	sd	s0,0(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	00005797          	auipc	a5,0x5
    80003b54:	cb078793          	addi	a5,a5,-848 # 80008800 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003b58:	00f53023          	sd	a5,0(a0)
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	c50080e7          	jalr	-944(ra) # 800017ac <_ZN6ThreadD1Ev>
    80003b64:	00813083          	ld	ra,8(sp)
    80003b68:	00013403          	ld	s0,0(sp)
    80003b6c:	01010113          	addi	sp,sp,16
    80003b70:	00008067          	ret

0000000080003b74 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80003b74:	fe010113          	addi	sp,sp,-32
    80003b78:	00113c23          	sd	ra,24(sp)
    80003b7c:	00813823          	sd	s0,16(sp)
    80003b80:	00913423          	sd	s1,8(sp)
    80003b84:	02010413          	addi	s0,sp,32
    80003b88:	00050493          	mv	s1,a0
    80003b8c:	00005797          	auipc	a5,0x5
    80003b90:	c7478793          	addi	a5,a5,-908 # 80008800 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003b94:	00f53023          	sd	a5,0(a0)
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	c14080e7          	jalr	-1004(ra) # 800017ac <_ZN6ThreadD1Ev>
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	6b8080e7          	jalr	1720(ra) # 8000225c <_ZdlPv>
    80003bac:	01813083          	ld	ra,24(sp)
    80003bb0:	01013403          	ld	s0,16(sp)
    80003bb4:	00813483          	ld	s1,8(sp)
    80003bb8:	02010113          	addi	sp,sp,32
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80003bc0:	fe010113          	addi	sp,sp,-32
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00813823          	sd	s0,16(sp)
    80003bcc:	00913423          	sd	s1,8(sp)
    80003bd0:	02010413          	addi	s0,sp,32
    80003bd4:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	a7c080e7          	jalr	-1412(ra) # 80001654 <_Z4getcv>
    80003be0:	0005059b          	sext.w	a1,a0
    80003be4:	01b00793          	li	a5,27
    80003be8:	00f58c63          	beq	a1,a5,80003c00 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80003bec:	0104b783          	ld	a5,16(s1)
    80003bf0:	0087b503          	ld	a0,8(a5)
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	68c080e7          	jalr	1676(ra) # 80003280 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80003bfc:	fddff06f          	j	80003bd8 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80003c00:	00100793          	li	a5,1
    80003c04:	00005717          	auipc	a4,0x5
    80003c08:	d2f72223          	sw	a5,-732(a4) # 80008928 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80003c0c:	0104b783          	ld	a5,16(s1)
    80003c10:	02100593          	li	a1,33
    80003c14:	0087b503          	ld	a0,8(a5)
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	668080e7          	jalr	1640(ra) # 80003280 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80003c20:	0104b783          	ld	a5,16(s1)
    80003c24:	0107b503          	ld	a0,16(a5)
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	b58080e7          	jalr	-1192(ra) # 80001780 <_ZN9Semaphore6signalEv>
        }
    80003c30:	01813083          	ld	ra,24(sp)
    80003c34:	01013403          	ld	s0,16(sp)
    80003c38:	00813483          	ld	s1,8(sp)
    80003c3c:	02010113          	addi	sp,sp,32
    80003c40:	00008067          	ret

0000000080003c44 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80003c44:	fe010113          	addi	sp,sp,-32
    80003c48:	00113c23          	sd	ra,24(sp)
    80003c4c:	00813823          	sd	s0,16(sp)
    80003c50:	00913423          	sd	s1,8(sp)
    80003c54:	01213023          	sd	s2,0(sp)
    80003c58:	02010413          	addi	s0,sp,32
    80003c5c:	00050493          	mv	s1,a0
            int i = 0;
    80003c60:	00000913          	li	s2,0
            while (!threadEnd) {
    80003c64:	00005797          	auipc	a5,0x5
    80003c68:	cc47a783          	lw	a5,-828(a5) # 80008928 <_ZN19ConsumerProducerCPP9threadEndE>
    80003c6c:	04079263          	bnez	a5,80003cb0 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80003c70:	0104b783          	ld	a5,16(s1)
    80003c74:	0007a583          	lw	a1,0(a5)
    80003c78:	0305859b          	addiw	a1,a1,48
    80003c7c:	0087b503          	ld	a0,8(a5)
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	600080e7          	jalr	1536(ra) # 80003280 <_ZN9BufferCPP3putEi>
                i++;
    80003c88:	0019071b          	addiw	a4,s2,1
    80003c8c:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80003c90:	0104b783          	ld	a5,16(s1)
    80003c94:	0007a783          	lw	a5,0(a5)
    80003c98:	00e787bb          	addw	a5,a5,a4
    80003c9c:	00500513          	li	a0,5
    80003ca0:	02a7e53b          	remw	a0,a5,a0
    80003ca4:	ffffe097          	auipc	ra,0xffffe
    80003ca8:	c44080e7          	jalr	-956(ra) # 800018e8 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80003cac:	fb9ff06f          	j	80003c64 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80003cb0:	0104b783          	ld	a5,16(s1)
    80003cb4:	0107b503          	ld	a0,16(a5)
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	ac8080e7          	jalr	-1336(ra) # 80001780 <_ZN9Semaphore6signalEv>
        }
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	01013403          	ld	s0,16(sp)
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	00013903          	ld	s2,0(sp)
    80003cd0:	02010113          	addi	sp,sp,32
    80003cd4:	00008067          	ret

0000000080003cd8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003cd8:	fe010113          	addi	sp,sp,-32
    80003cdc:	00113c23          	sd	ra,24(sp)
    80003ce0:	00813823          	sd	s0,16(sp)
    80003ce4:	00913423          	sd	s1,8(sp)
    80003ce8:	01213023          	sd	s2,0(sp)
    80003cec:	02010413          	addi	s0,sp,32
    80003cf0:	00050493          	mv	s1,a0
    80003cf4:	00058913          	mv	s2,a1
    80003cf8:	0015879b          	addiw	a5,a1,1
    80003cfc:	0007851b          	sext.w	a0,a5
    80003d00:	00f4a023          	sw	a5,0(s1)
    80003d04:	0004a823          	sw	zero,16(s1)
    80003d08:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003d0c:	00251513          	slli	a0,a0,0x2
    80003d10:	ffffd097          	auipc	ra,0xffffd
    80003d14:	7d8080e7          	jalr	2008(ra) # 800014e8 <_Z9mem_allocm>
    80003d18:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003d1c:	00000593          	li	a1,0
    80003d20:	02048513          	addi	a0,s1,32
    80003d24:	ffffd097          	auipc	ra,0xffffd
    80003d28:	670080e7          	jalr	1648(ra) # 80001394 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80003d2c:	00090593          	mv	a1,s2
    80003d30:	01848513          	addi	a0,s1,24
    80003d34:	ffffd097          	auipc	ra,0xffffd
    80003d38:	660080e7          	jalr	1632(ra) # 80001394 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80003d3c:	00100593          	li	a1,1
    80003d40:	02848513          	addi	a0,s1,40
    80003d44:	ffffd097          	auipc	ra,0xffffd
    80003d48:	650080e7          	jalr	1616(ra) # 80001394 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80003d4c:	00100593          	li	a1,1
    80003d50:	03048513          	addi	a0,s1,48
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	640080e7          	jalr	1600(ra) # 80001394 <_Z8sem_openPP4_semj>
}
    80003d5c:	01813083          	ld	ra,24(sp)
    80003d60:	01013403          	ld	s0,16(sp)
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	00013903          	ld	s2,0(sp)
    80003d6c:	02010113          	addi	sp,sp,32
    80003d70:	00008067          	ret

0000000080003d74 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003d74:	fe010113          	addi	sp,sp,-32
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00813823          	sd	s0,16(sp)
    80003d80:	00913423          	sd	s1,8(sp)
    80003d84:	01213023          	sd	s2,0(sp)
    80003d88:	02010413          	addi	s0,sp,32
    80003d8c:	00050493          	mv	s1,a0
    80003d90:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003d94:	01853503          	ld	a0,24(a0)
    80003d98:	ffffd097          	auipc	ra,0xffffd
    80003d9c:	684080e7          	jalr	1668(ra) # 8000141c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80003da0:	0304b503          	ld	a0,48(s1)
    80003da4:	ffffd097          	auipc	ra,0xffffd
    80003da8:	678080e7          	jalr	1656(ra) # 8000141c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80003dac:	0084b783          	ld	a5,8(s1)
    80003db0:	0144a703          	lw	a4,20(s1)
    80003db4:	00271713          	slli	a4,a4,0x2
    80003db8:	00e787b3          	add	a5,a5,a4
    80003dbc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003dc0:	0144a783          	lw	a5,20(s1)
    80003dc4:	0017879b          	addiw	a5,a5,1
    80003dc8:	0004a703          	lw	a4,0(s1)
    80003dcc:	02e7e7bb          	remw	a5,a5,a4
    80003dd0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003dd4:	0304b503          	ld	a0,48(s1)
    80003dd8:	ffffd097          	auipc	ra,0xffffd
    80003ddc:	688080e7          	jalr	1672(ra) # 80001460 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80003de0:	0204b503          	ld	a0,32(s1)
    80003de4:	ffffd097          	auipc	ra,0xffffd
    80003de8:	67c080e7          	jalr	1660(ra) # 80001460 <_Z10sem_signalP4_sem>

}
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	00013903          	ld	s2,0(sp)
    80003dfc:	02010113          	addi	sp,sp,32
    80003e00:	00008067          	ret

0000000080003e04 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003e04:	fe010113          	addi	sp,sp,-32
    80003e08:	00113c23          	sd	ra,24(sp)
    80003e0c:	00813823          	sd	s0,16(sp)
    80003e10:	00913423          	sd	s1,8(sp)
    80003e14:	01213023          	sd	s2,0(sp)
    80003e18:	02010413          	addi	s0,sp,32
    80003e1c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003e20:	02053503          	ld	a0,32(a0)
    80003e24:	ffffd097          	auipc	ra,0xffffd
    80003e28:	5f8080e7          	jalr	1528(ra) # 8000141c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80003e2c:	0284b503          	ld	a0,40(s1)
    80003e30:	ffffd097          	auipc	ra,0xffffd
    80003e34:	5ec080e7          	jalr	1516(ra) # 8000141c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80003e38:	0084b703          	ld	a4,8(s1)
    80003e3c:	0104a783          	lw	a5,16(s1)
    80003e40:	00279693          	slli	a3,a5,0x2
    80003e44:	00d70733          	add	a4,a4,a3
    80003e48:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003e4c:	0017879b          	addiw	a5,a5,1
    80003e50:	0004a703          	lw	a4,0(s1)
    80003e54:	02e7e7bb          	remw	a5,a5,a4
    80003e58:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003e5c:	0284b503          	ld	a0,40(s1)
    80003e60:	ffffd097          	auipc	ra,0xffffd
    80003e64:	600080e7          	jalr	1536(ra) # 80001460 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80003e68:	0184b503          	ld	a0,24(s1)
    80003e6c:	ffffd097          	auipc	ra,0xffffd
    80003e70:	5f4080e7          	jalr	1524(ra) # 80001460 <_Z10sem_signalP4_sem>

    return ret;
}
    80003e74:	00090513          	mv	a0,s2
    80003e78:	01813083          	ld	ra,24(sp)
    80003e7c:	01013403          	ld	s0,16(sp)
    80003e80:	00813483          	ld	s1,8(sp)
    80003e84:	00013903          	ld	s2,0(sp)
    80003e88:	02010113          	addi	sp,sp,32
    80003e8c:	00008067          	ret

0000000080003e90 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003e90:	fe010113          	addi	sp,sp,-32
    80003e94:	00113c23          	sd	ra,24(sp)
    80003e98:	00813823          	sd	s0,16(sp)
    80003e9c:	00913423          	sd	s1,8(sp)
    80003ea0:	01213023          	sd	s2,0(sp)
    80003ea4:	02010413          	addi	s0,sp,32
    80003ea8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003eac:	02853503          	ld	a0,40(a0)
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	56c080e7          	jalr	1388(ra) # 8000141c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80003eb8:	0304b503          	ld	a0,48(s1)
    80003ebc:	ffffd097          	auipc	ra,0xffffd
    80003ec0:	560080e7          	jalr	1376(ra) # 8000141c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80003ec4:	0144a783          	lw	a5,20(s1)
    80003ec8:	0104a903          	lw	s2,16(s1)
    80003ecc:	0327ce63          	blt	a5,s2,80003f08 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003ed0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003ed4:	0304b503          	ld	a0,48(s1)
    80003ed8:	ffffd097          	auipc	ra,0xffffd
    80003edc:	588080e7          	jalr	1416(ra) # 80001460 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80003ee0:	0284b503          	ld	a0,40(s1)
    80003ee4:	ffffd097          	auipc	ra,0xffffd
    80003ee8:	57c080e7          	jalr	1404(ra) # 80001460 <_Z10sem_signalP4_sem>

    return ret;
}
    80003eec:	00090513          	mv	a0,s2
    80003ef0:	01813083          	ld	ra,24(sp)
    80003ef4:	01013403          	ld	s0,16(sp)
    80003ef8:	00813483          	ld	s1,8(sp)
    80003efc:	00013903          	ld	s2,0(sp)
    80003f00:	02010113          	addi	sp,sp,32
    80003f04:	00008067          	ret
        ret = cap - head + tail;
    80003f08:	0004a703          	lw	a4,0(s1)
    80003f0c:	4127093b          	subw	s2,a4,s2
    80003f10:	00f9093b          	addw	s2,s2,a5
    80003f14:	fc1ff06f          	j	80003ed4 <_ZN6Buffer6getCntEv+0x44>

0000000080003f18 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003f18:	fe010113          	addi	sp,sp,-32
    80003f1c:	00113c23          	sd	ra,24(sp)
    80003f20:	00813823          	sd	s0,16(sp)
    80003f24:	00913423          	sd	s1,8(sp)
    80003f28:	02010413          	addi	s0,sp,32
    80003f2c:	00050493          	mv	s1,a0
    putc('\n');
    80003f30:	00a00513          	li	a0,10
    80003f34:	ffffd097          	auipc	ra,0xffffd
    80003f38:	748080e7          	jalr	1864(ra) # 8000167c <_Z4putcc>
    printString("Buffer deleted!\n");
    80003f3c:	00003517          	auipc	a0,0x3
    80003f40:	11c50513          	addi	a0,a0,284 # 80007058 <CONSOLE_STATUS+0x48>
    80003f44:	fffff097          	auipc	ra,0xfffff
    80003f48:	f3c080e7          	jalr	-196(ra) # 80002e80 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	f40080e7          	jalr	-192(ra) # 80003e90 <_ZN6Buffer6getCntEv>
    80003f58:	02a05c63          	blez	a0,80003f90 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003f5c:	0084b783          	ld	a5,8(s1)
    80003f60:	0104a703          	lw	a4,16(s1)
    80003f64:	00271713          	slli	a4,a4,0x2
    80003f68:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003f6c:	0007c503          	lbu	a0,0(a5)
    80003f70:	ffffd097          	auipc	ra,0xffffd
    80003f74:	70c080e7          	jalr	1804(ra) # 8000167c <_Z4putcc>
        head = (head + 1) % cap;
    80003f78:	0104a783          	lw	a5,16(s1)
    80003f7c:	0017879b          	addiw	a5,a5,1
    80003f80:	0004a703          	lw	a4,0(s1)
    80003f84:	02e7e7bb          	remw	a5,a5,a4
    80003f88:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003f8c:	fc1ff06f          	j	80003f4c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003f90:	02100513          	li	a0,33
    80003f94:	ffffd097          	auipc	ra,0xffffd
    80003f98:	6e8080e7          	jalr	1768(ra) # 8000167c <_Z4putcc>
    putc('\n');
    80003f9c:	00a00513          	li	a0,10
    80003fa0:	ffffd097          	auipc	ra,0xffffd
    80003fa4:	6dc080e7          	jalr	1756(ra) # 8000167c <_Z4putcc>
    mem_free(buffer);
    80003fa8:	0084b503          	ld	a0,8(s1)
    80003fac:	ffffd097          	auipc	ra,0xffffd
    80003fb0:	664080e7          	jalr	1636(ra) # 80001610 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003fb4:	0204b503          	ld	a0,32(s1)
    80003fb8:	ffffd097          	auipc	ra,0xffffd
    80003fbc:	420080e7          	jalr	1056(ra) # 800013d8 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80003fc0:	0184b503          	ld	a0,24(s1)
    80003fc4:	ffffd097          	auipc	ra,0xffffd
    80003fc8:	414080e7          	jalr	1044(ra) # 800013d8 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80003fcc:	0304b503          	ld	a0,48(s1)
    80003fd0:	ffffd097          	auipc	ra,0xffffd
    80003fd4:	408080e7          	jalr	1032(ra) # 800013d8 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80003fd8:	0284b503          	ld	a0,40(s1)
    80003fdc:	ffffd097          	auipc	ra,0xffffd
    80003fe0:	3fc080e7          	jalr	1020(ra) # 800013d8 <_Z9sem_closeP4_sem>
}
    80003fe4:	01813083          	ld	ra,24(sp)
    80003fe8:	01013403          	ld	s0,16(sp)
    80003fec:	00813483          	ld	s1,8(sp)
    80003ff0:	02010113          	addi	sp,sp,32
    80003ff4:	00008067          	ret

0000000080003ff8 <start>:
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00813423          	sd	s0,8(sp)
    80004000:	01010413          	addi	s0,sp,16
    80004004:	300027f3          	csrr	a5,mstatus
    80004008:	ffffe737          	lui	a4,0xffffe
    8000400c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4c5f>
    80004010:	00e7f7b3          	and	a5,a5,a4
    80004014:	00001737          	lui	a4,0x1
    80004018:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000401c:	00e7e7b3          	or	a5,a5,a4
    80004020:	30079073          	csrw	mstatus,a5
    80004024:	00000797          	auipc	a5,0x0
    80004028:	16078793          	addi	a5,a5,352 # 80004184 <system_main>
    8000402c:	34179073          	csrw	mepc,a5
    80004030:	00000793          	li	a5,0
    80004034:	18079073          	csrw	satp,a5
    80004038:	000107b7          	lui	a5,0x10
    8000403c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004040:	30279073          	csrw	medeleg,a5
    80004044:	30379073          	csrw	mideleg,a5
    80004048:	104027f3          	csrr	a5,sie
    8000404c:	2227e793          	ori	a5,a5,546
    80004050:	10479073          	csrw	sie,a5
    80004054:	fff00793          	li	a5,-1
    80004058:	00a7d793          	srli	a5,a5,0xa
    8000405c:	3b079073          	csrw	pmpaddr0,a5
    80004060:	00f00793          	li	a5,15
    80004064:	3a079073          	csrw	pmpcfg0,a5
    80004068:	f14027f3          	csrr	a5,mhartid
    8000406c:	0200c737          	lui	a4,0x200c
    80004070:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004074:	0007869b          	sext.w	a3,a5
    80004078:	00269713          	slli	a4,a3,0x2
    8000407c:	000f4637          	lui	a2,0xf4
    80004080:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004084:	00d70733          	add	a4,a4,a3
    80004088:	0037979b          	slliw	a5,a5,0x3
    8000408c:	020046b7          	lui	a3,0x2004
    80004090:	00d787b3          	add	a5,a5,a3
    80004094:	00c585b3          	add	a1,a1,a2
    80004098:	00371693          	slli	a3,a4,0x3
    8000409c:	00005717          	auipc	a4,0x5
    800040a0:	8a470713          	addi	a4,a4,-1884 # 80008940 <timer_scratch>
    800040a4:	00b7b023          	sd	a1,0(a5)
    800040a8:	00d70733          	add	a4,a4,a3
    800040ac:	00f73c23          	sd	a5,24(a4)
    800040b0:	02c73023          	sd	a2,32(a4)
    800040b4:	34071073          	csrw	mscratch,a4
    800040b8:	00000797          	auipc	a5,0x0
    800040bc:	6e878793          	addi	a5,a5,1768 # 800047a0 <timervec>
    800040c0:	30579073          	csrw	mtvec,a5
    800040c4:	300027f3          	csrr	a5,mstatus
    800040c8:	0087e793          	ori	a5,a5,8
    800040cc:	30079073          	csrw	mstatus,a5
    800040d0:	304027f3          	csrr	a5,mie
    800040d4:	0807e793          	ori	a5,a5,128
    800040d8:	30479073          	csrw	mie,a5
    800040dc:	f14027f3          	csrr	a5,mhartid
    800040e0:	0007879b          	sext.w	a5,a5
    800040e4:	00078213          	mv	tp,a5
    800040e8:	30200073          	mret
    800040ec:	00813403          	ld	s0,8(sp)
    800040f0:	01010113          	addi	sp,sp,16
    800040f4:	00008067          	ret

00000000800040f8 <timerinit>:
    800040f8:	ff010113          	addi	sp,sp,-16
    800040fc:	00813423          	sd	s0,8(sp)
    80004100:	01010413          	addi	s0,sp,16
    80004104:	f14027f3          	csrr	a5,mhartid
    80004108:	0200c737          	lui	a4,0x200c
    8000410c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004110:	0007869b          	sext.w	a3,a5
    80004114:	00269713          	slli	a4,a3,0x2
    80004118:	000f4637          	lui	a2,0xf4
    8000411c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004120:	00d70733          	add	a4,a4,a3
    80004124:	0037979b          	slliw	a5,a5,0x3
    80004128:	020046b7          	lui	a3,0x2004
    8000412c:	00d787b3          	add	a5,a5,a3
    80004130:	00c585b3          	add	a1,a1,a2
    80004134:	00371693          	slli	a3,a4,0x3
    80004138:	00005717          	auipc	a4,0x5
    8000413c:	80870713          	addi	a4,a4,-2040 # 80008940 <timer_scratch>
    80004140:	00b7b023          	sd	a1,0(a5)
    80004144:	00d70733          	add	a4,a4,a3
    80004148:	00f73c23          	sd	a5,24(a4)
    8000414c:	02c73023          	sd	a2,32(a4)
    80004150:	34071073          	csrw	mscratch,a4
    80004154:	00000797          	auipc	a5,0x0
    80004158:	64c78793          	addi	a5,a5,1612 # 800047a0 <timervec>
    8000415c:	30579073          	csrw	mtvec,a5
    80004160:	300027f3          	csrr	a5,mstatus
    80004164:	0087e793          	ori	a5,a5,8
    80004168:	30079073          	csrw	mstatus,a5
    8000416c:	304027f3          	csrr	a5,mie
    80004170:	0807e793          	ori	a5,a5,128
    80004174:	30479073          	csrw	mie,a5
    80004178:	00813403          	ld	s0,8(sp)
    8000417c:	01010113          	addi	sp,sp,16
    80004180:	00008067          	ret

0000000080004184 <system_main>:
    80004184:	fe010113          	addi	sp,sp,-32
    80004188:	00813823          	sd	s0,16(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	00113c23          	sd	ra,24(sp)
    80004194:	02010413          	addi	s0,sp,32
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	0c4080e7          	jalr	196(ra) # 8000425c <cpuid>
    800041a0:	00004497          	auipc	s1,0x4
    800041a4:	70048493          	addi	s1,s1,1792 # 800088a0 <started>
    800041a8:	02050263          	beqz	a0,800041cc <system_main+0x48>
    800041ac:	0004a783          	lw	a5,0(s1)
    800041b0:	0007879b          	sext.w	a5,a5
    800041b4:	fe078ce3          	beqz	a5,800041ac <system_main+0x28>
    800041b8:	0ff0000f          	fence
    800041bc:	00003517          	auipc	a0,0x3
    800041c0:	fcc50513          	addi	a0,a0,-52 # 80007188 <CONSOLE_STATUS+0x178>
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	a78080e7          	jalr	-1416(ra) # 80004c3c <panic>
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	9cc080e7          	jalr	-1588(ra) # 80004b98 <consoleinit>
    800041d4:	00001097          	auipc	ra,0x1
    800041d8:	158080e7          	jalr	344(ra) # 8000532c <printfinit>
    800041dc:	00003517          	auipc	a0,0x3
    800041e0:	ecc50513          	addi	a0,a0,-308 # 800070a8 <CONSOLE_STATUS+0x98>
    800041e4:	00001097          	auipc	ra,0x1
    800041e8:	ab4080e7          	jalr	-1356(ra) # 80004c98 <__printf>
    800041ec:	00003517          	auipc	a0,0x3
    800041f0:	f6c50513          	addi	a0,a0,-148 # 80007158 <CONSOLE_STATUS+0x148>
    800041f4:	00001097          	auipc	ra,0x1
    800041f8:	aa4080e7          	jalr	-1372(ra) # 80004c98 <__printf>
    800041fc:	00003517          	auipc	a0,0x3
    80004200:	eac50513          	addi	a0,a0,-340 # 800070a8 <CONSOLE_STATUS+0x98>
    80004204:	00001097          	auipc	ra,0x1
    80004208:	a94080e7          	jalr	-1388(ra) # 80004c98 <__printf>
    8000420c:	00001097          	auipc	ra,0x1
    80004210:	4ac080e7          	jalr	1196(ra) # 800056b8 <kinit>
    80004214:	00000097          	auipc	ra,0x0
    80004218:	148080e7          	jalr	328(ra) # 8000435c <trapinit>
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	16c080e7          	jalr	364(ra) # 80004388 <trapinithart>
    80004224:	00000097          	auipc	ra,0x0
    80004228:	5bc080e7          	jalr	1468(ra) # 800047e0 <plicinit>
    8000422c:	00000097          	auipc	ra,0x0
    80004230:	5dc080e7          	jalr	1500(ra) # 80004808 <plicinithart>
    80004234:	00000097          	auipc	ra,0x0
    80004238:	078080e7          	jalr	120(ra) # 800042ac <userinit>
    8000423c:	0ff0000f          	fence
    80004240:	00100793          	li	a5,1
    80004244:	00003517          	auipc	a0,0x3
    80004248:	f2c50513          	addi	a0,a0,-212 # 80007170 <CONSOLE_STATUS+0x160>
    8000424c:	00f4a023          	sw	a5,0(s1)
    80004250:	00001097          	auipc	ra,0x1
    80004254:	a48080e7          	jalr	-1464(ra) # 80004c98 <__printf>
    80004258:	0000006f          	j	80004258 <system_main+0xd4>

000000008000425c <cpuid>:
    8000425c:	ff010113          	addi	sp,sp,-16
    80004260:	00813423          	sd	s0,8(sp)
    80004264:	01010413          	addi	s0,sp,16
    80004268:	00020513          	mv	a0,tp
    8000426c:	00813403          	ld	s0,8(sp)
    80004270:	0005051b          	sext.w	a0,a0
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret

000000008000427c <mycpu>:
    8000427c:	ff010113          	addi	sp,sp,-16
    80004280:	00813423          	sd	s0,8(sp)
    80004284:	01010413          	addi	s0,sp,16
    80004288:	00020793          	mv	a5,tp
    8000428c:	00813403          	ld	s0,8(sp)
    80004290:	0007879b          	sext.w	a5,a5
    80004294:	00779793          	slli	a5,a5,0x7
    80004298:	00005517          	auipc	a0,0x5
    8000429c:	6d850513          	addi	a0,a0,1752 # 80009970 <cpus>
    800042a0:	00f50533          	add	a0,a0,a5
    800042a4:	01010113          	addi	sp,sp,16
    800042a8:	00008067          	ret

00000000800042ac <userinit>:
    800042ac:	ff010113          	addi	sp,sp,-16
    800042b0:	00813423          	sd	s0,8(sp)
    800042b4:	01010413          	addi	s0,sp,16
    800042b8:	00813403          	ld	s0,8(sp)
    800042bc:	01010113          	addi	sp,sp,16
    800042c0:	ffffd317          	auipc	t1,0xffffd
    800042c4:	6fc30067          	jr	1788(t1) # 800019bc <main>

00000000800042c8 <either_copyout>:
    800042c8:	ff010113          	addi	sp,sp,-16
    800042cc:	00813023          	sd	s0,0(sp)
    800042d0:	00113423          	sd	ra,8(sp)
    800042d4:	01010413          	addi	s0,sp,16
    800042d8:	02051663          	bnez	a0,80004304 <either_copyout+0x3c>
    800042dc:	00058513          	mv	a0,a1
    800042e0:	00060593          	mv	a1,a2
    800042e4:	0006861b          	sext.w	a2,a3
    800042e8:	00002097          	auipc	ra,0x2
    800042ec:	c5c080e7          	jalr	-932(ra) # 80005f44 <__memmove>
    800042f0:	00813083          	ld	ra,8(sp)
    800042f4:	00013403          	ld	s0,0(sp)
    800042f8:	00000513          	li	a0,0
    800042fc:	01010113          	addi	sp,sp,16
    80004300:	00008067          	ret
    80004304:	00003517          	auipc	a0,0x3
    80004308:	eac50513          	addi	a0,a0,-340 # 800071b0 <CONSOLE_STATUS+0x1a0>
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	930080e7          	jalr	-1744(ra) # 80004c3c <panic>

0000000080004314 <either_copyin>:
    80004314:	ff010113          	addi	sp,sp,-16
    80004318:	00813023          	sd	s0,0(sp)
    8000431c:	00113423          	sd	ra,8(sp)
    80004320:	01010413          	addi	s0,sp,16
    80004324:	02059463          	bnez	a1,8000434c <either_copyin+0x38>
    80004328:	00060593          	mv	a1,a2
    8000432c:	0006861b          	sext.w	a2,a3
    80004330:	00002097          	auipc	ra,0x2
    80004334:	c14080e7          	jalr	-1004(ra) # 80005f44 <__memmove>
    80004338:	00813083          	ld	ra,8(sp)
    8000433c:	00013403          	ld	s0,0(sp)
    80004340:	00000513          	li	a0,0
    80004344:	01010113          	addi	sp,sp,16
    80004348:	00008067          	ret
    8000434c:	00003517          	auipc	a0,0x3
    80004350:	e8c50513          	addi	a0,a0,-372 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80004354:	00001097          	auipc	ra,0x1
    80004358:	8e8080e7          	jalr	-1816(ra) # 80004c3c <panic>

000000008000435c <trapinit>:
    8000435c:	ff010113          	addi	sp,sp,-16
    80004360:	00813423          	sd	s0,8(sp)
    80004364:	01010413          	addi	s0,sp,16
    80004368:	00813403          	ld	s0,8(sp)
    8000436c:	00003597          	auipc	a1,0x3
    80004370:	e9458593          	addi	a1,a1,-364 # 80007200 <CONSOLE_STATUS+0x1f0>
    80004374:	00005517          	auipc	a0,0x5
    80004378:	67c50513          	addi	a0,a0,1660 # 800099f0 <tickslock>
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00001317          	auipc	t1,0x1
    80004384:	5c830067          	jr	1480(t1) # 80005948 <initlock>

0000000080004388 <trapinithart>:
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00813423          	sd	s0,8(sp)
    80004390:	01010413          	addi	s0,sp,16
    80004394:	00000797          	auipc	a5,0x0
    80004398:	2fc78793          	addi	a5,a5,764 # 80004690 <kernelvec>
    8000439c:	10579073          	csrw	stvec,a5
    800043a0:	00813403          	ld	s0,8(sp)
    800043a4:	01010113          	addi	sp,sp,16
    800043a8:	00008067          	ret

00000000800043ac <usertrap>:
    800043ac:	ff010113          	addi	sp,sp,-16
    800043b0:	00813423          	sd	s0,8(sp)
    800043b4:	01010413          	addi	s0,sp,16
    800043b8:	00813403          	ld	s0,8(sp)
    800043bc:	01010113          	addi	sp,sp,16
    800043c0:	00008067          	ret

00000000800043c4 <usertrapret>:
    800043c4:	ff010113          	addi	sp,sp,-16
    800043c8:	00813423          	sd	s0,8(sp)
    800043cc:	01010413          	addi	s0,sp,16
    800043d0:	00813403          	ld	s0,8(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret

00000000800043dc <kerneltrap>:
    800043dc:	fe010113          	addi	sp,sp,-32
    800043e0:	00813823          	sd	s0,16(sp)
    800043e4:	00113c23          	sd	ra,24(sp)
    800043e8:	00913423          	sd	s1,8(sp)
    800043ec:	02010413          	addi	s0,sp,32
    800043f0:	142025f3          	csrr	a1,scause
    800043f4:	100027f3          	csrr	a5,sstatus
    800043f8:	0027f793          	andi	a5,a5,2
    800043fc:	10079c63          	bnez	a5,80004514 <kerneltrap+0x138>
    80004400:	142027f3          	csrr	a5,scause
    80004404:	0207ce63          	bltz	a5,80004440 <kerneltrap+0x64>
    80004408:	00003517          	auipc	a0,0x3
    8000440c:	e4050513          	addi	a0,a0,-448 # 80007248 <CONSOLE_STATUS+0x238>
    80004410:	00001097          	auipc	ra,0x1
    80004414:	888080e7          	jalr	-1912(ra) # 80004c98 <__printf>
    80004418:	141025f3          	csrr	a1,sepc
    8000441c:	14302673          	csrr	a2,stval
    80004420:	00003517          	auipc	a0,0x3
    80004424:	e3850513          	addi	a0,a0,-456 # 80007258 <CONSOLE_STATUS+0x248>
    80004428:	00001097          	auipc	ra,0x1
    8000442c:	870080e7          	jalr	-1936(ra) # 80004c98 <__printf>
    80004430:	00003517          	auipc	a0,0x3
    80004434:	e4050513          	addi	a0,a0,-448 # 80007270 <CONSOLE_STATUS+0x260>
    80004438:	00001097          	auipc	ra,0x1
    8000443c:	804080e7          	jalr	-2044(ra) # 80004c3c <panic>
    80004440:	0ff7f713          	andi	a4,a5,255
    80004444:	00900693          	li	a3,9
    80004448:	04d70063          	beq	a4,a3,80004488 <kerneltrap+0xac>
    8000444c:	fff00713          	li	a4,-1
    80004450:	03f71713          	slli	a4,a4,0x3f
    80004454:	00170713          	addi	a4,a4,1
    80004458:	fae798e3          	bne	a5,a4,80004408 <kerneltrap+0x2c>
    8000445c:	00000097          	auipc	ra,0x0
    80004460:	e00080e7          	jalr	-512(ra) # 8000425c <cpuid>
    80004464:	06050663          	beqz	a0,800044d0 <kerneltrap+0xf4>
    80004468:	144027f3          	csrr	a5,sip
    8000446c:	ffd7f793          	andi	a5,a5,-3
    80004470:	14479073          	csrw	sip,a5
    80004474:	01813083          	ld	ra,24(sp)
    80004478:	01013403          	ld	s0,16(sp)
    8000447c:	00813483          	ld	s1,8(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret
    80004488:	00000097          	auipc	ra,0x0
    8000448c:	3cc080e7          	jalr	972(ra) # 80004854 <plic_claim>
    80004490:	00a00793          	li	a5,10
    80004494:	00050493          	mv	s1,a0
    80004498:	06f50863          	beq	a0,a5,80004508 <kerneltrap+0x12c>
    8000449c:	fc050ce3          	beqz	a0,80004474 <kerneltrap+0x98>
    800044a0:	00050593          	mv	a1,a0
    800044a4:	00003517          	auipc	a0,0x3
    800044a8:	d8450513          	addi	a0,a0,-636 # 80007228 <CONSOLE_STATUS+0x218>
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	7ec080e7          	jalr	2028(ra) # 80004c98 <__printf>
    800044b4:	01013403          	ld	s0,16(sp)
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	00048513          	mv	a0,s1
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	02010113          	addi	sp,sp,32
    800044c8:	00000317          	auipc	t1,0x0
    800044cc:	3c430067          	jr	964(t1) # 8000488c <plic_complete>
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	52050513          	addi	a0,a0,1312 # 800099f0 <tickslock>
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	494080e7          	jalr	1172(ra) # 8000596c <acquire>
    800044e0:	00004717          	auipc	a4,0x4
    800044e4:	3c470713          	addi	a4,a4,964 # 800088a4 <ticks>
    800044e8:	00072783          	lw	a5,0(a4)
    800044ec:	00005517          	auipc	a0,0x5
    800044f0:	50450513          	addi	a0,a0,1284 # 800099f0 <tickslock>
    800044f4:	0017879b          	addiw	a5,a5,1
    800044f8:	00f72023          	sw	a5,0(a4)
    800044fc:	00001097          	auipc	ra,0x1
    80004500:	53c080e7          	jalr	1340(ra) # 80005a38 <release>
    80004504:	f65ff06f          	j	80004468 <kerneltrap+0x8c>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	098080e7          	jalr	152(ra) # 800055a0 <uartintr>
    80004510:	fa5ff06f          	j	800044b4 <kerneltrap+0xd8>
    80004514:	00003517          	auipc	a0,0x3
    80004518:	cf450513          	addi	a0,a0,-780 # 80007208 <CONSOLE_STATUS+0x1f8>
    8000451c:	00000097          	auipc	ra,0x0
    80004520:	720080e7          	jalr	1824(ra) # 80004c3c <panic>

0000000080004524 <clockintr>:
    80004524:	fe010113          	addi	sp,sp,-32
    80004528:	00813823          	sd	s0,16(sp)
    8000452c:	00913423          	sd	s1,8(sp)
    80004530:	00113c23          	sd	ra,24(sp)
    80004534:	02010413          	addi	s0,sp,32
    80004538:	00005497          	auipc	s1,0x5
    8000453c:	4b848493          	addi	s1,s1,1208 # 800099f0 <tickslock>
    80004540:	00048513          	mv	a0,s1
    80004544:	00001097          	auipc	ra,0x1
    80004548:	428080e7          	jalr	1064(ra) # 8000596c <acquire>
    8000454c:	00004717          	auipc	a4,0x4
    80004550:	35870713          	addi	a4,a4,856 # 800088a4 <ticks>
    80004554:	00072783          	lw	a5,0(a4)
    80004558:	01013403          	ld	s0,16(sp)
    8000455c:	01813083          	ld	ra,24(sp)
    80004560:	00048513          	mv	a0,s1
    80004564:	0017879b          	addiw	a5,a5,1
    80004568:	00813483          	ld	s1,8(sp)
    8000456c:	00f72023          	sw	a5,0(a4)
    80004570:	02010113          	addi	sp,sp,32
    80004574:	00001317          	auipc	t1,0x1
    80004578:	4c430067          	jr	1220(t1) # 80005a38 <release>

000000008000457c <devintr>:
    8000457c:	142027f3          	csrr	a5,scause
    80004580:	00000513          	li	a0,0
    80004584:	0007c463          	bltz	a5,8000458c <devintr+0x10>
    80004588:	00008067          	ret
    8000458c:	fe010113          	addi	sp,sp,-32
    80004590:	00813823          	sd	s0,16(sp)
    80004594:	00113c23          	sd	ra,24(sp)
    80004598:	00913423          	sd	s1,8(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	0ff7f713          	andi	a4,a5,255
    800045a4:	00900693          	li	a3,9
    800045a8:	04d70c63          	beq	a4,a3,80004600 <devintr+0x84>
    800045ac:	fff00713          	li	a4,-1
    800045b0:	03f71713          	slli	a4,a4,0x3f
    800045b4:	00170713          	addi	a4,a4,1
    800045b8:	00e78c63          	beq	a5,a4,800045d0 <devintr+0x54>
    800045bc:	01813083          	ld	ra,24(sp)
    800045c0:	01013403          	ld	s0,16(sp)
    800045c4:	00813483          	ld	s1,8(sp)
    800045c8:	02010113          	addi	sp,sp,32
    800045cc:	00008067          	ret
    800045d0:	00000097          	auipc	ra,0x0
    800045d4:	c8c080e7          	jalr	-884(ra) # 8000425c <cpuid>
    800045d8:	06050663          	beqz	a0,80004644 <devintr+0xc8>
    800045dc:	144027f3          	csrr	a5,sip
    800045e0:	ffd7f793          	andi	a5,a5,-3
    800045e4:	14479073          	csrw	sip,a5
    800045e8:	01813083          	ld	ra,24(sp)
    800045ec:	01013403          	ld	s0,16(sp)
    800045f0:	00813483          	ld	s1,8(sp)
    800045f4:	00200513          	li	a0,2
    800045f8:	02010113          	addi	sp,sp,32
    800045fc:	00008067          	ret
    80004600:	00000097          	auipc	ra,0x0
    80004604:	254080e7          	jalr	596(ra) # 80004854 <plic_claim>
    80004608:	00a00793          	li	a5,10
    8000460c:	00050493          	mv	s1,a0
    80004610:	06f50663          	beq	a0,a5,8000467c <devintr+0x100>
    80004614:	00100513          	li	a0,1
    80004618:	fa0482e3          	beqz	s1,800045bc <devintr+0x40>
    8000461c:	00048593          	mv	a1,s1
    80004620:	00003517          	auipc	a0,0x3
    80004624:	c0850513          	addi	a0,a0,-1016 # 80007228 <CONSOLE_STATUS+0x218>
    80004628:	00000097          	auipc	ra,0x0
    8000462c:	670080e7          	jalr	1648(ra) # 80004c98 <__printf>
    80004630:	00048513          	mv	a0,s1
    80004634:	00000097          	auipc	ra,0x0
    80004638:	258080e7          	jalr	600(ra) # 8000488c <plic_complete>
    8000463c:	00100513          	li	a0,1
    80004640:	f7dff06f          	j	800045bc <devintr+0x40>
    80004644:	00005517          	auipc	a0,0x5
    80004648:	3ac50513          	addi	a0,a0,940 # 800099f0 <tickslock>
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	320080e7          	jalr	800(ra) # 8000596c <acquire>
    80004654:	00004717          	auipc	a4,0x4
    80004658:	25070713          	addi	a4,a4,592 # 800088a4 <ticks>
    8000465c:	00072783          	lw	a5,0(a4)
    80004660:	00005517          	auipc	a0,0x5
    80004664:	39050513          	addi	a0,a0,912 # 800099f0 <tickslock>
    80004668:	0017879b          	addiw	a5,a5,1
    8000466c:	00f72023          	sw	a5,0(a4)
    80004670:	00001097          	auipc	ra,0x1
    80004674:	3c8080e7          	jalr	968(ra) # 80005a38 <release>
    80004678:	f65ff06f          	j	800045dc <devintr+0x60>
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	f24080e7          	jalr	-220(ra) # 800055a0 <uartintr>
    80004684:	fadff06f          	j	80004630 <devintr+0xb4>
	...

0000000080004690 <kernelvec>:
    80004690:	f0010113          	addi	sp,sp,-256
    80004694:	00113023          	sd	ra,0(sp)
    80004698:	00213423          	sd	sp,8(sp)
    8000469c:	00313823          	sd	gp,16(sp)
    800046a0:	00413c23          	sd	tp,24(sp)
    800046a4:	02513023          	sd	t0,32(sp)
    800046a8:	02613423          	sd	t1,40(sp)
    800046ac:	02713823          	sd	t2,48(sp)
    800046b0:	02813c23          	sd	s0,56(sp)
    800046b4:	04913023          	sd	s1,64(sp)
    800046b8:	04a13423          	sd	a0,72(sp)
    800046bc:	04b13823          	sd	a1,80(sp)
    800046c0:	04c13c23          	sd	a2,88(sp)
    800046c4:	06d13023          	sd	a3,96(sp)
    800046c8:	06e13423          	sd	a4,104(sp)
    800046cc:	06f13823          	sd	a5,112(sp)
    800046d0:	07013c23          	sd	a6,120(sp)
    800046d4:	09113023          	sd	a7,128(sp)
    800046d8:	09213423          	sd	s2,136(sp)
    800046dc:	09313823          	sd	s3,144(sp)
    800046e0:	09413c23          	sd	s4,152(sp)
    800046e4:	0b513023          	sd	s5,160(sp)
    800046e8:	0b613423          	sd	s6,168(sp)
    800046ec:	0b713823          	sd	s7,176(sp)
    800046f0:	0b813c23          	sd	s8,184(sp)
    800046f4:	0d913023          	sd	s9,192(sp)
    800046f8:	0da13423          	sd	s10,200(sp)
    800046fc:	0db13823          	sd	s11,208(sp)
    80004700:	0dc13c23          	sd	t3,216(sp)
    80004704:	0fd13023          	sd	t4,224(sp)
    80004708:	0fe13423          	sd	t5,232(sp)
    8000470c:	0ff13823          	sd	t6,240(sp)
    80004710:	ccdff0ef          	jal	ra,800043dc <kerneltrap>
    80004714:	00013083          	ld	ra,0(sp)
    80004718:	00813103          	ld	sp,8(sp)
    8000471c:	01013183          	ld	gp,16(sp)
    80004720:	02013283          	ld	t0,32(sp)
    80004724:	02813303          	ld	t1,40(sp)
    80004728:	03013383          	ld	t2,48(sp)
    8000472c:	03813403          	ld	s0,56(sp)
    80004730:	04013483          	ld	s1,64(sp)
    80004734:	04813503          	ld	a0,72(sp)
    80004738:	05013583          	ld	a1,80(sp)
    8000473c:	05813603          	ld	a2,88(sp)
    80004740:	06013683          	ld	a3,96(sp)
    80004744:	06813703          	ld	a4,104(sp)
    80004748:	07013783          	ld	a5,112(sp)
    8000474c:	07813803          	ld	a6,120(sp)
    80004750:	08013883          	ld	a7,128(sp)
    80004754:	08813903          	ld	s2,136(sp)
    80004758:	09013983          	ld	s3,144(sp)
    8000475c:	09813a03          	ld	s4,152(sp)
    80004760:	0a013a83          	ld	s5,160(sp)
    80004764:	0a813b03          	ld	s6,168(sp)
    80004768:	0b013b83          	ld	s7,176(sp)
    8000476c:	0b813c03          	ld	s8,184(sp)
    80004770:	0c013c83          	ld	s9,192(sp)
    80004774:	0c813d03          	ld	s10,200(sp)
    80004778:	0d013d83          	ld	s11,208(sp)
    8000477c:	0d813e03          	ld	t3,216(sp)
    80004780:	0e013e83          	ld	t4,224(sp)
    80004784:	0e813f03          	ld	t5,232(sp)
    80004788:	0f013f83          	ld	t6,240(sp)
    8000478c:	10010113          	addi	sp,sp,256
    80004790:	10200073          	sret
    80004794:	00000013          	nop
    80004798:	00000013          	nop
    8000479c:	00000013          	nop

00000000800047a0 <timervec>:
    800047a0:	34051573          	csrrw	a0,mscratch,a0
    800047a4:	00b53023          	sd	a1,0(a0)
    800047a8:	00c53423          	sd	a2,8(a0)
    800047ac:	00d53823          	sd	a3,16(a0)
    800047b0:	01853583          	ld	a1,24(a0)
    800047b4:	02053603          	ld	a2,32(a0)
    800047b8:	0005b683          	ld	a3,0(a1)
    800047bc:	00c686b3          	add	a3,a3,a2
    800047c0:	00d5b023          	sd	a3,0(a1)
    800047c4:	00200593          	li	a1,2
    800047c8:	14459073          	csrw	sip,a1
    800047cc:	01053683          	ld	a3,16(a0)
    800047d0:	00853603          	ld	a2,8(a0)
    800047d4:	00053583          	ld	a1,0(a0)
    800047d8:	34051573          	csrrw	a0,mscratch,a0
    800047dc:	30200073          	mret

00000000800047e0 <plicinit>:
    800047e0:	ff010113          	addi	sp,sp,-16
    800047e4:	00813423          	sd	s0,8(sp)
    800047e8:	01010413          	addi	s0,sp,16
    800047ec:	00813403          	ld	s0,8(sp)
    800047f0:	0c0007b7          	lui	a5,0xc000
    800047f4:	00100713          	li	a4,1
    800047f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800047fc:	00e7a223          	sw	a4,4(a5)
    80004800:	01010113          	addi	sp,sp,16
    80004804:	00008067          	ret

0000000080004808 <plicinithart>:
    80004808:	ff010113          	addi	sp,sp,-16
    8000480c:	00813023          	sd	s0,0(sp)
    80004810:	00113423          	sd	ra,8(sp)
    80004814:	01010413          	addi	s0,sp,16
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	a44080e7          	jalr	-1468(ra) # 8000425c <cpuid>
    80004820:	0085171b          	slliw	a4,a0,0x8
    80004824:	0c0027b7          	lui	a5,0xc002
    80004828:	00e787b3          	add	a5,a5,a4
    8000482c:	40200713          	li	a4,1026
    80004830:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004834:	00813083          	ld	ra,8(sp)
    80004838:	00013403          	ld	s0,0(sp)
    8000483c:	00d5151b          	slliw	a0,a0,0xd
    80004840:	0c2017b7          	lui	a5,0xc201
    80004844:	00a78533          	add	a0,a5,a0
    80004848:	00052023          	sw	zero,0(a0)
    8000484c:	01010113          	addi	sp,sp,16
    80004850:	00008067          	ret

0000000080004854 <plic_claim>:
    80004854:	ff010113          	addi	sp,sp,-16
    80004858:	00813023          	sd	s0,0(sp)
    8000485c:	00113423          	sd	ra,8(sp)
    80004860:	01010413          	addi	s0,sp,16
    80004864:	00000097          	auipc	ra,0x0
    80004868:	9f8080e7          	jalr	-1544(ra) # 8000425c <cpuid>
    8000486c:	00813083          	ld	ra,8(sp)
    80004870:	00013403          	ld	s0,0(sp)
    80004874:	00d5151b          	slliw	a0,a0,0xd
    80004878:	0c2017b7          	lui	a5,0xc201
    8000487c:	00a78533          	add	a0,a5,a0
    80004880:	00452503          	lw	a0,4(a0)
    80004884:	01010113          	addi	sp,sp,16
    80004888:	00008067          	ret

000000008000488c <plic_complete>:
    8000488c:	fe010113          	addi	sp,sp,-32
    80004890:	00813823          	sd	s0,16(sp)
    80004894:	00913423          	sd	s1,8(sp)
    80004898:	00113c23          	sd	ra,24(sp)
    8000489c:	02010413          	addi	s0,sp,32
    800048a0:	00050493          	mv	s1,a0
    800048a4:	00000097          	auipc	ra,0x0
    800048a8:	9b8080e7          	jalr	-1608(ra) # 8000425c <cpuid>
    800048ac:	01813083          	ld	ra,24(sp)
    800048b0:	01013403          	ld	s0,16(sp)
    800048b4:	00d5179b          	slliw	a5,a0,0xd
    800048b8:	0c201737          	lui	a4,0xc201
    800048bc:	00f707b3          	add	a5,a4,a5
    800048c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800048c4:	00813483          	ld	s1,8(sp)
    800048c8:	02010113          	addi	sp,sp,32
    800048cc:	00008067          	ret

00000000800048d0 <consolewrite>:
    800048d0:	fb010113          	addi	sp,sp,-80
    800048d4:	04813023          	sd	s0,64(sp)
    800048d8:	04113423          	sd	ra,72(sp)
    800048dc:	02913c23          	sd	s1,56(sp)
    800048e0:	03213823          	sd	s2,48(sp)
    800048e4:	03313423          	sd	s3,40(sp)
    800048e8:	03413023          	sd	s4,32(sp)
    800048ec:	01513c23          	sd	s5,24(sp)
    800048f0:	05010413          	addi	s0,sp,80
    800048f4:	06c05c63          	blez	a2,8000496c <consolewrite+0x9c>
    800048f8:	00060993          	mv	s3,a2
    800048fc:	00050a13          	mv	s4,a0
    80004900:	00058493          	mv	s1,a1
    80004904:	00000913          	li	s2,0
    80004908:	fff00a93          	li	s5,-1
    8000490c:	01c0006f          	j	80004928 <consolewrite+0x58>
    80004910:	fbf44503          	lbu	a0,-65(s0)
    80004914:	0019091b          	addiw	s2,s2,1
    80004918:	00148493          	addi	s1,s1,1
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	a9c080e7          	jalr	-1380(ra) # 800053b8 <uartputc>
    80004924:	03298063          	beq	s3,s2,80004944 <consolewrite+0x74>
    80004928:	00048613          	mv	a2,s1
    8000492c:	00100693          	li	a3,1
    80004930:	000a0593          	mv	a1,s4
    80004934:	fbf40513          	addi	a0,s0,-65
    80004938:	00000097          	auipc	ra,0x0
    8000493c:	9dc080e7          	jalr	-1572(ra) # 80004314 <either_copyin>
    80004940:	fd5518e3          	bne	a0,s5,80004910 <consolewrite+0x40>
    80004944:	04813083          	ld	ra,72(sp)
    80004948:	04013403          	ld	s0,64(sp)
    8000494c:	03813483          	ld	s1,56(sp)
    80004950:	02813983          	ld	s3,40(sp)
    80004954:	02013a03          	ld	s4,32(sp)
    80004958:	01813a83          	ld	s5,24(sp)
    8000495c:	00090513          	mv	a0,s2
    80004960:	03013903          	ld	s2,48(sp)
    80004964:	05010113          	addi	sp,sp,80
    80004968:	00008067          	ret
    8000496c:	00000913          	li	s2,0
    80004970:	fd5ff06f          	j	80004944 <consolewrite+0x74>

0000000080004974 <consoleread>:
    80004974:	f9010113          	addi	sp,sp,-112
    80004978:	06813023          	sd	s0,96(sp)
    8000497c:	04913c23          	sd	s1,88(sp)
    80004980:	05213823          	sd	s2,80(sp)
    80004984:	05313423          	sd	s3,72(sp)
    80004988:	05413023          	sd	s4,64(sp)
    8000498c:	03513c23          	sd	s5,56(sp)
    80004990:	03613823          	sd	s6,48(sp)
    80004994:	03713423          	sd	s7,40(sp)
    80004998:	03813023          	sd	s8,32(sp)
    8000499c:	06113423          	sd	ra,104(sp)
    800049a0:	01913c23          	sd	s9,24(sp)
    800049a4:	07010413          	addi	s0,sp,112
    800049a8:	00060b93          	mv	s7,a2
    800049ac:	00050913          	mv	s2,a0
    800049b0:	00058c13          	mv	s8,a1
    800049b4:	00060b1b          	sext.w	s6,a2
    800049b8:	00005497          	auipc	s1,0x5
    800049bc:	06048493          	addi	s1,s1,96 # 80009a18 <cons>
    800049c0:	00400993          	li	s3,4
    800049c4:	fff00a13          	li	s4,-1
    800049c8:	00a00a93          	li	s5,10
    800049cc:	05705e63          	blez	s7,80004a28 <consoleread+0xb4>
    800049d0:	09c4a703          	lw	a4,156(s1)
    800049d4:	0984a783          	lw	a5,152(s1)
    800049d8:	0007071b          	sext.w	a4,a4
    800049dc:	08e78463          	beq	a5,a4,80004a64 <consoleread+0xf0>
    800049e0:	07f7f713          	andi	a4,a5,127
    800049e4:	00e48733          	add	a4,s1,a4
    800049e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800049ec:	0017869b          	addiw	a3,a5,1
    800049f0:	08d4ac23          	sw	a3,152(s1)
    800049f4:	00070c9b          	sext.w	s9,a4
    800049f8:	0b370663          	beq	a4,s3,80004aa4 <consoleread+0x130>
    800049fc:	00100693          	li	a3,1
    80004a00:	f9f40613          	addi	a2,s0,-97
    80004a04:	000c0593          	mv	a1,s8
    80004a08:	00090513          	mv	a0,s2
    80004a0c:	f8e40fa3          	sb	a4,-97(s0)
    80004a10:	00000097          	auipc	ra,0x0
    80004a14:	8b8080e7          	jalr	-1864(ra) # 800042c8 <either_copyout>
    80004a18:	01450863          	beq	a0,s4,80004a28 <consoleread+0xb4>
    80004a1c:	001c0c13          	addi	s8,s8,1
    80004a20:	fffb8b9b          	addiw	s7,s7,-1
    80004a24:	fb5c94e3          	bne	s9,s5,800049cc <consoleread+0x58>
    80004a28:	000b851b          	sext.w	a0,s7
    80004a2c:	06813083          	ld	ra,104(sp)
    80004a30:	06013403          	ld	s0,96(sp)
    80004a34:	05813483          	ld	s1,88(sp)
    80004a38:	05013903          	ld	s2,80(sp)
    80004a3c:	04813983          	ld	s3,72(sp)
    80004a40:	04013a03          	ld	s4,64(sp)
    80004a44:	03813a83          	ld	s5,56(sp)
    80004a48:	02813b83          	ld	s7,40(sp)
    80004a4c:	02013c03          	ld	s8,32(sp)
    80004a50:	01813c83          	ld	s9,24(sp)
    80004a54:	40ab053b          	subw	a0,s6,a0
    80004a58:	03013b03          	ld	s6,48(sp)
    80004a5c:	07010113          	addi	sp,sp,112
    80004a60:	00008067          	ret
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	1d8080e7          	jalr	472(ra) # 80005c3c <push_on>
    80004a6c:	0984a703          	lw	a4,152(s1)
    80004a70:	09c4a783          	lw	a5,156(s1)
    80004a74:	0007879b          	sext.w	a5,a5
    80004a78:	fef70ce3          	beq	a4,a5,80004a70 <consoleread+0xfc>
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	234080e7          	jalr	564(ra) # 80005cb0 <pop_on>
    80004a84:	0984a783          	lw	a5,152(s1)
    80004a88:	07f7f713          	andi	a4,a5,127
    80004a8c:	00e48733          	add	a4,s1,a4
    80004a90:	01874703          	lbu	a4,24(a4)
    80004a94:	0017869b          	addiw	a3,a5,1
    80004a98:	08d4ac23          	sw	a3,152(s1)
    80004a9c:	00070c9b          	sext.w	s9,a4
    80004aa0:	f5371ee3          	bne	a4,s3,800049fc <consoleread+0x88>
    80004aa4:	000b851b          	sext.w	a0,s7
    80004aa8:	f96bf2e3          	bgeu	s7,s6,80004a2c <consoleread+0xb8>
    80004aac:	08f4ac23          	sw	a5,152(s1)
    80004ab0:	f7dff06f          	j	80004a2c <consoleread+0xb8>

0000000080004ab4 <consputc>:
    80004ab4:	10000793          	li	a5,256
    80004ab8:	00f50663          	beq	a0,a5,80004ac4 <consputc+0x10>
    80004abc:	00001317          	auipc	t1,0x1
    80004ac0:	9f430067          	jr	-1548(t1) # 800054b0 <uartputc_sync>
    80004ac4:	ff010113          	addi	sp,sp,-16
    80004ac8:	00113423          	sd	ra,8(sp)
    80004acc:	00813023          	sd	s0,0(sp)
    80004ad0:	01010413          	addi	s0,sp,16
    80004ad4:	00800513          	li	a0,8
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	9d8080e7          	jalr	-1576(ra) # 800054b0 <uartputc_sync>
    80004ae0:	02000513          	li	a0,32
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	9cc080e7          	jalr	-1588(ra) # 800054b0 <uartputc_sync>
    80004aec:	00013403          	ld	s0,0(sp)
    80004af0:	00813083          	ld	ra,8(sp)
    80004af4:	00800513          	li	a0,8
    80004af8:	01010113          	addi	sp,sp,16
    80004afc:	00001317          	auipc	t1,0x1
    80004b00:	9b430067          	jr	-1612(t1) # 800054b0 <uartputc_sync>

0000000080004b04 <consoleintr>:
    80004b04:	fe010113          	addi	sp,sp,-32
    80004b08:	00813823          	sd	s0,16(sp)
    80004b0c:	00913423          	sd	s1,8(sp)
    80004b10:	01213023          	sd	s2,0(sp)
    80004b14:	00113c23          	sd	ra,24(sp)
    80004b18:	02010413          	addi	s0,sp,32
    80004b1c:	00005917          	auipc	s2,0x5
    80004b20:	efc90913          	addi	s2,s2,-260 # 80009a18 <cons>
    80004b24:	00050493          	mv	s1,a0
    80004b28:	00090513          	mv	a0,s2
    80004b2c:	00001097          	auipc	ra,0x1
    80004b30:	e40080e7          	jalr	-448(ra) # 8000596c <acquire>
    80004b34:	02048c63          	beqz	s1,80004b6c <consoleintr+0x68>
    80004b38:	0a092783          	lw	a5,160(s2)
    80004b3c:	09892703          	lw	a4,152(s2)
    80004b40:	07f00693          	li	a3,127
    80004b44:	40e7873b          	subw	a4,a5,a4
    80004b48:	02e6e263          	bltu	a3,a4,80004b6c <consoleintr+0x68>
    80004b4c:	00d00713          	li	a4,13
    80004b50:	04e48063          	beq	s1,a4,80004b90 <consoleintr+0x8c>
    80004b54:	07f7f713          	andi	a4,a5,127
    80004b58:	00e90733          	add	a4,s2,a4
    80004b5c:	0017879b          	addiw	a5,a5,1
    80004b60:	0af92023          	sw	a5,160(s2)
    80004b64:	00970c23          	sb	s1,24(a4)
    80004b68:	08f92e23          	sw	a5,156(s2)
    80004b6c:	01013403          	ld	s0,16(sp)
    80004b70:	01813083          	ld	ra,24(sp)
    80004b74:	00813483          	ld	s1,8(sp)
    80004b78:	00013903          	ld	s2,0(sp)
    80004b7c:	00005517          	auipc	a0,0x5
    80004b80:	e9c50513          	addi	a0,a0,-356 # 80009a18 <cons>
    80004b84:	02010113          	addi	sp,sp,32
    80004b88:	00001317          	auipc	t1,0x1
    80004b8c:	eb030067          	jr	-336(t1) # 80005a38 <release>
    80004b90:	00a00493          	li	s1,10
    80004b94:	fc1ff06f          	j	80004b54 <consoleintr+0x50>

0000000080004b98 <consoleinit>:
    80004b98:	fe010113          	addi	sp,sp,-32
    80004b9c:	00113c23          	sd	ra,24(sp)
    80004ba0:	00813823          	sd	s0,16(sp)
    80004ba4:	00913423          	sd	s1,8(sp)
    80004ba8:	02010413          	addi	s0,sp,32
    80004bac:	00005497          	auipc	s1,0x5
    80004bb0:	e6c48493          	addi	s1,s1,-404 # 80009a18 <cons>
    80004bb4:	00048513          	mv	a0,s1
    80004bb8:	00002597          	auipc	a1,0x2
    80004bbc:	6c858593          	addi	a1,a1,1736 # 80007280 <CONSOLE_STATUS+0x270>
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	d88080e7          	jalr	-632(ra) # 80005948 <initlock>
    80004bc8:	00000097          	auipc	ra,0x0
    80004bcc:	7ac080e7          	jalr	1964(ra) # 80005374 <uartinit>
    80004bd0:	01813083          	ld	ra,24(sp)
    80004bd4:	01013403          	ld	s0,16(sp)
    80004bd8:	00000797          	auipc	a5,0x0
    80004bdc:	d9c78793          	addi	a5,a5,-612 # 80004974 <consoleread>
    80004be0:	0af4bc23          	sd	a5,184(s1)
    80004be4:	00000797          	auipc	a5,0x0
    80004be8:	cec78793          	addi	a5,a5,-788 # 800048d0 <consolewrite>
    80004bec:	0cf4b023          	sd	a5,192(s1)
    80004bf0:	00813483          	ld	s1,8(sp)
    80004bf4:	02010113          	addi	sp,sp,32
    80004bf8:	00008067          	ret

0000000080004bfc <console_read>:
    80004bfc:	ff010113          	addi	sp,sp,-16
    80004c00:	00813423          	sd	s0,8(sp)
    80004c04:	01010413          	addi	s0,sp,16
    80004c08:	00813403          	ld	s0,8(sp)
    80004c0c:	00005317          	auipc	t1,0x5
    80004c10:	ec433303          	ld	t1,-316(t1) # 80009ad0 <devsw+0x10>
    80004c14:	01010113          	addi	sp,sp,16
    80004c18:	00030067          	jr	t1

0000000080004c1c <console_write>:
    80004c1c:	ff010113          	addi	sp,sp,-16
    80004c20:	00813423          	sd	s0,8(sp)
    80004c24:	01010413          	addi	s0,sp,16
    80004c28:	00813403          	ld	s0,8(sp)
    80004c2c:	00005317          	auipc	t1,0x5
    80004c30:	eac33303          	ld	t1,-340(t1) # 80009ad8 <devsw+0x18>
    80004c34:	01010113          	addi	sp,sp,16
    80004c38:	00030067          	jr	t1

0000000080004c3c <panic>:
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00113c23          	sd	ra,24(sp)
    80004c44:	00813823          	sd	s0,16(sp)
    80004c48:	00913423          	sd	s1,8(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    80004c50:	00050493          	mv	s1,a0
    80004c54:	00002517          	auipc	a0,0x2
    80004c58:	63450513          	addi	a0,a0,1588 # 80007288 <CONSOLE_STATUS+0x278>
    80004c5c:	00005797          	auipc	a5,0x5
    80004c60:	f007ae23          	sw	zero,-228(a5) # 80009b78 <pr+0x18>
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	034080e7          	jalr	52(ra) # 80004c98 <__printf>
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	028080e7          	jalr	40(ra) # 80004c98 <__printf>
    80004c78:	00002517          	auipc	a0,0x2
    80004c7c:	43050513          	addi	a0,a0,1072 # 800070a8 <CONSOLE_STATUS+0x98>
    80004c80:	00000097          	auipc	ra,0x0
    80004c84:	018080e7          	jalr	24(ra) # 80004c98 <__printf>
    80004c88:	00100793          	li	a5,1
    80004c8c:	00004717          	auipc	a4,0x4
    80004c90:	c0f72e23          	sw	a5,-996(a4) # 800088a8 <panicked>
    80004c94:	0000006f          	j	80004c94 <panic+0x58>

0000000080004c98 <__printf>:
    80004c98:	f3010113          	addi	sp,sp,-208
    80004c9c:	08813023          	sd	s0,128(sp)
    80004ca0:	07313423          	sd	s3,104(sp)
    80004ca4:	09010413          	addi	s0,sp,144
    80004ca8:	05813023          	sd	s8,64(sp)
    80004cac:	08113423          	sd	ra,136(sp)
    80004cb0:	06913c23          	sd	s1,120(sp)
    80004cb4:	07213823          	sd	s2,112(sp)
    80004cb8:	07413023          	sd	s4,96(sp)
    80004cbc:	05513c23          	sd	s5,88(sp)
    80004cc0:	05613823          	sd	s6,80(sp)
    80004cc4:	05713423          	sd	s7,72(sp)
    80004cc8:	03913c23          	sd	s9,56(sp)
    80004ccc:	03a13823          	sd	s10,48(sp)
    80004cd0:	03b13423          	sd	s11,40(sp)
    80004cd4:	00005317          	auipc	t1,0x5
    80004cd8:	e8c30313          	addi	t1,t1,-372 # 80009b60 <pr>
    80004cdc:	01832c03          	lw	s8,24(t1)
    80004ce0:	00b43423          	sd	a1,8(s0)
    80004ce4:	00c43823          	sd	a2,16(s0)
    80004ce8:	00d43c23          	sd	a3,24(s0)
    80004cec:	02e43023          	sd	a4,32(s0)
    80004cf0:	02f43423          	sd	a5,40(s0)
    80004cf4:	03043823          	sd	a6,48(s0)
    80004cf8:	03143c23          	sd	a7,56(s0)
    80004cfc:	00050993          	mv	s3,a0
    80004d00:	4a0c1663          	bnez	s8,800051ac <__printf+0x514>
    80004d04:	60098c63          	beqz	s3,8000531c <__printf+0x684>
    80004d08:	0009c503          	lbu	a0,0(s3)
    80004d0c:	00840793          	addi	a5,s0,8
    80004d10:	f6f43c23          	sd	a5,-136(s0)
    80004d14:	00000493          	li	s1,0
    80004d18:	22050063          	beqz	a0,80004f38 <__printf+0x2a0>
    80004d1c:	00002a37          	lui	s4,0x2
    80004d20:	00018ab7          	lui	s5,0x18
    80004d24:	000f4b37          	lui	s6,0xf4
    80004d28:	00989bb7          	lui	s7,0x989
    80004d2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004d30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004d34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004d38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004d3c:	00148c9b          	addiw	s9,s1,1
    80004d40:	02500793          	li	a5,37
    80004d44:	01998933          	add	s2,s3,s9
    80004d48:	38f51263          	bne	a0,a5,800050cc <__printf+0x434>
    80004d4c:	00094783          	lbu	a5,0(s2)
    80004d50:	00078c9b          	sext.w	s9,a5
    80004d54:	1e078263          	beqz	a5,80004f38 <__printf+0x2a0>
    80004d58:	0024849b          	addiw	s1,s1,2
    80004d5c:	07000713          	li	a4,112
    80004d60:	00998933          	add	s2,s3,s1
    80004d64:	38e78a63          	beq	a5,a4,800050f8 <__printf+0x460>
    80004d68:	20f76863          	bltu	a4,a5,80004f78 <__printf+0x2e0>
    80004d6c:	42a78863          	beq	a5,a0,8000519c <__printf+0x504>
    80004d70:	06400713          	li	a4,100
    80004d74:	40e79663          	bne	a5,a4,80005180 <__printf+0x4e8>
    80004d78:	f7843783          	ld	a5,-136(s0)
    80004d7c:	0007a603          	lw	a2,0(a5)
    80004d80:	00878793          	addi	a5,a5,8
    80004d84:	f6f43c23          	sd	a5,-136(s0)
    80004d88:	42064a63          	bltz	a2,800051bc <__printf+0x524>
    80004d8c:	00a00713          	li	a4,10
    80004d90:	02e677bb          	remuw	a5,a2,a4
    80004d94:	00002d97          	auipc	s11,0x2
    80004d98:	51cd8d93          	addi	s11,s11,1308 # 800072b0 <digits>
    80004d9c:	00900593          	li	a1,9
    80004da0:	0006051b          	sext.w	a0,a2
    80004da4:	00000c93          	li	s9,0
    80004da8:	02079793          	slli	a5,a5,0x20
    80004dac:	0207d793          	srli	a5,a5,0x20
    80004db0:	00fd87b3          	add	a5,s11,a5
    80004db4:	0007c783          	lbu	a5,0(a5)
    80004db8:	02e656bb          	divuw	a3,a2,a4
    80004dbc:	f8f40023          	sb	a5,-128(s0)
    80004dc0:	14c5d863          	bge	a1,a2,80004f10 <__printf+0x278>
    80004dc4:	06300593          	li	a1,99
    80004dc8:	00100c93          	li	s9,1
    80004dcc:	02e6f7bb          	remuw	a5,a3,a4
    80004dd0:	02079793          	slli	a5,a5,0x20
    80004dd4:	0207d793          	srli	a5,a5,0x20
    80004dd8:	00fd87b3          	add	a5,s11,a5
    80004ddc:	0007c783          	lbu	a5,0(a5)
    80004de0:	02e6d73b          	divuw	a4,a3,a4
    80004de4:	f8f400a3          	sb	a5,-127(s0)
    80004de8:	12a5f463          	bgeu	a1,a0,80004f10 <__printf+0x278>
    80004dec:	00a00693          	li	a3,10
    80004df0:	00900593          	li	a1,9
    80004df4:	02d777bb          	remuw	a5,a4,a3
    80004df8:	02079793          	slli	a5,a5,0x20
    80004dfc:	0207d793          	srli	a5,a5,0x20
    80004e00:	00fd87b3          	add	a5,s11,a5
    80004e04:	0007c503          	lbu	a0,0(a5)
    80004e08:	02d757bb          	divuw	a5,a4,a3
    80004e0c:	f8a40123          	sb	a0,-126(s0)
    80004e10:	48e5f263          	bgeu	a1,a4,80005294 <__printf+0x5fc>
    80004e14:	06300513          	li	a0,99
    80004e18:	02d7f5bb          	remuw	a1,a5,a3
    80004e1c:	02059593          	slli	a1,a1,0x20
    80004e20:	0205d593          	srli	a1,a1,0x20
    80004e24:	00bd85b3          	add	a1,s11,a1
    80004e28:	0005c583          	lbu	a1,0(a1)
    80004e2c:	02d7d7bb          	divuw	a5,a5,a3
    80004e30:	f8b401a3          	sb	a1,-125(s0)
    80004e34:	48e57263          	bgeu	a0,a4,800052b8 <__printf+0x620>
    80004e38:	3e700513          	li	a0,999
    80004e3c:	02d7f5bb          	remuw	a1,a5,a3
    80004e40:	02059593          	slli	a1,a1,0x20
    80004e44:	0205d593          	srli	a1,a1,0x20
    80004e48:	00bd85b3          	add	a1,s11,a1
    80004e4c:	0005c583          	lbu	a1,0(a1)
    80004e50:	02d7d7bb          	divuw	a5,a5,a3
    80004e54:	f8b40223          	sb	a1,-124(s0)
    80004e58:	46e57663          	bgeu	a0,a4,800052c4 <__printf+0x62c>
    80004e5c:	02d7f5bb          	remuw	a1,a5,a3
    80004e60:	02059593          	slli	a1,a1,0x20
    80004e64:	0205d593          	srli	a1,a1,0x20
    80004e68:	00bd85b3          	add	a1,s11,a1
    80004e6c:	0005c583          	lbu	a1,0(a1)
    80004e70:	02d7d7bb          	divuw	a5,a5,a3
    80004e74:	f8b402a3          	sb	a1,-123(s0)
    80004e78:	46ea7863          	bgeu	s4,a4,800052e8 <__printf+0x650>
    80004e7c:	02d7f5bb          	remuw	a1,a5,a3
    80004e80:	02059593          	slli	a1,a1,0x20
    80004e84:	0205d593          	srli	a1,a1,0x20
    80004e88:	00bd85b3          	add	a1,s11,a1
    80004e8c:	0005c583          	lbu	a1,0(a1)
    80004e90:	02d7d7bb          	divuw	a5,a5,a3
    80004e94:	f8b40323          	sb	a1,-122(s0)
    80004e98:	3eeaf863          	bgeu	s5,a4,80005288 <__printf+0x5f0>
    80004e9c:	02d7f5bb          	remuw	a1,a5,a3
    80004ea0:	02059593          	slli	a1,a1,0x20
    80004ea4:	0205d593          	srli	a1,a1,0x20
    80004ea8:	00bd85b3          	add	a1,s11,a1
    80004eac:	0005c583          	lbu	a1,0(a1)
    80004eb0:	02d7d7bb          	divuw	a5,a5,a3
    80004eb4:	f8b403a3          	sb	a1,-121(s0)
    80004eb8:	42eb7e63          	bgeu	s6,a4,800052f4 <__printf+0x65c>
    80004ebc:	02d7f5bb          	remuw	a1,a5,a3
    80004ec0:	02059593          	slli	a1,a1,0x20
    80004ec4:	0205d593          	srli	a1,a1,0x20
    80004ec8:	00bd85b3          	add	a1,s11,a1
    80004ecc:	0005c583          	lbu	a1,0(a1)
    80004ed0:	02d7d7bb          	divuw	a5,a5,a3
    80004ed4:	f8b40423          	sb	a1,-120(s0)
    80004ed8:	42ebfc63          	bgeu	s7,a4,80005310 <__printf+0x678>
    80004edc:	02079793          	slli	a5,a5,0x20
    80004ee0:	0207d793          	srli	a5,a5,0x20
    80004ee4:	00fd8db3          	add	s11,s11,a5
    80004ee8:	000dc703          	lbu	a4,0(s11)
    80004eec:	00a00793          	li	a5,10
    80004ef0:	00900c93          	li	s9,9
    80004ef4:	f8e404a3          	sb	a4,-119(s0)
    80004ef8:	00065c63          	bgez	a2,80004f10 <__printf+0x278>
    80004efc:	f9040713          	addi	a4,s0,-112
    80004f00:	00f70733          	add	a4,a4,a5
    80004f04:	02d00693          	li	a3,45
    80004f08:	fed70823          	sb	a3,-16(a4)
    80004f0c:	00078c93          	mv	s9,a5
    80004f10:	f8040793          	addi	a5,s0,-128
    80004f14:	01978cb3          	add	s9,a5,s9
    80004f18:	f7f40d13          	addi	s10,s0,-129
    80004f1c:	000cc503          	lbu	a0,0(s9)
    80004f20:	fffc8c93          	addi	s9,s9,-1
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	b90080e7          	jalr	-1136(ra) # 80004ab4 <consputc>
    80004f2c:	ffac98e3          	bne	s9,s10,80004f1c <__printf+0x284>
    80004f30:	00094503          	lbu	a0,0(s2)
    80004f34:	e00514e3          	bnez	a0,80004d3c <__printf+0xa4>
    80004f38:	1a0c1663          	bnez	s8,800050e4 <__printf+0x44c>
    80004f3c:	08813083          	ld	ra,136(sp)
    80004f40:	08013403          	ld	s0,128(sp)
    80004f44:	07813483          	ld	s1,120(sp)
    80004f48:	07013903          	ld	s2,112(sp)
    80004f4c:	06813983          	ld	s3,104(sp)
    80004f50:	06013a03          	ld	s4,96(sp)
    80004f54:	05813a83          	ld	s5,88(sp)
    80004f58:	05013b03          	ld	s6,80(sp)
    80004f5c:	04813b83          	ld	s7,72(sp)
    80004f60:	04013c03          	ld	s8,64(sp)
    80004f64:	03813c83          	ld	s9,56(sp)
    80004f68:	03013d03          	ld	s10,48(sp)
    80004f6c:	02813d83          	ld	s11,40(sp)
    80004f70:	0d010113          	addi	sp,sp,208
    80004f74:	00008067          	ret
    80004f78:	07300713          	li	a4,115
    80004f7c:	1ce78a63          	beq	a5,a4,80005150 <__printf+0x4b8>
    80004f80:	07800713          	li	a4,120
    80004f84:	1ee79e63          	bne	a5,a4,80005180 <__printf+0x4e8>
    80004f88:	f7843783          	ld	a5,-136(s0)
    80004f8c:	0007a703          	lw	a4,0(a5)
    80004f90:	00878793          	addi	a5,a5,8
    80004f94:	f6f43c23          	sd	a5,-136(s0)
    80004f98:	28074263          	bltz	a4,8000521c <__printf+0x584>
    80004f9c:	00002d97          	auipc	s11,0x2
    80004fa0:	314d8d93          	addi	s11,s11,788 # 800072b0 <digits>
    80004fa4:	00f77793          	andi	a5,a4,15
    80004fa8:	00fd87b3          	add	a5,s11,a5
    80004fac:	0007c683          	lbu	a3,0(a5)
    80004fb0:	00f00613          	li	a2,15
    80004fb4:	0007079b          	sext.w	a5,a4
    80004fb8:	f8d40023          	sb	a3,-128(s0)
    80004fbc:	0047559b          	srliw	a1,a4,0x4
    80004fc0:	0047569b          	srliw	a3,a4,0x4
    80004fc4:	00000c93          	li	s9,0
    80004fc8:	0ee65063          	bge	a2,a4,800050a8 <__printf+0x410>
    80004fcc:	00f6f693          	andi	a3,a3,15
    80004fd0:	00dd86b3          	add	a3,s11,a3
    80004fd4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004fd8:	0087d79b          	srliw	a5,a5,0x8
    80004fdc:	00100c93          	li	s9,1
    80004fe0:	f8d400a3          	sb	a3,-127(s0)
    80004fe4:	0cb67263          	bgeu	a2,a1,800050a8 <__printf+0x410>
    80004fe8:	00f7f693          	andi	a3,a5,15
    80004fec:	00dd86b3          	add	a3,s11,a3
    80004ff0:	0006c583          	lbu	a1,0(a3)
    80004ff4:	00f00613          	li	a2,15
    80004ff8:	0047d69b          	srliw	a3,a5,0x4
    80004ffc:	f8b40123          	sb	a1,-126(s0)
    80005000:	0047d593          	srli	a1,a5,0x4
    80005004:	28f67e63          	bgeu	a2,a5,800052a0 <__printf+0x608>
    80005008:	00f6f693          	andi	a3,a3,15
    8000500c:	00dd86b3          	add	a3,s11,a3
    80005010:	0006c503          	lbu	a0,0(a3)
    80005014:	0087d813          	srli	a6,a5,0x8
    80005018:	0087d69b          	srliw	a3,a5,0x8
    8000501c:	f8a401a3          	sb	a0,-125(s0)
    80005020:	28b67663          	bgeu	a2,a1,800052ac <__printf+0x614>
    80005024:	00f6f693          	andi	a3,a3,15
    80005028:	00dd86b3          	add	a3,s11,a3
    8000502c:	0006c583          	lbu	a1,0(a3)
    80005030:	00c7d513          	srli	a0,a5,0xc
    80005034:	00c7d69b          	srliw	a3,a5,0xc
    80005038:	f8b40223          	sb	a1,-124(s0)
    8000503c:	29067a63          	bgeu	a2,a6,800052d0 <__printf+0x638>
    80005040:	00f6f693          	andi	a3,a3,15
    80005044:	00dd86b3          	add	a3,s11,a3
    80005048:	0006c583          	lbu	a1,0(a3)
    8000504c:	0107d813          	srli	a6,a5,0x10
    80005050:	0107d69b          	srliw	a3,a5,0x10
    80005054:	f8b402a3          	sb	a1,-123(s0)
    80005058:	28a67263          	bgeu	a2,a0,800052dc <__printf+0x644>
    8000505c:	00f6f693          	andi	a3,a3,15
    80005060:	00dd86b3          	add	a3,s11,a3
    80005064:	0006c683          	lbu	a3,0(a3)
    80005068:	0147d79b          	srliw	a5,a5,0x14
    8000506c:	f8d40323          	sb	a3,-122(s0)
    80005070:	21067663          	bgeu	a2,a6,8000527c <__printf+0x5e4>
    80005074:	02079793          	slli	a5,a5,0x20
    80005078:	0207d793          	srli	a5,a5,0x20
    8000507c:	00fd8db3          	add	s11,s11,a5
    80005080:	000dc683          	lbu	a3,0(s11)
    80005084:	00800793          	li	a5,8
    80005088:	00700c93          	li	s9,7
    8000508c:	f8d403a3          	sb	a3,-121(s0)
    80005090:	00075c63          	bgez	a4,800050a8 <__printf+0x410>
    80005094:	f9040713          	addi	a4,s0,-112
    80005098:	00f70733          	add	a4,a4,a5
    8000509c:	02d00693          	li	a3,45
    800050a0:	fed70823          	sb	a3,-16(a4)
    800050a4:	00078c93          	mv	s9,a5
    800050a8:	f8040793          	addi	a5,s0,-128
    800050ac:	01978cb3          	add	s9,a5,s9
    800050b0:	f7f40d13          	addi	s10,s0,-129
    800050b4:	000cc503          	lbu	a0,0(s9)
    800050b8:	fffc8c93          	addi	s9,s9,-1
    800050bc:	00000097          	auipc	ra,0x0
    800050c0:	9f8080e7          	jalr	-1544(ra) # 80004ab4 <consputc>
    800050c4:	ff9d18e3          	bne	s10,s9,800050b4 <__printf+0x41c>
    800050c8:	0100006f          	j	800050d8 <__printf+0x440>
    800050cc:	00000097          	auipc	ra,0x0
    800050d0:	9e8080e7          	jalr	-1560(ra) # 80004ab4 <consputc>
    800050d4:	000c8493          	mv	s1,s9
    800050d8:	00094503          	lbu	a0,0(s2)
    800050dc:	c60510e3          	bnez	a0,80004d3c <__printf+0xa4>
    800050e0:	e40c0ee3          	beqz	s8,80004f3c <__printf+0x2a4>
    800050e4:	00005517          	auipc	a0,0x5
    800050e8:	a7c50513          	addi	a0,a0,-1412 # 80009b60 <pr>
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	94c080e7          	jalr	-1716(ra) # 80005a38 <release>
    800050f4:	e49ff06f          	j	80004f3c <__printf+0x2a4>
    800050f8:	f7843783          	ld	a5,-136(s0)
    800050fc:	03000513          	li	a0,48
    80005100:	01000d13          	li	s10,16
    80005104:	00878713          	addi	a4,a5,8
    80005108:	0007bc83          	ld	s9,0(a5)
    8000510c:	f6e43c23          	sd	a4,-136(s0)
    80005110:	00000097          	auipc	ra,0x0
    80005114:	9a4080e7          	jalr	-1628(ra) # 80004ab4 <consputc>
    80005118:	07800513          	li	a0,120
    8000511c:	00000097          	auipc	ra,0x0
    80005120:	998080e7          	jalr	-1640(ra) # 80004ab4 <consputc>
    80005124:	00002d97          	auipc	s11,0x2
    80005128:	18cd8d93          	addi	s11,s11,396 # 800072b0 <digits>
    8000512c:	03ccd793          	srli	a5,s9,0x3c
    80005130:	00fd87b3          	add	a5,s11,a5
    80005134:	0007c503          	lbu	a0,0(a5)
    80005138:	fffd0d1b          	addiw	s10,s10,-1
    8000513c:	004c9c93          	slli	s9,s9,0x4
    80005140:	00000097          	auipc	ra,0x0
    80005144:	974080e7          	jalr	-1676(ra) # 80004ab4 <consputc>
    80005148:	fe0d12e3          	bnez	s10,8000512c <__printf+0x494>
    8000514c:	f8dff06f          	j	800050d8 <__printf+0x440>
    80005150:	f7843783          	ld	a5,-136(s0)
    80005154:	0007bc83          	ld	s9,0(a5)
    80005158:	00878793          	addi	a5,a5,8
    8000515c:	f6f43c23          	sd	a5,-136(s0)
    80005160:	000c9a63          	bnez	s9,80005174 <__printf+0x4dc>
    80005164:	1080006f          	j	8000526c <__printf+0x5d4>
    80005168:	001c8c93          	addi	s9,s9,1
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	948080e7          	jalr	-1720(ra) # 80004ab4 <consputc>
    80005174:	000cc503          	lbu	a0,0(s9)
    80005178:	fe0518e3          	bnez	a0,80005168 <__printf+0x4d0>
    8000517c:	f5dff06f          	j	800050d8 <__printf+0x440>
    80005180:	02500513          	li	a0,37
    80005184:	00000097          	auipc	ra,0x0
    80005188:	930080e7          	jalr	-1744(ra) # 80004ab4 <consputc>
    8000518c:	000c8513          	mv	a0,s9
    80005190:	00000097          	auipc	ra,0x0
    80005194:	924080e7          	jalr	-1756(ra) # 80004ab4 <consputc>
    80005198:	f41ff06f          	j	800050d8 <__printf+0x440>
    8000519c:	02500513          	li	a0,37
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	914080e7          	jalr	-1772(ra) # 80004ab4 <consputc>
    800051a8:	f31ff06f          	j	800050d8 <__printf+0x440>
    800051ac:	00030513          	mv	a0,t1
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	7bc080e7          	jalr	1980(ra) # 8000596c <acquire>
    800051b8:	b4dff06f          	j	80004d04 <__printf+0x6c>
    800051bc:	40c0053b          	negw	a0,a2
    800051c0:	00a00713          	li	a4,10
    800051c4:	02e576bb          	remuw	a3,a0,a4
    800051c8:	00002d97          	auipc	s11,0x2
    800051cc:	0e8d8d93          	addi	s11,s11,232 # 800072b0 <digits>
    800051d0:	ff700593          	li	a1,-9
    800051d4:	02069693          	slli	a3,a3,0x20
    800051d8:	0206d693          	srli	a3,a3,0x20
    800051dc:	00dd86b3          	add	a3,s11,a3
    800051e0:	0006c683          	lbu	a3,0(a3)
    800051e4:	02e557bb          	divuw	a5,a0,a4
    800051e8:	f8d40023          	sb	a3,-128(s0)
    800051ec:	10b65e63          	bge	a2,a1,80005308 <__printf+0x670>
    800051f0:	06300593          	li	a1,99
    800051f4:	02e7f6bb          	remuw	a3,a5,a4
    800051f8:	02069693          	slli	a3,a3,0x20
    800051fc:	0206d693          	srli	a3,a3,0x20
    80005200:	00dd86b3          	add	a3,s11,a3
    80005204:	0006c683          	lbu	a3,0(a3)
    80005208:	02e7d73b          	divuw	a4,a5,a4
    8000520c:	00200793          	li	a5,2
    80005210:	f8d400a3          	sb	a3,-127(s0)
    80005214:	bca5ece3          	bltu	a1,a0,80004dec <__printf+0x154>
    80005218:	ce5ff06f          	j	80004efc <__printf+0x264>
    8000521c:	40e007bb          	negw	a5,a4
    80005220:	00002d97          	auipc	s11,0x2
    80005224:	090d8d93          	addi	s11,s11,144 # 800072b0 <digits>
    80005228:	00f7f693          	andi	a3,a5,15
    8000522c:	00dd86b3          	add	a3,s11,a3
    80005230:	0006c583          	lbu	a1,0(a3)
    80005234:	ff100613          	li	a2,-15
    80005238:	0047d69b          	srliw	a3,a5,0x4
    8000523c:	f8b40023          	sb	a1,-128(s0)
    80005240:	0047d59b          	srliw	a1,a5,0x4
    80005244:	0ac75e63          	bge	a4,a2,80005300 <__printf+0x668>
    80005248:	00f6f693          	andi	a3,a3,15
    8000524c:	00dd86b3          	add	a3,s11,a3
    80005250:	0006c603          	lbu	a2,0(a3)
    80005254:	00f00693          	li	a3,15
    80005258:	0087d79b          	srliw	a5,a5,0x8
    8000525c:	f8c400a3          	sb	a2,-127(s0)
    80005260:	d8b6e4e3          	bltu	a3,a1,80004fe8 <__printf+0x350>
    80005264:	00200793          	li	a5,2
    80005268:	e2dff06f          	j	80005094 <__printf+0x3fc>
    8000526c:	00002c97          	auipc	s9,0x2
    80005270:	024c8c93          	addi	s9,s9,36 # 80007290 <CONSOLE_STATUS+0x280>
    80005274:	02800513          	li	a0,40
    80005278:	ef1ff06f          	j	80005168 <__printf+0x4d0>
    8000527c:	00700793          	li	a5,7
    80005280:	00600c93          	li	s9,6
    80005284:	e0dff06f          	j	80005090 <__printf+0x3f8>
    80005288:	00700793          	li	a5,7
    8000528c:	00600c93          	li	s9,6
    80005290:	c69ff06f          	j	80004ef8 <__printf+0x260>
    80005294:	00300793          	li	a5,3
    80005298:	00200c93          	li	s9,2
    8000529c:	c5dff06f          	j	80004ef8 <__printf+0x260>
    800052a0:	00300793          	li	a5,3
    800052a4:	00200c93          	li	s9,2
    800052a8:	de9ff06f          	j	80005090 <__printf+0x3f8>
    800052ac:	00400793          	li	a5,4
    800052b0:	00300c93          	li	s9,3
    800052b4:	dddff06f          	j	80005090 <__printf+0x3f8>
    800052b8:	00400793          	li	a5,4
    800052bc:	00300c93          	li	s9,3
    800052c0:	c39ff06f          	j	80004ef8 <__printf+0x260>
    800052c4:	00500793          	li	a5,5
    800052c8:	00400c93          	li	s9,4
    800052cc:	c2dff06f          	j	80004ef8 <__printf+0x260>
    800052d0:	00500793          	li	a5,5
    800052d4:	00400c93          	li	s9,4
    800052d8:	db9ff06f          	j	80005090 <__printf+0x3f8>
    800052dc:	00600793          	li	a5,6
    800052e0:	00500c93          	li	s9,5
    800052e4:	dadff06f          	j	80005090 <__printf+0x3f8>
    800052e8:	00600793          	li	a5,6
    800052ec:	00500c93          	li	s9,5
    800052f0:	c09ff06f          	j	80004ef8 <__printf+0x260>
    800052f4:	00800793          	li	a5,8
    800052f8:	00700c93          	li	s9,7
    800052fc:	bfdff06f          	j	80004ef8 <__printf+0x260>
    80005300:	00100793          	li	a5,1
    80005304:	d91ff06f          	j	80005094 <__printf+0x3fc>
    80005308:	00100793          	li	a5,1
    8000530c:	bf1ff06f          	j	80004efc <__printf+0x264>
    80005310:	00900793          	li	a5,9
    80005314:	00800c93          	li	s9,8
    80005318:	be1ff06f          	j	80004ef8 <__printf+0x260>
    8000531c:	00002517          	auipc	a0,0x2
    80005320:	f7c50513          	addi	a0,a0,-132 # 80007298 <CONSOLE_STATUS+0x288>
    80005324:	00000097          	auipc	ra,0x0
    80005328:	918080e7          	jalr	-1768(ra) # 80004c3c <panic>

000000008000532c <printfinit>:
    8000532c:	fe010113          	addi	sp,sp,-32
    80005330:	00813823          	sd	s0,16(sp)
    80005334:	00913423          	sd	s1,8(sp)
    80005338:	00113c23          	sd	ra,24(sp)
    8000533c:	02010413          	addi	s0,sp,32
    80005340:	00005497          	auipc	s1,0x5
    80005344:	82048493          	addi	s1,s1,-2016 # 80009b60 <pr>
    80005348:	00048513          	mv	a0,s1
    8000534c:	00002597          	auipc	a1,0x2
    80005350:	f5c58593          	addi	a1,a1,-164 # 800072a8 <CONSOLE_STATUS+0x298>
    80005354:	00000097          	auipc	ra,0x0
    80005358:	5f4080e7          	jalr	1524(ra) # 80005948 <initlock>
    8000535c:	01813083          	ld	ra,24(sp)
    80005360:	01013403          	ld	s0,16(sp)
    80005364:	0004ac23          	sw	zero,24(s1)
    80005368:	00813483          	ld	s1,8(sp)
    8000536c:	02010113          	addi	sp,sp,32
    80005370:	00008067          	ret

0000000080005374 <uartinit>:
    80005374:	ff010113          	addi	sp,sp,-16
    80005378:	00813423          	sd	s0,8(sp)
    8000537c:	01010413          	addi	s0,sp,16
    80005380:	100007b7          	lui	a5,0x10000
    80005384:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005388:	f8000713          	li	a4,-128
    8000538c:	00e781a3          	sb	a4,3(a5)
    80005390:	00300713          	li	a4,3
    80005394:	00e78023          	sb	a4,0(a5)
    80005398:	000780a3          	sb	zero,1(a5)
    8000539c:	00e781a3          	sb	a4,3(a5)
    800053a0:	00700693          	li	a3,7
    800053a4:	00d78123          	sb	a3,2(a5)
    800053a8:	00e780a3          	sb	a4,1(a5)
    800053ac:	00813403          	ld	s0,8(sp)
    800053b0:	01010113          	addi	sp,sp,16
    800053b4:	00008067          	ret

00000000800053b8 <uartputc>:
    800053b8:	00003797          	auipc	a5,0x3
    800053bc:	4f07a783          	lw	a5,1264(a5) # 800088a8 <panicked>
    800053c0:	00078463          	beqz	a5,800053c8 <uartputc+0x10>
    800053c4:	0000006f          	j	800053c4 <uartputc+0xc>
    800053c8:	fd010113          	addi	sp,sp,-48
    800053cc:	02813023          	sd	s0,32(sp)
    800053d0:	00913c23          	sd	s1,24(sp)
    800053d4:	01213823          	sd	s2,16(sp)
    800053d8:	01313423          	sd	s3,8(sp)
    800053dc:	02113423          	sd	ra,40(sp)
    800053e0:	03010413          	addi	s0,sp,48
    800053e4:	00003917          	auipc	s2,0x3
    800053e8:	4cc90913          	addi	s2,s2,1228 # 800088b0 <uart_tx_r>
    800053ec:	00093783          	ld	a5,0(s2)
    800053f0:	00003497          	auipc	s1,0x3
    800053f4:	4c848493          	addi	s1,s1,1224 # 800088b8 <uart_tx_w>
    800053f8:	0004b703          	ld	a4,0(s1)
    800053fc:	02078693          	addi	a3,a5,32
    80005400:	00050993          	mv	s3,a0
    80005404:	02e69c63          	bne	a3,a4,8000543c <uartputc+0x84>
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	834080e7          	jalr	-1996(ra) # 80005c3c <push_on>
    80005410:	00093783          	ld	a5,0(s2)
    80005414:	0004b703          	ld	a4,0(s1)
    80005418:	02078793          	addi	a5,a5,32
    8000541c:	00e79463          	bne	a5,a4,80005424 <uartputc+0x6c>
    80005420:	0000006f          	j	80005420 <uartputc+0x68>
    80005424:	00001097          	auipc	ra,0x1
    80005428:	88c080e7          	jalr	-1908(ra) # 80005cb0 <pop_on>
    8000542c:	00093783          	ld	a5,0(s2)
    80005430:	0004b703          	ld	a4,0(s1)
    80005434:	02078693          	addi	a3,a5,32
    80005438:	fce688e3          	beq	a3,a4,80005408 <uartputc+0x50>
    8000543c:	01f77693          	andi	a3,a4,31
    80005440:	00004597          	auipc	a1,0x4
    80005444:	74058593          	addi	a1,a1,1856 # 80009b80 <uart_tx_buf>
    80005448:	00d586b3          	add	a3,a1,a3
    8000544c:	00170713          	addi	a4,a4,1
    80005450:	01368023          	sb	s3,0(a3)
    80005454:	00e4b023          	sd	a4,0(s1)
    80005458:	10000637          	lui	a2,0x10000
    8000545c:	02f71063          	bne	a4,a5,8000547c <uartputc+0xc4>
    80005460:	0340006f          	j	80005494 <uartputc+0xdc>
    80005464:	00074703          	lbu	a4,0(a4)
    80005468:	00f93023          	sd	a5,0(s2)
    8000546c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005470:	00093783          	ld	a5,0(s2)
    80005474:	0004b703          	ld	a4,0(s1)
    80005478:	00f70e63          	beq	a4,a5,80005494 <uartputc+0xdc>
    8000547c:	00564683          	lbu	a3,5(a2)
    80005480:	01f7f713          	andi	a4,a5,31
    80005484:	00e58733          	add	a4,a1,a4
    80005488:	0206f693          	andi	a3,a3,32
    8000548c:	00178793          	addi	a5,a5,1
    80005490:	fc069ae3          	bnez	a3,80005464 <uartputc+0xac>
    80005494:	02813083          	ld	ra,40(sp)
    80005498:	02013403          	ld	s0,32(sp)
    8000549c:	01813483          	ld	s1,24(sp)
    800054a0:	01013903          	ld	s2,16(sp)
    800054a4:	00813983          	ld	s3,8(sp)
    800054a8:	03010113          	addi	sp,sp,48
    800054ac:	00008067          	ret

00000000800054b0 <uartputc_sync>:
    800054b0:	ff010113          	addi	sp,sp,-16
    800054b4:	00813423          	sd	s0,8(sp)
    800054b8:	01010413          	addi	s0,sp,16
    800054bc:	00003717          	auipc	a4,0x3
    800054c0:	3ec72703          	lw	a4,1004(a4) # 800088a8 <panicked>
    800054c4:	02071663          	bnez	a4,800054f0 <uartputc_sync+0x40>
    800054c8:	00050793          	mv	a5,a0
    800054cc:	100006b7          	lui	a3,0x10000
    800054d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800054d4:	02077713          	andi	a4,a4,32
    800054d8:	fe070ce3          	beqz	a4,800054d0 <uartputc_sync+0x20>
    800054dc:	0ff7f793          	andi	a5,a5,255
    800054e0:	00f68023          	sb	a5,0(a3)
    800054e4:	00813403          	ld	s0,8(sp)
    800054e8:	01010113          	addi	sp,sp,16
    800054ec:	00008067          	ret
    800054f0:	0000006f          	j	800054f0 <uartputc_sync+0x40>

00000000800054f4 <uartstart>:
    800054f4:	ff010113          	addi	sp,sp,-16
    800054f8:	00813423          	sd	s0,8(sp)
    800054fc:	01010413          	addi	s0,sp,16
    80005500:	00003617          	auipc	a2,0x3
    80005504:	3b060613          	addi	a2,a2,944 # 800088b0 <uart_tx_r>
    80005508:	00003517          	auipc	a0,0x3
    8000550c:	3b050513          	addi	a0,a0,944 # 800088b8 <uart_tx_w>
    80005510:	00063783          	ld	a5,0(a2)
    80005514:	00053703          	ld	a4,0(a0)
    80005518:	04f70263          	beq	a4,a5,8000555c <uartstart+0x68>
    8000551c:	100005b7          	lui	a1,0x10000
    80005520:	00004817          	auipc	a6,0x4
    80005524:	66080813          	addi	a6,a6,1632 # 80009b80 <uart_tx_buf>
    80005528:	01c0006f          	j	80005544 <uartstart+0x50>
    8000552c:	0006c703          	lbu	a4,0(a3)
    80005530:	00f63023          	sd	a5,0(a2)
    80005534:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005538:	00063783          	ld	a5,0(a2)
    8000553c:	00053703          	ld	a4,0(a0)
    80005540:	00f70e63          	beq	a4,a5,8000555c <uartstart+0x68>
    80005544:	01f7f713          	andi	a4,a5,31
    80005548:	00e806b3          	add	a3,a6,a4
    8000554c:	0055c703          	lbu	a4,5(a1)
    80005550:	00178793          	addi	a5,a5,1
    80005554:	02077713          	andi	a4,a4,32
    80005558:	fc071ae3          	bnez	a4,8000552c <uartstart+0x38>
    8000555c:	00813403          	ld	s0,8(sp)
    80005560:	01010113          	addi	sp,sp,16
    80005564:	00008067          	ret

0000000080005568 <uartgetc>:
    80005568:	ff010113          	addi	sp,sp,-16
    8000556c:	00813423          	sd	s0,8(sp)
    80005570:	01010413          	addi	s0,sp,16
    80005574:	10000737          	lui	a4,0x10000
    80005578:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000557c:	0017f793          	andi	a5,a5,1
    80005580:	00078c63          	beqz	a5,80005598 <uartgetc+0x30>
    80005584:	00074503          	lbu	a0,0(a4)
    80005588:	0ff57513          	andi	a0,a0,255
    8000558c:	00813403          	ld	s0,8(sp)
    80005590:	01010113          	addi	sp,sp,16
    80005594:	00008067          	ret
    80005598:	fff00513          	li	a0,-1
    8000559c:	ff1ff06f          	j	8000558c <uartgetc+0x24>

00000000800055a0 <uartintr>:
    800055a0:	100007b7          	lui	a5,0x10000
    800055a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800055a8:	0017f793          	andi	a5,a5,1
    800055ac:	0a078463          	beqz	a5,80005654 <uartintr+0xb4>
    800055b0:	fe010113          	addi	sp,sp,-32
    800055b4:	00813823          	sd	s0,16(sp)
    800055b8:	00913423          	sd	s1,8(sp)
    800055bc:	00113c23          	sd	ra,24(sp)
    800055c0:	02010413          	addi	s0,sp,32
    800055c4:	100004b7          	lui	s1,0x10000
    800055c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800055cc:	0ff57513          	andi	a0,a0,255
    800055d0:	fffff097          	auipc	ra,0xfffff
    800055d4:	534080e7          	jalr	1332(ra) # 80004b04 <consoleintr>
    800055d8:	0054c783          	lbu	a5,5(s1)
    800055dc:	0017f793          	andi	a5,a5,1
    800055e0:	fe0794e3          	bnez	a5,800055c8 <uartintr+0x28>
    800055e4:	00003617          	auipc	a2,0x3
    800055e8:	2cc60613          	addi	a2,a2,716 # 800088b0 <uart_tx_r>
    800055ec:	00003517          	auipc	a0,0x3
    800055f0:	2cc50513          	addi	a0,a0,716 # 800088b8 <uart_tx_w>
    800055f4:	00063783          	ld	a5,0(a2)
    800055f8:	00053703          	ld	a4,0(a0)
    800055fc:	04f70263          	beq	a4,a5,80005640 <uartintr+0xa0>
    80005600:	100005b7          	lui	a1,0x10000
    80005604:	00004817          	auipc	a6,0x4
    80005608:	57c80813          	addi	a6,a6,1404 # 80009b80 <uart_tx_buf>
    8000560c:	01c0006f          	j	80005628 <uartintr+0x88>
    80005610:	0006c703          	lbu	a4,0(a3)
    80005614:	00f63023          	sd	a5,0(a2)
    80005618:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000561c:	00063783          	ld	a5,0(a2)
    80005620:	00053703          	ld	a4,0(a0)
    80005624:	00f70e63          	beq	a4,a5,80005640 <uartintr+0xa0>
    80005628:	01f7f713          	andi	a4,a5,31
    8000562c:	00e806b3          	add	a3,a6,a4
    80005630:	0055c703          	lbu	a4,5(a1)
    80005634:	00178793          	addi	a5,a5,1
    80005638:	02077713          	andi	a4,a4,32
    8000563c:	fc071ae3          	bnez	a4,80005610 <uartintr+0x70>
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00813483          	ld	s1,8(sp)
    8000564c:	02010113          	addi	sp,sp,32
    80005650:	00008067          	ret
    80005654:	00003617          	auipc	a2,0x3
    80005658:	25c60613          	addi	a2,a2,604 # 800088b0 <uart_tx_r>
    8000565c:	00003517          	auipc	a0,0x3
    80005660:	25c50513          	addi	a0,a0,604 # 800088b8 <uart_tx_w>
    80005664:	00063783          	ld	a5,0(a2)
    80005668:	00053703          	ld	a4,0(a0)
    8000566c:	04f70263          	beq	a4,a5,800056b0 <uartintr+0x110>
    80005670:	100005b7          	lui	a1,0x10000
    80005674:	00004817          	auipc	a6,0x4
    80005678:	50c80813          	addi	a6,a6,1292 # 80009b80 <uart_tx_buf>
    8000567c:	01c0006f          	j	80005698 <uartintr+0xf8>
    80005680:	0006c703          	lbu	a4,0(a3)
    80005684:	00f63023          	sd	a5,0(a2)
    80005688:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000568c:	00063783          	ld	a5,0(a2)
    80005690:	00053703          	ld	a4,0(a0)
    80005694:	02f70063          	beq	a4,a5,800056b4 <uartintr+0x114>
    80005698:	01f7f713          	andi	a4,a5,31
    8000569c:	00e806b3          	add	a3,a6,a4
    800056a0:	0055c703          	lbu	a4,5(a1)
    800056a4:	00178793          	addi	a5,a5,1
    800056a8:	02077713          	andi	a4,a4,32
    800056ac:	fc071ae3          	bnez	a4,80005680 <uartintr+0xe0>
    800056b0:	00008067          	ret
    800056b4:	00008067          	ret

00000000800056b8 <kinit>:
    800056b8:	fc010113          	addi	sp,sp,-64
    800056bc:	02913423          	sd	s1,40(sp)
    800056c0:	fffff7b7          	lui	a5,0xfffff
    800056c4:	00005497          	auipc	s1,0x5
    800056c8:	4db48493          	addi	s1,s1,1243 # 8000ab9f <end+0xfff>
    800056cc:	02813823          	sd	s0,48(sp)
    800056d0:	01313c23          	sd	s3,24(sp)
    800056d4:	00f4f4b3          	and	s1,s1,a5
    800056d8:	02113c23          	sd	ra,56(sp)
    800056dc:	03213023          	sd	s2,32(sp)
    800056e0:	01413823          	sd	s4,16(sp)
    800056e4:	01513423          	sd	s5,8(sp)
    800056e8:	04010413          	addi	s0,sp,64
    800056ec:	000017b7          	lui	a5,0x1
    800056f0:	01100993          	li	s3,17
    800056f4:	00f487b3          	add	a5,s1,a5
    800056f8:	01b99993          	slli	s3,s3,0x1b
    800056fc:	06f9e063          	bltu	s3,a5,8000575c <kinit+0xa4>
    80005700:	00004a97          	auipc	s5,0x4
    80005704:	4a0a8a93          	addi	s5,s5,1184 # 80009ba0 <end>
    80005708:	0754ec63          	bltu	s1,s5,80005780 <kinit+0xc8>
    8000570c:	0734fa63          	bgeu	s1,s3,80005780 <kinit+0xc8>
    80005710:	00088a37          	lui	s4,0x88
    80005714:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005718:	00003917          	auipc	s2,0x3
    8000571c:	1a890913          	addi	s2,s2,424 # 800088c0 <kmem>
    80005720:	00ca1a13          	slli	s4,s4,0xc
    80005724:	0140006f          	j	80005738 <kinit+0x80>
    80005728:	000017b7          	lui	a5,0x1
    8000572c:	00f484b3          	add	s1,s1,a5
    80005730:	0554e863          	bltu	s1,s5,80005780 <kinit+0xc8>
    80005734:	0534f663          	bgeu	s1,s3,80005780 <kinit+0xc8>
    80005738:	00001637          	lui	a2,0x1
    8000573c:	00100593          	li	a1,1
    80005740:	00048513          	mv	a0,s1
    80005744:	00000097          	auipc	ra,0x0
    80005748:	5e4080e7          	jalr	1508(ra) # 80005d28 <__memset>
    8000574c:	00093783          	ld	a5,0(s2)
    80005750:	00f4b023          	sd	a5,0(s1)
    80005754:	00993023          	sd	s1,0(s2)
    80005758:	fd4498e3          	bne	s1,s4,80005728 <kinit+0x70>
    8000575c:	03813083          	ld	ra,56(sp)
    80005760:	03013403          	ld	s0,48(sp)
    80005764:	02813483          	ld	s1,40(sp)
    80005768:	02013903          	ld	s2,32(sp)
    8000576c:	01813983          	ld	s3,24(sp)
    80005770:	01013a03          	ld	s4,16(sp)
    80005774:	00813a83          	ld	s5,8(sp)
    80005778:	04010113          	addi	sp,sp,64
    8000577c:	00008067          	ret
    80005780:	00002517          	auipc	a0,0x2
    80005784:	b4850513          	addi	a0,a0,-1208 # 800072c8 <digits+0x18>
    80005788:	fffff097          	auipc	ra,0xfffff
    8000578c:	4b4080e7          	jalr	1204(ra) # 80004c3c <panic>

0000000080005790 <freerange>:
    80005790:	fc010113          	addi	sp,sp,-64
    80005794:	000017b7          	lui	a5,0x1
    80005798:	02913423          	sd	s1,40(sp)
    8000579c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800057a0:	009504b3          	add	s1,a0,s1
    800057a4:	fffff537          	lui	a0,0xfffff
    800057a8:	02813823          	sd	s0,48(sp)
    800057ac:	02113c23          	sd	ra,56(sp)
    800057b0:	03213023          	sd	s2,32(sp)
    800057b4:	01313c23          	sd	s3,24(sp)
    800057b8:	01413823          	sd	s4,16(sp)
    800057bc:	01513423          	sd	s5,8(sp)
    800057c0:	01613023          	sd	s6,0(sp)
    800057c4:	04010413          	addi	s0,sp,64
    800057c8:	00a4f4b3          	and	s1,s1,a0
    800057cc:	00f487b3          	add	a5,s1,a5
    800057d0:	06f5e463          	bltu	a1,a5,80005838 <freerange+0xa8>
    800057d4:	00004a97          	auipc	s5,0x4
    800057d8:	3cca8a93          	addi	s5,s5,972 # 80009ba0 <end>
    800057dc:	0954e263          	bltu	s1,s5,80005860 <freerange+0xd0>
    800057e0:	01100993          	li	s3,17
    800057e4:	01b99993          	slli	s3,s3,0x1b
    800057e8:	0734fc63          	bgeu	s1,s3,80005860 <freerange+0xd0>
    800057ec:	00058a13          	mv	s4,a1
    800057f0:	00003917          	auipc	s2,0x3
    800057f4:	0d090913          	addi	s2,s2,208 # 800088c0 <kmem>
    800057f8:	00002b37          	lui	s6,0x2
    800057fc:	0140006f          	j	80005810 <freerange+0x80>
    80005800:	000017b7          	lui	a5,0x1
    80005804:	00f484b3          	add	s1,s1,a5
    80005808:	0554ec63          	bltu	s1,s5,80005860 <freerange+0xd0>
    8000580c:	0534fa63          	bgeu	s1,s3,80005860 <freerange+0xd0>
    80005810:	00001637          	lui	a2,0x1
    80005814:	00100593          	li	a1,1
    80005818:	00048513          	mv	a0,s1
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	50c080e7          	jalr	1292(ra) # 80005d28 <__memset>
    80005824:	00093703          	ld	a4,0(s2)
    80005828:	016487b3          	add	a5,s1,s6
    8000582c:	00e4b023          	sd	a4,0(s1)
    80005830:	00993023          	sd	s1,0(s2)
    80005834:	fcfa76e3          	bgeu	s4,a5,80005800 <freerange+0x70>
    80005838:	03813083          	ld	ra,56(sp)
    8000583c:	03013403          	ld	s0,48(sp)
    80005840:	02813483          	ld	s1,40(sp)
    80005844:	02013903          	ld	s2,32(sp)
    80005848:	01813983          	ld	s3,24(sp)
    8000584c:	01013a03          	ld	s4,16(sp)
    80005850:	00813a83          	ld	s5,8(sp)
    80005854:	00013b03          	ld	s6,0(sp)
    80005858:	04010113          	addi	sp,sp,64
    8000585c:	00008067          	ret
    80005860:	00002517          	auipc	a0,0x2
    80005864:	a6850513          	addi	a0,a0,-1432 # 800072c8 <digits+0x18>
    80005868:	fffff097          	auipc	ra,0xfffff
    8000586c:	3d4080e7          	jalr	980(ra) # 80004c3c <panic>

0000000080005870 <kfree>:
    80005870:	fe010113          	addi	sp,sp,-32
    80005874:	00813823          	sd	s0,16(sp)
    80005878:	00113c23          	sd	ra,24(sp)
    8000587c:	00913423          	sd	s1,8(sp)
    80005880:	02010413          	addi	s0,sp,32
    80005884:	03451793          	slli	a5,a0,0x34
    80005888:	04079c63          	bnez	a5,800058e0 <kfree+0x70>
    8000588c:	00004797          	auipc	a5,0x4
    80005890:	31478793          	addi	a5,a5,788 # 80009ba0 <end>
    80005894:	00050493          	mv	s1,a0
    80005898:	04f56463          	bltu	a0,a5,800058e0 <kfree+0x70>
    8000589c:	01100793          	li	a5,17
    800058a0:	01b79793          	slli	a5,a5,0x1b
    800058a4:	02f57e63          	bgeu	a0,a5,800058e0 <kfree+0x70>
    800058a8:	00001637          	lui	a2,0x1
    800058ac:	00100593          	li	a1,1
    800058b0:	00000097          	auipc	ra,0x0
    800058b4:	478080e7          	jalr	1144(ra) # 80005d28 <__memset>
    800058b8:	00003797          	auipc	a5,0x3
    800058bc:	00878793          	addi	a5,a5,8 # 800088c0 <kmem>
    800058c0:	0007b703          	ld	a4,0(a5)
    800058c4:	01813083          	ld	ra,24(sp)
    800058c8:	01013403          	ld	s0,16(sp)
    800058cc:	00e4b023          	sd	a4,0(s1)
    800058d0:	0097b023          	sd	s1,0(a5)
    800058d4:	00813483          	ld	s1,8(sp)
    800058d8:	02010113          	addi	sp,sp,32
    800058dc:	00008067          	ret
    800058e0:	00002517          	auipc	a0,0x2
    800058e4:	9e850513          	addi	a0,a0,-1560 # 800072c8 <digits+0x18>
    800058e8:	fffff097          	auipc	ra,0xfffff
    800058ec:	354080e7          	jalr	852(ra) # 80004c3c <panic>

00000000800058f0 <kalloc>:
    800058f0:	fe010113          	addi	sp,sp,-32
    800058f4:	00813823          	sd	s0,16(sp)
    800058f8:	00913423          	sd	s1,8(sp)
    800058fc:	00113c23          	sd	ra,24(sp)
    80005900:	02010413          	addi	s0,sp,32
    80005904:	00003797          	auipc	a5,0x3
    80005908:	fbc78793          	addi	a5,a5,-68 # 800088c0 <kmem>
    8000590c:	0007b483          	ld	s1,0(a5)
    80005910:	02048063          	beqz	s1,80005930 <kalloc+0x40>
    80005914:	0004b703          	ld	a4,0(s1)
    80005918:	00001637          	lui	a2,0x1
    8000591c:	00500593          	li	a1,5
    80005920:	00048513          	mv	a0,s1
    80005924:	00e7b023          	sd	a4,0(a5)
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	400080e7          	jalr	1024(ra) # 80005d28 <__memset>
    80005930:	01813083          	ld	ra,24(sp)
    80005934:	01013403          	ld	s0,16(sp)
    80005938:	00048513          	mv	a0,s1
    8000593c:	00813483          	ld	s1,8(sp)
    80005940:	02010113          	addi	sp,sp,32
    80005944:	00008067          	ret

0000000080005948 <initlock>:
    80005948:	ff010113          	addi	sp,sp,-16
    8000594c:	00813423          	sd	s0,8(sp)
    80005950:	01010413          	addi	s0,sp,16
    80005954:	00813403          	ld	s0,8(sp)
    80005958:	00b53423          	sd	a1,8(a0)
    8000595c:	00052023          	sw	zero,0(a0)
    80005960:	00053823          	sd	zero,16(a0)
    80005964:	01010113          	addi	sp,sp,16
    80005968:	00008067          	ret

000000008000596c <acquire>:
    8000596c:	fe010113          	addi	sp,sp,-32
    80005970:	00813823          	sd	s0,16(sp)
    80005974:	00913423          	sd	s1,8(sp)
    80005978:	00113c23          	sd	ra,24(sp)
    8000597c:	01213023          	sd	s2,0(sp)
    80005980:	02010413          	addi	s0,sp,32
    80005984:	00050493          	mv	s1,a0
    80005988:	10002973          	csrr	s2,sstatus
    8000598c:	100027f3          	csrr	a5,sstatus
    80005990:	ffd7f793          	andi	a5,a5,-3
    80005994:	10079073          	csrw	sstatus,a5
    80005998:	fffff097          	auipc	ra,0xfffff
    8000599c:	8e4080e7          	jalr	-1820(ra) # 8000427c <mycpu>
    800059a0:	07852783          	lw	a5,120(a0)
    800059a4:	06078e63          	beqz	a5,80005a20 <acquire+0xb4>
    800059a8:	fffff097          	auipc	ra,0xfffff
    800059ac:	8d4080e7          	jalr	-1836(ra) # 8000427c <mycpu>
    800059b0:	07852783          	lw	a5,120(a0)
    800059b4:	0004a703          	lw	a4,0(s1)
    800059b8:	0017879b          	addiw	a5,a5,1
    800059bc:	06f52c23          	sw	a5,120(a0)
    800059c0:	04071063          	bnez	a4,80005a00 <acquire+0x94>
    800059c4:	00100713          	li	a4,1
    800059c8:	00070793          	mv	a5,a4
    800059cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800059d0:	0007879b          	sext.w	a5,a5
    800059d4:	fe079ae3          	bnez	a5,800059c8 <acquire+0x5c>
    800059d8:	0ff0000f          	fence
    800059dc:	fffff097          	auipc	ra,0xfffff
    800059e0:	8a0080e7          	jalr	-1888(ra) # 8000427c <mycpu>
    800059e4:	01813083          	ld	ra,24(sp)
    800059e8:	01013403          	ld	s0,16(sp)
    800059ec:	00a4b823          	sd	a0,16(s1)
    800059f0:	00013903          	ld	s2,0(sp)
    800059f4:	00813483          	ld	s1,8(sp)
    800059f8:	02010113          	addi	sp,sp,32
    800059fc:	00008067          	ret
    80005a00:	0104b903          	ld	s2,16(s1)
    80005a04:	fffff097          	auipc	ra,0xfffff
    80005a08:	878080e7          	jalr	-1928(ra) # 8000427c <mycpu>
    80005a0c:	faa91ce3          	bne	s2,a0,800059c4 <acquire+0x58>
    80005a10:	00002517          	auipc	a0,0x2
    80005a14:	8c050513          	addi	a0,a0,-1856 # 800072d0 <digits+0x20>
    80005a18:	fffff097          	auipc	ra,0xfffff
    80005a1c:	224080e7          	jalr	548(ra) # 80004c3c <panic>
    80005a20:	00195913          	srli	s2,s2,0x1
    80005a24:	fffff097          	auipc	ra,0xfffff
    80005a28:	858080e7          	jalr	-1960(ra) # 8000427c <mycpu>
    80005a2c:	00197913          	andi	s2,s2,1
    80005a30:	07252e23          	sw	s2,124(a0)
    80005a34:	f75ff06f          	j	800059a8 <acquire+0x3c>

0000000080005a38 <release>:
    80005a38:	fe010113          	addi	sp,sp,-32
    80005a3c:	00813823          	sd	s0,16(sp)
    80005a40:	00113c23          	sd	ra,24(sp)
    80005a44:	00913423          	sd	s1,8(sp)
    80005a48:	01213023          	sd	s2,0(sp)
    80005a4c:	02010413          	addi	s0,sp,32
    80005a50:	00052783          	lw	a5,0(a0)
    80005a54:	00079a63          	bnez	a5,80005a68 <release+0x30>
    80005a58:	00002517          	auipc	a0,0x2
    80005a5c:	88050513          	addi	a0,a0,-1920 # 800072d8 <digits+0x28>
    80005a60:	fffff097          	auipc	ra,0xfffff
    80005a64:	1dc080e7          	jalr	476(ra) # 80004c3c <panic>
    80005a68:	01053903          	ld	s2,16(a0)
    80005a6c:	00050493          	mv	s1,a0
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	80c080e7          	jalr	-2036(ra) # 8000427c <mycpu>
    80005a78:	fea910e3          	bne	s2,a0,80005a58 <release+0x20>
    80005a7c:	0004b823          	sd	zero,16(s1)
    80005a80:	0ff0000f          	fence
    80005a84:	0f50000f          	fence	iorw,ow
    80005a88:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005a8c:	ffffe097          	auipc	ra,0xffffe
    80005a90:	7f0080e7          	jalr	2032(ra) # 8000427c <mycpu>
    80005a94:	100027f3          	csrr	a5,sstatus
    80005a98:	0027f793          	andi	a5,a5,2
    80005a9c:	04079a63          	bnez	a5,80005af0 <release+0xb8>
    80005aa0:	07852783          	lw	a5,120(a0)
    80005aa4:	02f05e63          	blez	a5,80005ae0 <release+0xa8>
    80005aa8:	fff7871b          	addiw	a4,a5,-1
    80005aac:	06e52c23          	sw	a4,120(a0)
    80005ab0:	00071c63          	bnez	a4,80005ac8 <release+0x90>
    80005ab4:	07c52783          	lw	a5,124(a0)
    80005ab8:	00078863          	beqz	a5,80005ac8 <release+0x90>
    80005abc:	100027f3          	csrr	a5,sstatus
    80005ac0:	0027e793          	ori	a5,a5,2
    80005ac4:	10079073          	csrw	sstatus,a5
    80005ac8:	01813083          	ld	ra,24(sp)
    80005acc:	01013403          	ld	s0,16(sp)
    80005ad0:	00813483          	ld	s1,8(sp)
    80005ad4:	00013903          	ld	s2,0(sp)
    80005ad8:	02010113          	addi	sp,sp,32
    80005adc:	00008067          	ret
    80005ae0:	00002517          	auipc	a0,0x2
    80005ae4:	81850513          	addi	a0,a0,-2024 # 800072f8 <digits+0x48>
    80005ae8:	fffff097          	auipc	ra,0xfffff
    80005aec:	154080e7          	jalr	340(ra) # 80004c3c <panic>
    80005af0:	00001517          	auipc	a0,0x1
    80005af4:	7f050513          	addi	a0,a0,2032 # 800072e0 <digits+0x30>
    80005af8:	fffff097          	auipc	ra,0xfffff
    80005afc:	144080e7          	jalr	324(ra) # 80004c3c <panic>

0000000080005b00 <holding>:
    80005b00:	00052783          	lw	a5,0(a0)
    80005b04:	00079663          	bnez	a5,80005b10 <holding+0x10>
    80005b08:	00000513          	li	a0,0
    80005b0c:	00008067          	ret
    80005b10:	fe010113          	addi	sp,sp,-32
    80005b14:	00813823          	sd	s0,16(sp)
    80005b18:	00913423          	sd	s1,8(sp)
    80005b1c:	00113c23          	sd	ra,24(sp)
    80005b20:	02010413          	addi	s0,sp,32
    80005b24:	01053483          	ld	s1,16(a0)
    80005b28:	ffffe097          	auipc	ra,0xffffe
    80005b2c:	754080e7          	jalr	1876(ra) # 8000427c <mycpu>
    80005b30:	01813083          	ld	ra,24(sp)
    80005b34:	01013403          	ld	s0,16(sp)
    80005b38:	40a48533          	sub	a0,s1,a0
    80005b3c:	00153513          	seqz	a0,a0
    80005b40:	00813483          	ld	s1,8(sp)
    80005b44:	02010113          	addi	sp,sp,32
    80005b48:	00008067          	ret

0000000080005b4c <push_off>:
    80005b4c:	fe010113          	addi	sp,sp,-32
    80005b50:	00813823          	sd	s0,16(sp)
    80005b54:	00113c23          	sd	ra,24(sp)
    80005b58:	00913423          	sd	s1,8(sp)
    80005b5c:	02010413          	addi	s0,sp,32
    80005b60:	100024f3          	csrr	s1,sstatus
    80005b64:	100027f3          	csrr	a5,sstatus
    80005b68:	ffd7f793          	andi	a5,a5,-3
    80005b6c:	10079073          	csrw	sstatus,a5
    80005b70:	ffffe097          	auipc	ra,0xffffe
    80005b74:	70c080e7          	jalr	1804(ra) # 8000427c <mycpu>
    80005b78:	07852783          	lw	a5,120(a0)
    80005b7c:	02078663          	beqz	a5,80005ba8 <push_off+0x5c>
    80005b80:	ffffe097          	auipc	ra,0xffffe
    80005b84:	6fc080e7          	jalr	1788(ra) # 8000427c <mycpu>
    80005b88:	07852783          	lw	a5,120(a0)
    80005b8c:	01813083          	ld	ra,24(sp)
    80005b90:	01013403          	ld	s0,16(sp)
    80005b94:	0017879b          	addiw	a5,a5,1
    80005b98:	06f52c23          	sw	a5,120(a0)
    80005b9c:	00813483          	ld	s1,8(sp)
    80005ba0:	02010113          	addi	sp,sp,32
    80005ba4:	00008067          	ret
    80005ba8:	0014d493          	srli	s1,s1,0x1
    80005bac:	ffffe097          	auipc	ra,0xffffe
    80005bb0:	6d0080e7          	jalr	1744(ra) # 8000427c <mycpu>
    80005bb4:	0014f493          	andi	s1,s1,1
    80005bb8:	06952e23          	sw	s1,124(a0)
    80005bbc:	fc5ff06f          	j	80005b80 <push_off+0x34>

0000000080005bc0 <pop_off>:
    80005bc0:	ff010113          	addi	sp,sp,-16
    80005bc4:	00813023          	sd	s0,0(sp)
    80005bc8:	00113423          	sd	ra,8(sp)
    80005bcc:	01010413          	addi	s0,sp,16
    80005bd0:	ffffe097          	auipc	ra,0xffffe
    80005bd4:	6ac080e7          	jalr	1708(ra) # 8000427c <mycpu>
    80005bd8:	100027f3          	csrr	a5,sstatus
    80005bdc:	0027f793          	andi	a5,a5,2
    80005be0:	04079663          	bnez	a5,80005c2c <pop_off+0x6c>
    80005be4:	07852783          	lw	a5,120(a0)
    80005be8:	02f05a63          	blez	a5,80005c1c <pop_off+0x5c>
    80005bec:	fff7871b          	addiw	a4,a5,-1
    80005bf0:	06e52c23          	sw	a4,120(a0)
    80005bf4:	00071c63          	bnez	a4,80005c0c <pop_off+0x4c>
    80005bf8:	07c52783          	lw	a5,124(a0)
    80005bfc:	00078863          	beqz	a5,80005c0c <pop_off+0x4c>
    80005c00:	100027f3          	csrr	a5,sstatus
    80005c04:	0027e793          	ori	a5,a5,2
    80005c08:	10079073          	csrw	sstatus,a5
    80005c0c:	00813083          	ld	ra,8(sp)
    80005c10:	00013403          	ld	s0,0(sp)
    80005c14:	01010113          	addi	sp,sp,16
    80005c18:	00008067          	ret
    80005c1c:	00001517          	auipc	a0,0x1
    80005c20:	6dc50513          	addi	a0,a0,1756 # 800072f8 <digits+0x48>
    80005c24:	fffff097          	auipc	ra,0xfffff
    80005c28:	018080e7          	jalr	24(ra) # 80004c3c <panic>
    80005c2c:	00001517          	auipc	a0,0x1
    80005c30:	6b450513          	addi	a0,a0,1716 # 800072e0 <digits+0x30>
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	008080e7          	jalr	8(ra) # 80004c3c <panic>

0000000080005c3c <push_on>:
    80005c3c:	fe010113          	addi	sp,sp,-32
    80005c40:	00813823          	sd	s0,16(sp)
    80005c44:	00113c23          	sd	ra,24(sp)
    80005c48:	00913423          	sd	s1,8(sp)
    80005c4c:	02010413          	addi	s0,sp,32
    80005c50:	100024f3          	csrr	s1,sstatus
    80005c54:	100027f3          	csrr	a5,sstatus
    80005c58:	0027e793          	ori	a5,a5,2
    80005c5c:	10079073          	csrw	sstatus,a5
    80005c60:	ffffe097          	auipc	ra,0xffffe
    80005c64:	61c080e7          	jalr	1564(ra) # 8000427c <mycpu>
    80005c68:	07852783          	lw	a5,120(a0)
    80005c6c:	02078663          	beqz	a5,80005c98 <push_on+0x5c>
    80005c70:	ffffe097          	auipc	ra,0xffffe
    80005c74:	60c080e7          	jalr	1548(ra) # 8000427c <mycpu>
    80005c78:	07852783          	lw	a5,120(a0)
    80005c7c:	01813083          	ld	ra,24(sp)
    80005c80:	01013403          	ld	s0,16(sp)
    80005c84:	0017879b          	addiw	a5,a5,1
    80005c88:	06f52c23          	sw	a5,120(a0)
    80005c8c:	00813483          	ld	s1,8(sp)
    80005c90:	02010113          	addi	sp,sp,32
    80005c94:	00008067          	ret
    80005c98:	0014d493          	srli	s1,s1,0x1
    80005c9c:	ffffe097          	auipc	ra,0xffffe
    80005ca0:	5e0080e7          	jalr	1504(ra) # 8000427c <mycpu>
    80005ca4:	0014f493          	andi	s1,s1,1
    80005ca8:	06952e23          	sw	s1,124(a0)
    80005cac:	fc5ff06f          	j	80005c70 <push_on+0x34>

0000000080005cb0 <pop_on>:
    80005cb0:	ff010113          	addi	sp,sp,-16
    80005cb4:	00813023          	sd	s0,0(sp)
    80005cb8:	00113423          	sd	ra,8(sp)
    80005cbc:	01010413          	addi	s0,sp,16
    80005cc0:	ffffe097          	auipc	ra,0xffffe
    80005cc4:	5bc080e7          	jalr	1468(ra) # 8000427c <mycpu>
    80005cc8:	100027f3          	csrr	a5,sstatus
    80005ccc:	0027f793          	andi	a5,a5,2
    80005cd0:	04078463          	beqz	a5,80005d18 <pop_on+0x68>
    80005cd4:	07852783          	lw	a5,120(a0)
    80005cd8:	02f05863          	blez	a5,80005d08 <pop_on+0x58>
    80005cdc:	fff7879b          	addiw	a5,a5,-1
    80005ce0:	06f52c23          	sw	a5,120(a0)
    80005ce4:	07853783          	ld	a5,120(a0)
    80005ce8:	00079863          	bnez	a5,80005cf8 <pop_on+0x48>
    80005cec:	100027f3          	csrr	a5,sstatus
    80005cf0:	ffd7f793          	andi	a5,a5,-3
    80005cf4:	10079073          	csrw	sstatus,a5
    80005cf8:	00813083          	ld	ra,8(sp)
    80005cfc:	00013403          	ld	s0,0(sp)
    80005d00:	01010113          	addi	sp,sp,16
    80005d04:	00008067          	ret
    80005d08:	00001517          	auipc	a0,0x1
    80005d0c:	61850513          	addi	a0,a0,1560 # 80007320 <digits+0x70>
    80005d10:	fffff097          	auipc	ra,0xfffff
    80005d14:	f2c080e7          	jalr	-212(ra) # 80004c3c <panic>
    80005d18:	00001517          	auipc	a0,0x1
    80005d1c:	5e850513          	addi	a0,a0,1512 # 80007300 <digits+0x50>
    80005d20:	fffff097          	auipc	ra,0xfffff
    80005d24:	f1c080e7          	jalr	-228(ra) # 80004c3c <panic>

0000000080005d28 <__memset>:
    80005d28:	ff010113          	addi	sp,sp,-16
    80005d2c:	00813423          	sd	s0,8(sp)
    80005d30:	01010413          	addi	s0,sp,16
    80005d34:	1a060e63          	beqz	a2,80005ef0 <__memset+0x1c8>
    80005d38:	40a007b3          	neg	a5,a0
    80005d3c:	0077f793          	andi	a5,a5,7
    80005d40:	00778693          	addi	a3,a5,7
    80005d44:	00b00813          	li	a6,11
    80005d48:	0ff5f593          	andi	a1,a1,255
    80005d4c:	fff6071b          	addiw	a4,a2,-1
    80005d50:	1b06e663          	bltu	a3,a6,80005efc <__memset+0x1d4>
    80005d54:	1cd76463          	bltu	a4,a3,80005f1c <__memset+0x1f4>
    80005d58:	1a078e63          	beqz	a5,80005f14 <__memset+0x1ec>
    80005d5c:	00b50023          	sb	a1,0(a0)
    80005d60:	00100713          	li	a4,1
    80005d64:	1ae78463          	beq	a5,a4,80005f0c <__memset+0x1e4>
    80005d68:	00b500a3          	sb	a1,1(a0)
    80005d6c:	00200713          	li	a4,2
    80005d70:	1ae78a63          	beq	a5,a4,80005f24 <__memset+0x1fc>
    80005d74:	00b50123          	sb	a1,2(a0)
    80005d78:	00300713          	li	a4,3
    80005d7c:	18e78463          	beq	a5,a4,80005f04 <__memset+0x1dc>
    80005d80:	00b501a3          	sb	a1,3(a0)
    80005d84:	00400713          	li	a4,4
    80005d88:	1ae78263          	beq	a5,a4,80005f2c <__memset+0x204>
    80005d8c:	00b50223          	sb	a1,4(a0)
    80005d90:	00500713          	li	a4,5
    80005d94:	1ae78063          	beq	a5,a4,80005f34 <__memset+0x20c>
    80005d98:	00b502a3          	sb	a1,5(a0)
    80005d9c:	00700713          	li	a4,7
    80005da0:	18e79e63          	bne	a5,a4,80005f3c <__memset+0x214>
    80005da4:	00b50323          	sb	a1,6(a0)
    80005da8:	00700e93          	li	t4,7
    80005dac:	00859713          	slli	a4,a1,0x8
    80005db0:	00e5e733          	or	a4,a1,a4
    80005db4:	01059e13          	slli	t3,a1,0x10
    80005db8:	01c76e33          	or	t3,a4,t3
    80005dbc:	01859313          	slli	t1,a1,0x18
    80005dc0:	006e6333          	or	t1,t3,t1
    80005dc4:	02059893          	slli	a7,a1,0x20
    80005dc8:	40f60e3b          	subw	t3,a2,a5
    80005dcc:	011368b3          	or	a7,t1,a7
    80005dd0:	02859813          	slli	a6,a1,0x28
    80005dd4:	0108e833          	or	a6,a7,a6
    80005dd8:	03059693          	slli	a3,a1,0x30
    80005ddc:	003e589b          	srliw	a7,t3,0x3
    80005de0:	00d866b3          	or	a3,a6,a3
    80005de4:	03859713          	slli	a4,a1,0x38
    80005de8:	00389813          	slli	a6,a7,0x3
    80005dec:	00f507b3          	add	a5,a0,a5
    80005df0:	00e6e733          	or	a4,a3,a4
    80005df4:	000e089b          	sext.w	a7,t3
    80005df8:	00f806b3          	add	a3,a6,a5
    80005dfc:	00e7b023          	sd	a4,0(a5)
    80005e00:	00878793          	addi	a5,a5,8
    80005e04:	fed79ce3          	bne	a5,a3,80005dfc <__memset+0xd4>
    80005e08:	ff8e7793          	andi	a5,t3,-8
    80005e0c:	0007871b          	sext.w	a4,a5
    80005e10:	01d787bb          	addw	a5,a5,t4
    80005e14:	0ce88e63          	beq	a7,a4,80005ef0 <__memset+0x1c8>
    80005e18:	00f50733          	add	a4,a0,a5
    80005e1c:	00b70023          	sb	a1,0(a4)
    80005e20:	0017871b          	addiw	a4,a5,1
    80005e24:	0cc77663          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e28:	00e50733          	add	a4,a0,a4
    80005e2c:	00b70023          	sb	a1,0(a4)
    80005e30:	0027871b          	addiw	a4,a5,2
    80005e34:	0ac77e63          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e38:	00e50733          	add	a4,a0,a4
    80005e3c:	00b70023          	sb	a1,0(a4)
    80005e40:	0037871b          	addiw	a4,a5,3
    80005e44:	0ac77663          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e48:	00e50733          	add	a4,a0,a4
    80005e4c:	00b70023          	sb	a1,0(a4)
    80005e50:	0047871b          	addiw	a4,a5,4
    80005e54:	08c77e63          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e58:	00e50733          	add	a4,a0,a4
    80005e5c:	00b70023          	sb	a1,0(a4)
    80005e60:	0057871b          	addiw	a4,a5,5
    80005e64:	08c77663          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e68:	00e50733          	add	a4,a0,a4
    80005e6c:	00b70023          	sb	a1,0(a4)
    80005e70:	0067871b          	addiw	a4,a5,6
    80005e74:	06c77e63          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e78:	00e50733          	add	a4,a0,a4
    80005e7c:	00b70023          	sb	a1,0(a4)
    80005e80:	0077871b          	addiw	a4,a5,7
    80005e84:	06c77663          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e88:	00e50733          	add	a4,a0,a4
    80005e8c:	00b70023          	sb	a1,0(a4)
    80005e90:	0087871b          	addiw	a4,a5,8
    80005e94:	04c77e63          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005e98:	00e50733          	add	a4,a0,a4
    80005e9c:	00b70023          	sb	a1,0(a4)
    80005ea0:	0097871b          	addiw	a4,a5,9
    80005ea4:	04c77663          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005ea8:	00e50733          	add	a4,a0,a4
    80005eac:	00b70023          	sb	a1,0(a4)
    80005eb0:	00a7871b          	addiw	a4,a5,10
    80005eb4:	02c77e63          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005eb8:	00e50733          	add	a4,a0,a4
    80005ebc:	00b70023          	sb	a1,0(a4)
    80005ec0:	00b7871b          	addiw	a4,a5,11
    80005ec4:	02c77663          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005ec8:	00e50733          	add	a4,a0,a4
    80005ecc:	00b70023          	sb	a1,0(a4)
    80005ed0:	00c7871b          	addiw	a4,a5,12
    80005ed4:	00c77e63          	bgeu	a4,a2,80005ef0 <__memset+0x1c8>
    80005ed8:	00e50733          	add	a4,a0,a4
    80005edc:	00b70023          	sb	a1,0(a4)
    80005ee0:	00d7879b          	addiw	a5,a5,13
    80005ee4:	00c7f663          	bgeu	a5,a2,80005ef0 <__memset+0x1c8>
    80005ee8:	00f507b3          	add	a5,a0,a5
    80005eec:	00b78023          	sb	a1,0(a5)
    80005ef0:	00813403          	ld	s0,8(sp)
    80005ef4:	01010113          	addi	sp,sp,16
    80005ef8:	00008067          	ret
    80005efc:	00b00693          	li	a3,11
    80005f00:	e55ff06f          	j	80005d54 <__memset+0x2c>
    80005f04:	00300e93          	li	t4,3
    80005f08:	ea5ff06f          	j	80005dac <__memset+0x84>
    80005f0c:	00100e93          	li	t4,1
    80005f10:	e9dff06f          	j	80005dac <__memset+0x84>
    80005f14:	00000e93          	li	t4,0
    80005f18:	e95ff06f          	j	80005dac <__memset+0x84>
    80005f1c:	00000793          	li	a5,0
    80005f20:	ef9ff06f          	j	80005e18 <__memset+0xf0>
    80005f24:	00200e93          	li	t4,2
    80005f28:	e85ff06f          	j	80005dac <__memset+0x84>
    80005f2c:	00400e93          	li	t4,4
    80005f30:	e7dff06f          	j	80005dac <__memset+0x84>
    80005f34:	00500e93          	li	t4,5
    80005f38:	e75ff06f          	j	80005dac <__memset+0x84>
    80005f3c:	00600e93          	li	t4,6
    80005f40:	e6dff06f          	j	80005dac <__memset+0x84>

0000000080005f44 <__memmove>:
    80005f44:	ff010113          	addi	sp,sp,-16
    80005f48:	00813423          	sd	s0,8(sp)
    80005f4c:	01010413          	addi	s0,sp,16
    80005f50:	0e060863          	beqz	a2,80006040 <__memmove+0xfc>
    80005f54:	fff6069b          	addiw	a3,a2,-1
    80005f58:	0006881b          	sext.w	a6,a3
    80005f5c:	0ea5e863          	bltu	a1,a0,8000604c <__memmove+0x108>
    80005f60:	00758713          	addi	a4,a1,7
    80005f64:	00a5e7b3          	or	a5,a1,a0
    80005f68:	40a70733          	sub	a4,a4,a0
    80005f6c:	0077f793          	andi	a5,a5,7
    80005f70:	00f73713          	sltiu	a4,a4,15
    80005f74:	00174713          	xori	a4,a4,1
    80005f78:	0017b793          	seqz	a5,a5
    80005f7c:	00e7f7b3          	and	a5,a5,a4
    80005f80:	10078863          	beqz	a5,80006090 <__memmove+0x14c>
    80005f84:	00900793          	li	a5,9
    80005f88:	1107f463          	bgeu	a5,a6,80006090 <__memmove+0x14c>
    80005f8c:	0036581b          	srliw	a6,a2,0x3
    80005f90:	fff8081b          	addiw	a6,a6,-1
    80005f94:	02081813          	slli	a6,a6,0x20
    80005f98:	01d85893          	srli	a7,a6,0x1d
    80005f9c:	00858813          	addi	a6,a1,8
    80005fa0:	00058793          	mv	a5,a1
    80005fa4:	00050713          	mv	a4,a0
    80005fa8:	01088833          	add	a6,a7,a6
    80005fac:	0007b883          	ld	a7,0(a5)
    80005fb0:	00878793          	addi	a5,a5,8
    80005fb4:	00870713          	addi	a4,a4,8
    80005fb8:	ff173c23          	sd	a7,-8(a4)
    80005fbc:	ff0798e3          	bne	a5,a6,80005fac <__memmove+0x68>
    80005fc0:	ff867713          	andi	a4,a2,-8
    80005fc4:	02071793          	slli	a5,a4,0x20
    80005fc8:	0207d793          	srli	a5,a5,0x20
    80005fcc:	00f585b3          	add	a1,a1,a5
    80005fd0:	40e686bb          	subw	a3,a3,a4
    80005fd4:	00f507b3          	add	a5,a0,a5
    80005fd8:	06e60463          	beq	a2,a4,80006040 <__memmove+0xfc>
    80005fdc:	0005c703          	lbu	a4,0(a1)
    80005fe0:	00e78023          	sb	a4,0(a5)
    80005fe4:	04068e63          	beqz	a3,80006040 <__memmove+0xfc>
    80005fe8:	0015c603          	lbu	a2,1(a1)
    80005fec:	00100713          	li	a4,1
    80005ff0:	00c780a3          	sb	a2,1(a5)
    80005ff4:	04e68663          	beq	a3,a4,80006040 <__memmove+0xfc>
    80005ff8:	0025c603          	lbu	a2,2(a1)
    80005ffc:	00200713          	li	a4,2
    80006000:	00c78123          	sb	a2,2(a5)
    80006004:	02e68e63          	beq	a3,a4,80006040 <__memmove+0xfc>
    80006008:	0035c603          	lbu	a2,3(a1)
    8000600c:	00300713          	li	a4,3
    80006010:	00c781a3          	sb	a2,3(a5)
    80006014:	02e68663          	beq	a3,a4,80006040 <__memmove+0xfc>
    80006018:	0045c603          	lbu	a2,4(a1)
    8000601c:	00400713          	li	a4,4
    80006020:	00c78223          	sb	a2,4(a5)
    80006024:	00e68e63          	beq	a3,a4,80006040 <__memmove+0xfc>
    80006028:	0055c603          	lbu	a2,5(a1)
    8000602c:	00500713          	li	a4,5
    80006030:	00c782a3          	sb	a2,5(a5)
    80006034:	00e68663          	beq	a3,a4,80006040 <__memmove+0xfc>
    80006038:	0065c703          	lbu	a4,6(a1)
    8000603c:	00e78323          	sb	a4,6(a5)
    80006040:	00813403          	ld	s0,8(sp)
    80006044:	01010113          	addi	sp,sp,16
    80006048:	00008067          	ret
    8000604c:	02061713          	slli	a4,a2,0x20
    80006050:	02075713          	srli	a4,a4,0x20
    80006054:	00e587b3          	add	a5,a1,a4
    80006058:	f0f574e3          	bgeu	a0,a5,80005f60 <__memmove+0x1c>
    8000605c:	02069613          	slli	a2,a3,0x20
    80006060:	02065613          	srli	a2,a2,0x20
    80006064:	fff64613          	not	a2,a2
    80006068:	00e50733          	add	a4,a0,a4
    8000606c:	00c78633          	add	a2,a5,a2
    80006070:	fff7c683          	lbu	a3,-1(a5)
    80006074:	fff78793          	addi	a5,a5,-1
    80006078:	fff70713          	addi	a4,a4,-1
    8000607c:	00d70023          	sb	a3,0(a4)
    80006080:	fec798e3          	bne	a5,a2,80006070 <__memmove+0x12c>
    80006084:	00813403          	ld	s0,8(sp)
    80006088:	01010113          	addi	sp,sp,16
    8000608c:	00008067          	ret
    80006090:	02069713          	slli	a4,a3,0x20
    80006094:	02075713          	srli	a4,a4,0x20
    80006098:	00170713          	addi	a4,a4,1
    8000609c:	00e50733          	add	a4,a0,a4
    800060a0:	00050793          	mv	a5,a0
    800060a4:	0005c683          	lbu	a3,0(a1)
    800060a8:	00178793          	addi	a5,a5,1
    800060ac:	00158593          	addi	a1,a1,1
    800060b0:	fed78fa3          	sb	a3,-1(a5)
    800060b4:	fee798e3          	bne	a5,a4,800060a4 <__memmove+0x160>
    800060b8:	f89ff06f          	j	80006040 <__memmove+0xfc>

00000000800060bc <__putc>:
    800060bc:	fe010113          	addi	sp,sp,-32
    800060c0:	00813823          	sd	s0,16(sp)
    800060c4:	00113c23          	sd	ra,24(sp)
    800060c8:	02010413          	addi	s0,sp,32
    800060cc:	00050793          	mv	a5,a0
    800060d0:	fef40593          	addi	a1,s0,-17
    800060d4:	00100613          	li	a2,1
    800060d8:	00000513          	li	a0,0
    800060dc:	fef407a3          	sb	a5,-17(s0)
    800060e0:	fffff097          	auipc	ra,0xfffff
    800060e4:	b3c080e7          	jalr	-1220(ra) # 80004c1c <console_write>
    800060e8:	01813083          	ld	ra,24(sp)
    800060ec:	01013403          	ld	s0,16(sp)
    800060f0:	02010113          	addi	sp,sp,32
    800060f4:	00008067          	ret

00000000800060f8 <__getc>:
    800060f8:	fe010113          	addi	sp,sp,-32
    800060fc:	00813823          	sd	s0,16(sp)
    80006100:	00113c23          	sd	ra,24(sp)
    80006104:	02010413          	addi	s0,sp,32
    80006108:	fe840593          	addi	a1,s0,-24
    8000610c:	00100613          	li	a2,1
    80006110:	00000513          	li	a0,0
    80006114:	fffff097          	auipc	ra,0xfffff
    80006118:	ae8080e7          	jalr	-1304(ra) # 80004bfc <console_read>
    8000611c:	fe844503          	lbu	a0,-24(s0)
    80006120:	01813083          	ld	ra,24(sp)
    80006124:	01013403          	ld	s0,16(sp)
    80006128:	02010113          	addi	sp,sp,32
    8000612c:	00008067          	ret

0000000080006130 <console_handler>:
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00813823          	sd	s0,16(sp)
    80006138:	00113c23          	sd	ra,24(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	02010413          	addi	s0,sp,32
    80006144:	14202773          	csrr	a4,scause
    80006148:	100027f3          	csrr	a5,sstatus
    8000614c:	0027f793          	andi	a5,a5,2
    80006150:	06079e63          	bnez	a5,800061cc <console_handler+0x9c>
    80006154:	00074c63          	bltz	a4,8000616c <console_handler+0x3c>
    80006158:	01813083          	ld	ra,24(sp)
    8000615c:	01013403          	ld	s0,16(sp)
    80006160:	00813483          	ld	s1,8(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret
    8000616c:	0ff77713          	andi	a4,a4,255
    80006170:	00900793          	li	a5,9
    80006174:	fef712e3          	bne	a4,a5,80006158 <console_handler+0x28>
    80006178:	ffffe097          	auipc	ra,0xffffe
    8000617c:	6dc080e7          	jalr	1756(ra) # 80004854 <plic_claim>
    80006180:	00a00793          	li	a5,10
    80006184:	00050493          	mv	s1,a0
    80006188:	02f50c63          	beq	a0,a5,800061c0 <console_handler+0x90>
    8000618c:	fc0506e3          	beqz	a0,80006158 <console_handler+0x28>
    80006190:	00050593          	mv	a1,a0
    80006194:	00001517          	auipc	a0,0x1
    80006198:	09450513          	addi	a0,a0,148 # 80007228 <CONSOLE_STATUS+0x218>
    8000619c:	fffff097          	auipc	ra,0xfffff
    800061a0:	afc080e7          	jalr	-1284(ra) # 80004c98 <__printf>
    800061a4:	01013403          	ld	s0,16(sp)
    800061a8:	01813083          	ld	ra,24(sp)
    800061ac:	00048513          	mv	a0,s1
    800061b0:	00813483          	ld	s1,8(sp)
    800061b4:	02010113          	addi	sp,sp,32
    800061b8:	ffffe317          	auipc	t1,0xffffe
    800061bc:	6d430067          	jr	1748(t1) # 8000488c <plic_complete>
    800061c0:	fffff097          	auipc	ra,0xfffff
    800061c4:	3e0080e7          	jalr	992(ra) # 800055a0 <uartintr>
    800061c8:	fddff06f          	j	800061a4 <console_handler+0x74>
    800061cc:	00001517          	auipc	a0,0x1
    800061d0:	15c50513          	addi	a0,a0,348 # 80007328 <digits+0x78>
    800061d4:	fffff097          	auipc	ra,0xfffff
    800061d8:	a68080e7          	jalr	-1432(ra) # 80004c3c <panic>
	...
