# xmplayer
一个基于ffmpeg 4.0.3的android播放器

## 计划构造一个android studio的工程，目标是可以调试C语言代码部分。
- 运行环境：ubuntu 18.04或centos 7
- 开发工具 android studio 3.2.1
- android 环境: android-21 (也就是 android 5或以上，不考虑android 5以前的版本)
- ffmpeg下载地址：https://ffmpeg.org/releases/ffmpeg-4.0.3.tar.bz2， 在https://ffmpeg.org/releases可以看到所有的发部包下载地址。
- 基于ffplay.c构建播放器


## visual studio 已经编译好的版本
在https://ffmpeg.zeranoe.com/builds/提供了windows下面所有已经编译好的库,每个发布版本都有，有需要，可以自行下载。
- windows 32位版本 https://ffmpeg.zeranoe.com/builds/win32/
- windows 64位版本 https://ffmpeg.zeranoe.com/builds/win64/

## FFMpeg 4.0的特性
更多特性说明：https://ffmpeg.org/index.html#news

April 20th, 2018, FFmpeg 4.0 "Wu"
FFmpeg 4.0 "Wu", a new major release, is now available! Some of the highlights:

- Bitstream filters for editing metadata in H.264, HEVC and MPEG-2 streams
- Experimental MagicYUV encoder
- TiVo ty/ty+ demuxer
- Intel QSV-accelerated MJPEG encoding
- native aptX and aptX HD encoder and decoder
- NVIDIA NVDEC-accelerated H.264, HEVC, MJPEG, MPEG-1/2/4, VC1, VP8/9 hwaccel decoding
- Intel QSV-accelerated overlay filter
- mcompand audio filter
- acontrast audio filter
- OpenCL overlay filter
- video mix filter
- video normalize filter
- audio lv2 wrapper filter
- VAAPI MJPEG and VP8 decoding
- AMD AMF H.264 and HEVC encoders
- video fillborders filter
- video setrange filter
- support LibreSSL (via libtls)
- Dropped support for building for Windows XP. The minimum supported Windows version is Windows Vista.
- deconvolve video filter
- entropy video filter
- hilbert audio filter source
- aiir audio filter
- Removed the ffserver program
- Removed the ffmenc and ffmdec muxer and demuxer
- VideoToolbox HEVC encoder and hwaccel
- VAAPI-accelerated ProcAmp (color balance), denoise and sharpness filters
- Add android_camera indev
- codec2 en/decoding via libcodec2
- native SBC encoder and decoder
- drmeter audio filter
- hapqa_extract bitstream filter
- filter_units bitstream filter
- AV1 Support through libaom
- E-AC-3 dependent frames support
- bitstream filter for extracting E-AC-3 core
- Haivision SRT protocol via libsrt
- vfrdet filter
- We strongly recommend users, distributors, and system integrators to upgrade unless they use current git master.
