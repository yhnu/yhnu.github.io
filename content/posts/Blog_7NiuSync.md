---
title: "如何使用7牛云同步博客"
description: "如何使用7牛云同步博客"
date: "2020-1-2"
categories:
  - "博客"
tags:
  - "7牛"
  - "Blog"
  - "Hugo"

---

> 使用7牛云进行Blog同步
> <!--more-->

### 0x01: 原因

当我把博客使用github page时,打开网页经常会很慢. 作为静态网页这很不正常,平时经常使用7牛云的免费空间,基本能满足

我的使用需求,因此尝试使用7牛云的对象存储服务进行网站存储.

### 0x02:  Github Action

![image-20200102112235585](image-20200102112235585.png)

```yaml
- name: 7Niu
      run: |
        chmod +x ./qiniu/qshell
        ./qiniu/qshell account xxxx yyyy 7niu
        ./qiniu/qshell qupload ./qiniu/sync.conf
```

### 0x03: 全部使用了相对路径

```json
{
    "src_dir": "public",
    "bucket": "yhnu",
    "overwrite": false
}
```

