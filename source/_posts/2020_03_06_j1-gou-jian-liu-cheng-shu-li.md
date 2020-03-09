---
title: j1_构建流程梳理
date: 1583464842202
tags:
  - Unity3D
categories:
  - Unity3D
description: j1_构建流程梳理
---
### 1. 清理XLUA生成的Wrap文件
```
[INFO]清理目录 F:/55jx1/app/build_workspace/trunk/jxp-artwork\JxPocket/Assets/XLua/Gen
```

### 2. 清理JNI构建,并生成libclient_scene.so
```
清理目录 F:/55jx1/app/build_workspace/trunk/jxp-artwork\cpp/lib/android
移除文件 F:/55jx1/app/build_workspace/trunk/jxp-code/cpp/client_scene/libs/armeabi-v7a/libclient_scene.so
ndk-build.cmd clean
ndk-build.cmd NDK_DEBUG=0
```
![](http://q68vqxb8c.bkt.clouddn.com/2020_03_06_j1-gou-jian-liu-cheng-shu-li/20200306114233705.png)
![](http://q68vqxb8c.bkt.clouddn.com/2020_03_06_j1-gou-jian-liu-cheng-shu-li/20200306024346762.png)
### 3. 切换到安卓平台

### 4. 生成XLUA生成的Warp文件

### 5. 打包AssetBundle

### 6. 打包配置文件
里面使用到了FilePakerC.exe目前不知道是做什么用的

### 7. 生成APK