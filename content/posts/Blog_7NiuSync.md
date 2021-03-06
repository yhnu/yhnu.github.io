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

### 0x04: 手动编译并上传

```shell
# 上传
$ hugo && ./qiniu/qshell.exe qupload sync.conf
# 本地上传
$ rm -rf .qshell/qupload/ && hugo && ./qiniu/qshell.exe qupload sync.conf -L
```

### 0x05:刷新CDN

```shell
$ ./qiniu/qshell.exe cdnrefresh -i file.list
```

### 0x06:fix图片路径

```shell
# 使用typora编辑器
sed 's;".*/image;"image;' index.html -i
# 目录查找替换
grep -rl 'src=".*/image-' public/posts/ | xargs sed -i 's;src=".*/image-;src="image-;g'
find public -type f -exec sed -i -e 's;".*/image;"image;g'
```

### 0x07:一条命令搞定它

```shell
hugo && grep -rl 'src=".*/image-' public/posts/ | xargs sed -i 's;src=".*/image-;src="image-;g' && rm -rf .qshell/qupload && ./qiniu/qshell.exe qupload sync.conf -L
```

### links:

https://stackoverflow.com/questions/6758963/find-and-replace-with-sed-in-directory-and-sub-directories