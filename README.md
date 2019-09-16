# openssl_conflict

## source hierarchy
openssl_1.c + sth_ver1.c --> libopenssl_ver1.so

openssl_2.c + sth_ver2.c --> libopenssl_ver2.so

main.c + libopenssl_ver1.so + libopenssl_ver2.so --> openssl_conflict_call

## build source
bash build.sh


## run
./openssl_conflict_call


## output
```
start call openssl ver1
doCrypto from ver11111
start call openssl ver2
doCrypto from ver2222
```

#conclusion

openssl_1 ONLY call in openssl_ver1.so

openssl_2 ONLY call in openssl_ver2.so

