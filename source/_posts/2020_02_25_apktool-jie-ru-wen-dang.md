---
title: APKTool接入文档
description: APKTool接入文档
date: 2020-02-25 23:54:24
tags:
categories:
---
### API V2对应接入文档嗯。

> 第一步：上传APK到文件中转站

```shell
curl -X POST -F "file=@./xxxx.file" http://10.11.67.39:8888/uploadfile
```
> 第二步：上传Bundle文件到文件中转站

```shell
curl -X POST -F "file=@./xxx.file" http://10.11.67.39:8888/uploadfile
```

> 第三步: 上传json信息到服务器 

```shell
curl -H "Content-Type:application/json" -X POST --data '{"apkurl":"apk文件名称","bundle":"bundle文件名称", "time":"构建时间", "tag":"构建的什么版本"}' http://10.11.67.39:8888/uploadurl
```