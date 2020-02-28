---
title: Docker在Flask上的部署
date: 2020-02-28 09:06:50
tags: [Docker]
categories: [Docker]
description: Docker问题记录
---

### 0x01 前言:

最近在写Unity3D安装包文件分析工具,使用了Flask后端并使用Docker部署,记录了一些遇到的问题

### 0x02 Docker文件映射
使用-v标记 
> -v /mnt/nfs/:/zhuhaiyan

**注意:Docker容器内不要创建此目录,否则映射不成功**
![](http://q68vqxb8c.bkt.clouddn.com/2020_02_25_docker-zaiflask-shang-de-ying-yong/20200225114255074.png)

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

### Alpine安装GCC,使Gevent编译不报错
```Docker
  RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
     && pip install cython \
     && apk del .build-deps gcc musl-dev
```

> [https://www.iwecon.cc/2019/160.html](https://www.iwecon.cc/2019/160.html)

### 查看Python3对应的Image列表

> https://hub.docker.com/_/python

### 使用Makefile快速构建和运行Docker
```makefile
default: rebuild

build:
	sudo docker build -t "apktool" .

rebuild:
	sudo docker image rm -f apktool
	sudo docker container rm apktool
	sudo docker build -t "apktool" .

run:
	sudo docker run -d  -v /work/appkmonitor/files:/opt/app/files -p 8888:8888 --name apktool apktool

stop:
	sudo docker stop apktool

shell:
	docker exec -it apktool ash
```
### Docker删除none Image
```shell
docker rmi $(docker images --filter "dangling=true" -q)
```

### 附录
[http://www.docker.org.cn/dockerppt/110.html](http://www.docker.org.cn/dockerppt/110.html)
[https://github.com/docker-library/python/issues/318](https://github.com/docker-library/python/issues/318)
[https://www.theodoresi.top/blog/docker/deploy-a-flask-app-in-docker](https://www.theodoresi.top/blog/docker/deploy-a-flask-app-in-docker)