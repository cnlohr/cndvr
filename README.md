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













#Initial attempt at RTSP

```apt-get install libcurl4-openssl-dev```

# Setup Instructions

## HOSAFE 1MD4P PoE Camera

This is terrible.  Don't use it.

## SV3C Full HD 1080P

Visit in-browser from DHCP settings.  Warning: This camera calls home to china.  Disabling "p2p" seems to fix this.

Connect to: rtsp://10.42.0.223:554/11


## Ventech VT-R889IP 1 Megapixel 720P

P.S. This camera connects back home.  May want to lock it out of the internet

Connect to: rtsp://10.42.0.18/h264/cam1

## UN-YS-BULLET-4MP IPC2124SR3-DFP36

DOES NOT CONNECT BACK HOME! :)

Doesn't have LEDs

rtsp://10.42.0.36/media/video1
