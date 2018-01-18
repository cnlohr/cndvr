TOOL:=hello

all : $(TOOL)

MYIP:=10.42.0.1
IP:=10.42.0.55
PORT:=23

LDFLAGS:= -static
CFLAGS:=-O1 -march=armv5te -mtune=arm926ej-s
CC:=../uclibc/cross-compiler-armv5l/bin/armv5l-gcc


$(TOOL) : $(TOOL).c
	$(CC)  $(CFLAGS) -o $@ $^  $(LDFLAGS)

#This isn't working yet.
upload : $(TOOL)
	../upload.sh $(TOOL) $(MYIP) $(IP)


clean:
	rm -rf $(TOOL) *.o *~
