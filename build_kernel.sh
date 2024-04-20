
#!/bin/bash

export ARCH=arm64
export PATH=$(pwd)/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:$PATH

mkdir out

make -C $(pwd) O=$(pwd)/out CROSS_COMPILE=aarch64-linux-android- KCFLAGS=-mno-android physwizz_defconfig
make -j64 -C $(pwd) O=$(pwd)/out CROSS_COMPILE=aarch64-linux-android- KCFLAGS=-mno-android
 
cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image

