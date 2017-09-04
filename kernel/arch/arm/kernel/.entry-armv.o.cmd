cmd_arch/arm/kernel/entry-armv.o := arm-linux-androideabi-gcc -Wp,-MD,arch/arm/kernel/.entry-armv.o.d  -nostdinc -isystem /alps/mprelease/MPload/ALPS.ICS.MP.V1_LENOVO75_A2_ICS/custom_release/inhouse/alps/prebuilt/linux-x86/toolchain/arm-linux-androideabi-4.4.x/bin/../lib/gcc/arm-linux-androideabi/4.4.3/include -I/proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include include/generated/autoconf.h -I../mediatek/custom///common -I../mediatek/platform/mt6575/kernel/core/include/ -I../mediatek/source/kernel/include/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/touchpanel/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/battery/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/dct/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/kpd/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/vibrator/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/core/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/headset/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/rtc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/usb/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/magnetometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/./ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/ccci/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/barometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/fm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/jogball/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/hdmi/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/sensors/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/audioflinger/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/vt/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/ant/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/bluetooth/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/matv/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/combo/ -D__KERNEL__   -mlittle-endian -DMODEM_3G -I../mediatek/platform/mt6575/kernel/core/include -D__ASSEMBLY__   -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float -gdwarf-2        -c -o arch/arm/kernel/entry-armv.o arch/arm/kernel/entry-armv.S

source_arch/arm/kernel/entry-armv.o := arch/arm/kernel/entry-armv.S

deps_arch/arm/kernel/entry-armv.o := \
    $(wildcard include/config/multi/irq/handler.h) \
    $(wildcard include/config/kprobes.h) \
    $(wildcard include/config/aeabi.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/needs/syscall/for/cmpxchg.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/neon.h) \
    $(wildcard include/config/cpu/arm610.h) \
    $(wildcard include/config/cpu/arm710.h) \
    $(wildcard include/config/iwmmxt.h) \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/vfp.h) \
    $(wildcard include/config/cpu/use/domains.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/arm/thumb.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/arm/patch/phys/virt/16bit.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/const.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  ../mediatek/platform/mt6575/kernel/core/include/mach/memory.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/sizes.h \
  include/asm-generic/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/glue-df.h \
    $(wildcard include/config/cpu/abrt/lv4t.h) \
    $(wildcard include/config/cpu/abrt/ev4.h) \
    $(wildcard include/config/cpu/abrt/ev4t.h) \
    $(wildcard include/config/cpu/abrt/ev5tj.h) \
    $(wildcard include/config/cpu/abrt/ev5t.h) \
    $(wildcard include/config/cpu/abrt/ev6.h) \
    $(wildcard include/config/cpu/abrt/ev7.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/glue.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/glue-pf.h \
    $(wildcard include/config/cpu/pabrt/legacy.h) \
    $(wildcard include/config/cpu/pabrt/v6.h) \
    $(wildcard include/config/cpu/pabrt/v7.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/vfpmacros.h \
    $(wildcard include/config/vfpv3.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/hwcap.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/vfp.h \
  ../mediatek/platform/mt6575/kernel/core/include/mach/entry-macro.S \
  ../mediatek/platform/mt6575/kernel/core/include/mach/hardware.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/hardware/gic.h \
  ../mediatek/platform/mt6575/kernel/core/include/mach/mt6575_reg_base.h \
    $(wildcard include/config/base.h) \
  ../mediatek/platform/mt6575/kernel/core/include/mach/irqs.h \
  ../mediatek/platform/mt6575/kernel/core/include/mach/mt6575_irq.h \
    $(wildcard include/config/mt6575/fpga.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/thread_notify.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/unwind.h \
    $(wildcard include/config/arm/unwind.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/oabi/compat.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/tls.h \
    $(wildcard include/config/tls/reg/emul.h) \
    $(wildcard include/config/cpu/v6.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  arch/arm/kernel/entry-header.S \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/alignment/trap.h) \
    $(wildcard include/config/have/hw/breakpoint.h) \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/linkage.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/linkage.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/ptrace.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/fpstate.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/entry-macro-multi.S \
    $(wildcard include/config/local/timers.h) \

arch/arm/kernel/entry-armv.o: $(deps_arch/arm/kernel/entry-armv.o)

$(deps_arch/arm/kernel/entry-armv.o):
