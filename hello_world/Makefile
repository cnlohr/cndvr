all : hello

IP:=10.42.0.55
PORT:=23
LFLD:=../libs
LDFLAGS:=$(LFLD)/libc.so.0 $(LFLD)/libdl.so.0 $(LFLD)/ld-uClibc.so.0

CFLAGS:=-O1

hello : hello.c
	arm-linux-gnueabi-gcc -o $@ $^ -nostdlib $(CFLAGS) $(LDFLAGS)

#This isn't working yet.
upload : hello
	((sleep .5; echo "root"; sleep .5; echo "cat1029"; sleep .5; echo "echo hello > /tmp/test"; sleep .5; cat hello; sleep .5) | nc $(IP) $(PORT))

clean:
	rm -rf hello *.o *~
