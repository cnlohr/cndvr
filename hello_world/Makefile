TOOL:=hello

all : $(TOOL)

MYIP:=10.42.0.1
IP:=10.42.0.55
PORT:=23
LFLD:=../lib
# TODO: -Wl,-rpath,/lib -Wl,-rpath-link,../lib

LDFLAGS:=-nodefaultlibs -nostdlib -L../lib -Wl,-rpath,/lib \
	$(LFLD)/libdl.so.0 \
	$(LFLD)/libc.so.0 \
	$(LFLD)/ld-uClibc.so.0

#	-nodefaultlibs -nostdlib -L../lib -Wl,-rpath,/lib \

#	-Wl,--dynamic-linker  \
	-Wl,$(LFLD)/libdl.so.0 \
	-Wl,$(LFLD)/ld-uClibc.so.0 \
	-Wl,$(LFLD)/libc.so.0 \

#	$(LFLD)/libc.so.0 \
	$(LFLD)/libstdc++.so.6

CFLAGS:=-O1 -march=armv5te -mtune=arm926ej-s -msoft-float

$(TOOL) : $(TOOL).c
	arm-linux-gnueabi-gcc  $(CFLAGS) -o $@ $^  $(LDFLAGS)

#This isn't working yet.
upload : $(TOOL)
	../upload.sh $(TOOL) $(MYIP) $(IP)


clean:
	rm -rf $(TOOL) *.o *~
