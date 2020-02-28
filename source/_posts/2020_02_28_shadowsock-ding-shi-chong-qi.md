---
title: ShadowSock_定时重启
tags:
  - ShadowSocks
categories:
  - ShadowSocks
description: ShadowSock_定时重启
date: 2020-02-28 11:08:51
---

> Outline ShadowSock Client
<!--more-->

## 0x01: 下载地址

```shell
https://github.com/Jigsaw-Code/outline-client.git
```
## 0x02:  环境配置

安装killall命令

```shell
yum install psmisc
```

修改时区
```shell
tzselect
```
## 0x03: 同过Snapd安装ShadowSock-libev:

直接启动服务
```shell
/var/lib/snapd/snap/bin/shadowsocks-libev.ss-server -s 0.0.0.0 -p 1215 -k 20191215 -m aes-256-cfb -u --no-delay &
```
重启服务
```shell
killall ss-server && port=`date +"%m%d"` && /var/lib/snapd/snap/bin/shadowsocks-libev.ss-server -s 0.0.0.0 -p $port -k 2019$port -m aes-256-cfb -u --no-delay > /var/log/libev_2019$port.log  2>&1 &
```

## 0x04: 使用crontab实现每天重启

每天23:59分重启服务

```shell
59 23 * * * killall ss-server && port=`date +"%m%d"` && /var/lib/snapd/snap/bin/shadowsocks-libev.ss-server -s 0.0.0.0 -p $port -k 2019$port -m aes-256-cfb -u --no-delay > /var/log/libev_2019$port.log  2>&1 &
```

## 0x05: 测试

```shell
* * * * * root killall ss-server && port=`date +"%H%M"` && /var/lib/snapd/snap/bin/shadowsocks-libev.ss-server -s 0.0.0.0 -p $port -k 2019$port -m aes-256-cfb -u --no-delay > /var/log/libev_2019$port.log  2>&1 &

* * * * * echo `date` >> /var/log/test_2019`date +"%H%M"`.log  2>&1 &
```