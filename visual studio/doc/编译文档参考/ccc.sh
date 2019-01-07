#!/bin/sh

PREFIX=android-build

COMMON_OPTIONS="\
    --prefix=android/ \
    --target-os=android \
    --disable-static \
    --enable-shared \
    --enable-small \
    --disable-programs \
    --disable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-doc \
    --enable-gpl \
    --enable-cross-compile \
    --enable-runtime-cpudetect \
    --enable-asm \
    --enable-jni \
    --disable-postproc \
    --disable-avdevice \
    --disable-symver
    "

function build_android {
    ./configure \
    --libdir=${PREFIX}/libs/armeabi-v7a \
    --incdir=${PREFIX}/includes/armeabi-v7a \
    --pkgconfigdir=${PREFIX}/pkgconfig/armeabi-v7a \
    --arch=arm \
    --cpu=armv7-a \
    --enable-neon \
    --enable-hwaccel=h264_vaapi \
    --enable-hwaccel=h264_vaapi \
    --enable-hwaccel=h264_dxva2 \
    --enable-hwaccel=mpeg4_vaapi \
    --enable-hwaccel=mpeg2_mediacodec \
    --enable-hwaccel=vp8_mediacodec \
    --enable-hwaccel=hevc_mediacodec \
    --enable-hwaccel=mpeg4_mediacodec \
    --enable-hwaccel=vp9_mediacodec \
    --enable-hwaccels \
    --enable-mediacodec \
    --enable-decoder=h264_mediacodec \
    --enable-hwaccel=h264_mediacodec \
    --enable-decoder=hevc_mediacodec \
    --enable-decoder=mpeg4_mediacodec \
    --enable-decoder=mpeg2_mediacodec \
    --enable-decoder=vp8_mediacodec \
    --enable-decoder=vp9_mediacodec \
    --cross-prefix="${NDK_HOME}/toolchains/arm-linux-androideabi-4.9/prebuilt/${NDK_HOST_PLATFORM}/bin/arm-linux-androideabi-" \
    --sysroot="${NDK_HOME}/platforms/android-21/arch-arm/" \
    --extra-cflags="-march=armv7-a -mfloat-abi=softfp -mfpu=neon -fPIC -DANDROID " \
    --extra-ldexeflags=-pie \
    ${COMMON_OPTIONS}
    make clean
    make -j8 && make install

    ./configure \
    --libdir=${PREFIX}/libs/arm64-v8a \
    --incdir=${PREFIX}/includes/arm64-v8a \
    --pkgconfigdir=${PREFIX}/pkgconfig/arm64-v8a \
    --arch=aarch64 \
    --cpu=armv8-a \
    --enable-neon \
    --enable-hwaccel=h264_vaapi \
    --enable-hwaccel=h264_vaapi \
    --enable-hwaccel=h264_dxva2 \
    --enable-hwaccel=mpeg4_vaapi \
    --enable-hwaccel=mpeg2_mediacodec \
    --enable-hwaccel=vp8_mediacodec \
    --enable-hwaccel=hevc_mediacodec \
    --enable-hwaccel=mpeg4_mediacodec \
    --enable-hwaccel=vp9_mediacodec \
    --enable-hwaccels \
    --enable-mediacodec \
    --enable-decoder=h264_mediacodec \
    --enable-hwaccel=h264_mediacodec \
    --enable-decoder=hevc_mediacodec \
    --enable-decoder=mpeg4_mediacodec \
    --enable-decoder=mpeg2_mediacodec \
    --enable-decoder=vp8_mediacodec \
    --enable-decoder=vp9_mediacodec \
    --cross-prefix="${NDK_HOME}/toolchains/aarch64-linux-android-4.9/prebuilt/${NDK_HOST_PLATFORM}/bin/aarch64-linux-android-" \
    --sysroot="${NDK_HOME}/platforms/android-21/arch-arm64/" \
    --extra-ldexeflags=-pie \
    ${COMMON_OPTIONS} 
    make clean
    make -j4 && make install

    ./configure \
    --libdir=${PREFIX}/libs/x86 \
    --incdir=${PREFIX}/includes/x86 \
    --pkgconfigdir=${PREFIX}/pkgconfig/x86 \
    --arch=x86 \
    --cpu=i686 \
    --cross-prefix="${NDK_HOME}/toolchains/x86-4.9/prebuilt/${NDK_HOST_PLATFORM}/bin/i686-linux-android-" \
    --sysroot="${NDK_HOME}/platforms/android-21/arch-x86/" \
    --extra-ldexeflags=-pie \
    ${COMMON_OPTIONS} 
    make clean
    make -j4 && make install

    ./configure \
    --libdir=${PREFIX}/libs/x86_64 \
    --incdir=${PREFIX}/includes/x86_64 \
    --pkgconfigdir=${PREFIX}/pkgconfig/x86_64 \
    --arch=x86_64 \
    --cpu=x86_64 \
    --cross-prefix="${NDK_HOME}/toolchains/x86_64-4.9/prebuilt/${NDK_HOST_PLATFORM}/bin/x86_64-linux-android-" \
    --sysroot="${NDK_HOME}/platforms/android-21/arch-x86_64/" \
    --extra-ldexeflags=-pie \
    ${COMMON_OPTIONS}
    make clean
    make -j4 && make install
};

build_android
