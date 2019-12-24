---
title: "How Unity3D Texture Upload To GPU Rendering"
description: "Unity3D 纹理内存解析"
date: "2019-12-13"
categories:
  - "Unity3d"
  - "IOS"
  - "Game Develop"  
tags:
  - "Unity3d"
  - "IOS"
  - "Game Develop"
---
> ios unity3d texture note

<!--more-->

0x01 首先下面这两篇文章对我帮助很大,我的很多测试都是基于他们的劳动成果

[分析Unity在移动设备的GPU内存机制](https://zhuanlan.zhihu.com/p/50632856)

[From Userspace(Bug) into iOS Kernelcache & IOKit](https://github.com/jmpews/NoteZ/issues/43)

0x02 纹理和IOKit的关系

