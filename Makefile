obj-m += wdctcp.o
wdctcp-y := main.o tcp_wdctcp.o wdctcp_sysfs.o 

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:		
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
