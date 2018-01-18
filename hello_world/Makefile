TOOL:=hello

all : $(TOOL)

MYIP:=10.42.0.1
IP:=10.42.0.55
PORT:=23
LFLD:=../libs
LDFLAGS:=$(LFLD)/libc.so.0 $(LFLD)/libdl.so.0 $(LFLD)/ld-uClibc.so.0

CFLAGS:=-O1

$(TOOL) : $(TOOL).c
	arm-linux-gnueabi-gcc -o $@ $^ -nodefaultlibs $(CFLAGS) $(LDFLAGS)

#This isn't working yet.
upload : $(TOOL)
	../upload.sh $(TOOL) $(MYIP) $(IP)


clean:
	rm -rf $(TOOL) *.o *~
