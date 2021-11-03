obj-m += cdev.o

KDIR = ../linux-5.8.1
MY_CFLAGS += -g -DDEBUG
ccflags-y += ${MY_CFLAGS}
CC += ${MY_CFLAGS}
all:
	$(MAKE) -C $(KDIR) M=$(shell pwd) modules EXTRA_CFLAGS="$(MY_CFLAGS)" && cp cdev.ko ../fs

clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order
