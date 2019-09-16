#!/bin/bash

gcc openssl_1.c sth_ver1.c -c -fpic
gcc openssl_1.o sth_ver1.o -shared -o libopenssl_ver1.so

gcc openssl_2.c sth_ver2.c -c -fpic
gcc openssl_2.o sth_ver2.o -shared -o libopenssl_ver2.so

gcc -L. -lopenssl_ver1 -lopenssl_ver2 -o openssl_conflict_call main.c