---
title: "Unity3d源码阅读"
description: "Unity3d源码阅读"
date: "2020-1-7"
draft: true
categories:
  - "博客"
tags:
  - "Unity3D"
  - "AutoTest"




---

> Unity3d源码阅读
> <!--more-->

0x01. 构建相关

1. artifacts,build目录可以删除
2. Projects/VisualStudio/.vs可以删除

0x02:如何一步步构建

```bat
jam.bat
```

0x02:去掉license验证

![image-20200107174347253](2020_01_unity3d_reading/image-20200107174347253.png)

0x03: 使用Perl构建

```shell
perl build.pl build editor
perl build.pl build androidplayer

perl build.pl --target=WindowsEditor
```

