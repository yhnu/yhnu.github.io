---
title: Unity3d源码阅读
description: Unity3d源码阅读
date: 2020-02-26 00:06:42
tags: 
    Unity3D
    AutoTest
categories: 博客
---

0x01. 构建相关

1. artifacts,build目录可以删除
2. Projects/VisualStudio/.vs可以删除

0x02:如何一步步构建

```bat
jam.bat
```

0x02:去掉license验证

![](/2020_02_26_unity3d-yuan-ma-yue-du/20200226121011100.png)

0x03: 使用Perl构建

```shell
perl build.pl build editor
perl build.pl build androidplayer

perl build.pl --target=WindowsEditor