---
title: VuePress快速编写文档
date: 1583806616838
tags:
  - VUE
categories:
  - VUE
description: VuePress快速编写文档
---

### 简单3步快速编写文档
```shell
npm init -y
```

### 修改package.json
```json
"scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "dev": "vuepress dev . --open",
    "build": "vuepress build ."
  }
```
![](http://q68vqxb8c.bkt.clouddn.com/2020_03_10_vuepres_kuai_su_bian_xie_wen_dang/20200310101904094.png)

### 编写Readme.md
```

---
home: true
# heroImage: /hero.png
description: Unity3D包体分析,就是如此简单
actionText: 快速查看Demo →
actionLink: /
features:
- title: 三步接入
  details: 使用CURL常用命令行,无需所谓的接入脚本,无需开发环境
- title: 分析全面
  details: 高效分析安装包内文件占比及大小,让你一眼发现有问题的资源
- title: 多维展示
  details: 前端多维数据展示,帮助发现问题资源.配合UResourceTool服用效果更佳
footer: MIT Licensed | Copyright © 2020-present by yhnu
---

### 快速接入文档(可手动上传)
```shell
第一步：上传APK到文件中转站

curl -X POST -F "file=@./apk_path" http://10.11.67.39:8888/uploadfile

第二步：上传Bundle文件到文件中转站

curl -X POST -F "file=@./buildlog_path" http://10.11.67.39:8888/uploadfile

第三步: 上传json信息到服务器

curl -H "Content-Type:application/json" -X POST --data '{"apkurl":"apk_name","bundle":"buildlog_name", "time":"上传时间标记:2020-03-02 22:30", "buildnumber":"构建序列比如:1001" "tag":"应用程序tag比如:jx3m_trunk"}' http://10.11.67.39:8888/uploadurl
```
### 运行查看结果
![](http://q68vqxb8c.bkt.clouddn.com/2020_03_10_vuepres_kuai_su_bian_xie_wen_dang/20200310102113081.png)
