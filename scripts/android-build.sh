#!/bin/bash


echo 'Cleaning Builds'
rm -rf app/build
rm -rf app/kernel-linux
rm -rf app/stage/build
rm -rf android/app/libs
rm -rf android/app/src/main/assets
echo 'Building UI'
cd app
pnpm install && pnpm run build
cd ..

echo 'Building Kernel'

mkdir -p android/app/libs
mkdir -p android/app/src/main/assets

cd kernel
export GOPROXY=https://goproxy.io
export ANDROID_NDK_HOME=/opt/android-sdk/ndk/27.2.12479018/
export PATH=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin:$PATH
export CC=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android24-clang
export CXX=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android24-clang++
export PATH=$PATH:~/go/bin
gomobile bind --tags fts5 -ldflags '-s -w' -v -o ../android/app/libs/kernel.aar -target='android/arm64' -androidapi 24 ./mobile/
cd ..
rm android/app/libs/kernel-sources.jar
echo 'Building Resource'
cd app
zip -r ../android/app/src/main/assets/app.zip appearance/ guide/ stage/ changelogs/
