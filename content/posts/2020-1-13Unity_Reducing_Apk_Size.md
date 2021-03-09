---
title: "Unity3D安装包分析及其减少策略"
description: "Unity3D安装包分析及其减少策略"
date: "2020-1-13"
categories:
  - "博客"
tags:
  - "Unity3D"
  - "AutoTest"






---

> 2020年1月13日笔记
> <!--more-->

### 0x01. 前言

将构建应用程序的文件大小保持在最小是很重要的，特别是对于移动设备或者应用程序商店来说。 减少规模的第一步是确定哪些资产对其贡献最大，因为这些资产最有可能进行优化。 此信息可在执行生成之后的编辑器日志中找到。 转到控制台窗口(菜单: Window General Console) ，单击右上角的小下拉面板，并选择 Open Editor Log。

### 0x02.查看Editor.log

![The Editor Log just after a build](https://docs.unity3d.com/uploads/Main/FileSizeOptimization.png)

里面已经详细的说明了资源的分布情况,可以着手优化大头. 

1. 通常，像纹理、声音和动画这样的东西占用了大部分存储空间，而脚本、级别和着色器通常影响最小。

2. 列表中提到的**FileHeader**不是资产，它们实际上是添加到“原始”资产文件中用于存储引用和设置的额外数据。 **FileHeader**常对资产大小影响很小，但是如果在Resource目录中有许多大量内容，则可以尝试去优化。



实战:

```shell
7z l tgac.0.0.1.10099.branches_dev_devops_2019-12-31.preview.2020.01.13.apk > apk.txt
cat apk.txt | sort -k3 -rn|awk '{print $2}' > 2
cat apk.txt | sort -k3 -rn|awk '{print $3}' > 3
cat apk.txt | sort -k3 -rn|awk '{print $4}' > 4
```
   
### 0x04帮助

http://jsoneditoronline.org/
   
   
   
   
   
   