#!/bin/sh

f1=$1
f2=$2

dd if=/dev/zero ibs=4k count=1 | tr "\000" "\377" > tmp1.bin
dd if=/dev/zero ibs=4k count=1 | tr "\000" "\377" > tmp2.bin

dd if=$f1 of=tmp1.bin conv=notrunc 
dd if=$f2 of=tmp2.bin conv=notrunc 

cat tmp1.bin tmp2.bin > output.bin
rm tmp1.bin tmp2.bin

