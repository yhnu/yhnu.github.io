---
title: APKTool接入文档
description: APKTool接入文档
date: 2020-02-25 23:54:24
tags:
categories:
---
### 1. 构建机 API V2对应接入文档

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
### 2. Web前段接入文档
1. 获取APP列表：
http://10.11.67.39:7777/applist
2. 获取对应的BundleTreeMap
![](http://q68vqxb8c.bkt.clouddn.com/2020_02_25_apktool-jie-ru-wen-dang/20200227105953972.png)
使用如下命令
```shell
curl -H "Content-Type:application/json" -X POST --data "{\"tag\":\"tgac_trunk\",\"buildnumber\":103}" http://10.11.67.39:7777/bundletreemap
```
3. 获取对应的apktop
![](http://q68vqxb8c.bkt.clouddn.com/2020_02_25_apktool-jie-ru-wen-dang/20200227110145743.png)
使用如下命令
```shell
curl -H "Content-Type:application/json" -X POST --data "{\"tag\":\"tgac_trunk\",\"buildnumber\":103}" http://10.11.67.39:7777/apktop
```
4. 获取对应的assetrepeat
![](http://q68vqxb8c.bkt.clouddn.com/2020_02_25_apktool-jie-ru-wen-dang/20200227110301528.png)
使用如下命令
```shell
curl -H "Content-Type:application/json" -X POST --data "{\"tag\":\"tgac_trunk\",\"buildnumber\":103}" http://10.11.67.39:7777/assetrepeat
```
5.获取对应的assetstop
![](http://q68vqxb8c.bkt.clouddn.com/2020_02_25_apktool-jie-ru-wen-dang/20200227110343053.png)
使用如下命令
```shell
curl -H "Content-Type:application/json" -X POST --data "{\"tag\":\"tgac_trunk\",\"buildnumber\":103}" http://10.11.67.39:7777/assetstop
```

### 3.模块统计与查询
说明: 
1. 所有数据查询使用正则表达式匹配, 数据未作缓存匹配数据较多时会比较慢
2. 针对模块设置,不会做单条更新,做全局更新
---

1.查询功能

```shell
curl -H "Content-Type:application/json" -X POST --data "{\"tag\":\"jxsj2\",\"buildnumber\":1001, \"query\":\"Maps\"}" http://10.11.67.39:7777/modlequery
```

2.获取模块设置对应的参数
```
 curl -H "Content-Type:application/json" -X POST --data "{\"tag\":\"jxsj2\"}" http://10.11.67.39:7777/modulesetting/get
```

3.设置模块设置对应的参数(注:使用命令行不能传递中文)
```
 curl -H "Content-Type:application/json" -X POST --data "{\"tag\":\"jxsj2\", \"data\": [{\"name\":\"Maps\", \"regex\":\"Maps\"}]}" http://10.11.67.39:7777/modulesetting/set
```