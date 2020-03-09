---
title: mongodb使用指南
date: 1583736322959
tags:
  - Mongodb
categories:
  - Mongodb
description: mongod使用指南
---

### 更改配置/etc/mongo.conf开启安全认证
![](http://q68vqxb8c.bkt.clouddn.com/2020_03_09_mongod-shi-yong-zhi-nan/20200309030245642.png)

### 先创建超级用户
```shell
use admin
db.createUser({user:'root',pwd:'root',roles: [{role:'root',db:'admin'}]})})
开启安全认证
use flask
db.createUser({user:'admin',pwd:'admin',roles: [{role:'readWrite',db:'flask'}]})})
```

### flask使用Mongo
user:password@10.11.67.39:27017/flask

### 删除用户
db.dropUser("username")


