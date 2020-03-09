---
title: SystemD配置指南
date: 1583115695516
tags:
  - 未分类
categories:
  - 未分类
description: SystemD配置指南
---

### 使用框架为quick_systemd
https://www.npmjs.com/package/quick_systemd
### 安装

npm install quick_systemd

sudo quick-systemd --add --settings service.json
sudo quick-systemd --remove --service my-service

### 使用配置的方式
```json
{
  "name": "gitea",
  "description": "an amazing service gitea",
  "cwd": "/otp",
  "user": "root",
  "group": "rot",
  "app": "gitea web",
  "logrotate": true
}
```
