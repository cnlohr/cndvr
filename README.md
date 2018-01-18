# cndvr

This is a collection of files and things I'm using to play around with the SV3C and related camera hardware.

The SV3C Camera I typically use is: https://www.amazon.com/Security-Ethernet-Surveillance-Waterproof-Connection/dp/B01G1U4MVA

The info that you'll care about it is:
 Root password is "cat1029"

To do the hardware hacking, you'll need to install:
```
	apt-get install gcc-arm-linux-gnueabi libc6-dev-armel-cross
```

Also, there's a neat little file called ftpupload in the bin/vslocal folder.


BUT... on http, /log on the camera goes straight to /tmp.  I don't include the files in this repository for legal reasons, but you can just perform the following operations:

```
cd /tmp; ln -s /lib lib
```

Then visit http://10.42.0.55/log/lib/ and download them into the 'libs' folder!


You really should go get the compiler from https://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-armv5l.tar.bz2 and download it into the uclibc/ folder and untar.





From livestream:
Xander Luciano​pastebin com/FgYk7yqS - this is the code needed to﻿ make an autoupdating google sheets image
