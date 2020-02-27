---
title: 树莓派使用指南
description: 树莓派使用指南
date: 2020-02-27 14:12:17
tags:
categories:
---
### apt加速
> https://xingxiang.me/blog/838

1.改sources.list
sudo vim /etc/apt/sources.list
```shell
deb http://mirrors.ustc.edu.cn/raspbian/raspbian/ buster main contrib non-free rpi
#deb-src http://mirrors.ustc.edu.cn/raspbian/raspbian/ buster main contrib non-free rpi
```
2.改raspi.list
sudo vim /etc/apt/sources.list.d/raspi.list
```shell
deb http://mirrors.ustc.edu.cn/archive.raspberrypi.org/debian/ buster main ui
```

### 使用OpenWrt
>https://openwrt.org/toh/raspberry_pi_foundation/raspberry_pi
>https://forum.openwrt.org/

![](http://q68vqxb8c.bkt.clouddn.com/2020_02_27_shu-mei-pai-shi-yong-zhi-nan/20200227051910739.png)
pi3 使用bcm2710的芯片

### 自编译固件
>https://mlapp.cn/369.html

### 写入镜像文件
>http://downloads.openwrt.org/releases/19.07.1/targets/brcm2708/bcm2710/

**注意:需要使用openwrt-19.07.1-brcm2708-bcm2710-rpi-3-squashfs-factory.img.gz文件**
1. 查看挂载的分区
```shell
输入df -h
```
2. 使用diskutil unmount将这些分区卸载
```shell
diskutil unmount
```
2. 确认设备
```shell
diskutil list
```
![](http://q68vqxb8c.bkt.clouddn.com/2020_02_27_shu-mei-pai-shi-yong-zhi-nan/20200227070112741.png)
3. 命令行写入镜像
```shell
sudo dd bs=4m if=2015-02-16-raspbian-wheezy.img of=/dev/rdisk3
```
### SD卡恢复
```shell
sudo diskutil eraseDisk FAT32 RASPBIAN MBRFormat /dev/disk2
```
### 附录:
> https://github.com/oblique/create_ap/issues/395




