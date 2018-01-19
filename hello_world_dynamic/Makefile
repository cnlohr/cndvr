TOOL:=hello

all : $(TOOL)

MYIP:=10.42.0.1
IP:=10.42.0.55
PORT:=23

CFLAGS:=-O1 -march=armv5te -mtune=arm926ej-s

#For static uclibc compiler
#LDFLAGS:= -static
#CC:=../uclibc/cross-compiler-armv5l/bin/armv5l-gcc

CC:=arm-linux-gnueabi-gcc
LDFLAGS:=-Llib -nostdlib -nodefaultlibs \
	lib/libc.so.0 lib/ld-uClibc.so.0

$(TOOL) : $(TOOL).c crt1.S
	$(CC)  $(CFLAGS) -o $@ $^  $(LDFLAGS)

#This isn't working yet.
upload : $(TOOL)
	../upload.sh $(TOOL) $(MYIP) $(IP)

pulllib :
	mkdir -p lib
	rm -rf lib/*
	(sleep .5; echo root; sleep .5; echo cat1029; sleep .5; echo "cd /tmp; ln -s /lib lib"; sleep .5)|nc $(IP) 23
	wget http://$(IP)/log/lib/libc.so.0 -O lib/libc.so.0
	wget http://$(IP)/log/lib/ld-uClibc.so.0 -O lib/ld-uClibc.so.0
	wget http://$(IP)/log/lib/libdl.so.0 -O lib/libdl.so.0
	wget http://$(IP)/log/lib/libgcc_s.so.1 -O lib/libgcc_s.so.1
	wget http://$(IP)/log/lib/libcrypt.so.0 -O lib/libcrypt.so.0
	wget http://$(IP)/log/lib/libcrypto.so.1.0.0 -O lib/libcrypto.so.1.0.0
	wget http://$(IP)/log/lib/libm.so.0 -O lib/libm.so.0
	wget http://$(IP)/log/lib/libmtable.so -O lib/libmtable.so
	wget http://$(IP)/log/lib/libpthread.so.0 -O lib/libpthread.so.0
	wget http://$(IP)/log/lib/librt.so.0 -O lib/librt.so.0
	wget http://$(IP)/log/lib/libstdc++.so.6 -O lib/libstdc++.so.6
	wget http://$(IP)/log/lib/libthread_db.so.1 -O lib/libthread_db.so.1

clean:
	rm -rf $(TOOL) *.o *~
