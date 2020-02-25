---
title: Docker在Flask上的部署
date: 2020-02-25 22:06:50
tags: 
    Docker
categories:
    Docker
description:
    'Docker问题记录'
---

### 0x01 前言:

最近在写Unity3D安装包文件分析工具,使用了Flask后端并使用Docker部署,记录了一些遇到的问题

### 0x02 Docker文件映射
使用-v标记 
> -v /mnt/nfs/:/zhuhaiyan

**注意:Docker容器内不要创建此目录,否则映射不成功**
![](/2020_02_25_docker-zaiflask-shang-de-ying-yong/20200225114255074.png)

### 0x03 Docker容器命名
**--name apktool不能放在最后,最后必须为一个参数为Image的名称。**
> sudo docker run -d  -v /work/appkmonitor/files:/opt/app/files -p 8888:8888 --name apktool apktool

### Docker端口映射
基本语法
```shell
$ sudo docker run -p [([<host_interface>:[host_port]])|(<host_port>):]<container_port>[/udp] <image> <cmd>
```
默认不指定绑定 ip 则监听所有网络接口。

绑定 TCP 端口
```shell 
# Bind TCP port 8080 of the container to TCP port 80 on 127.0.0.1 of the host machine. 
$ sudo docker run -p 127.0.0.1:80:8080 <image> <cmd> 
# Bind TCP port 8080 of the container to a dynamically allocated TCP port on 127.0.0.1 of the host machine. 
$ sudo docker run -p 127.0.0.1::8080 <image> <cmd> # Bind TCP port 8080 of the container to TCP port 80 on all available interfaces of the host machine. $ sudo docker run -p 80:8080 <image> <cmd> # Bind TCP port 8080 of the container to a dynamically allocated TCP port on all available interfaces $ sudo docker run -p 8080 <image> <cmd>
```
绑定 UDP 端口
```shell
# Bind UDP port 5353 of the container to UDP port 53 on 127.0.0.1 of the host machine. $ sudo docker run -p 127.0.0.1:53:5353/udp <image> <cmd>
```

### 附录
[http://www.docker.org.cn/dockerppt/110.html](http://www.docker.org.cn/dockerppt/110.html)