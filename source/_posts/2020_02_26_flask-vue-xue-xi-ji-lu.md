---
title: Flask_Vue学习记录
description: Flask_Vue学习记录
date: 2020-02-26 00:19:43
tags:
categories:
---

### Flask上传文件
> https://dormousehole.readthedocs.io/en/latest/patterns/fileuploads.html

Flask 到底是如何处理文件上传的呢？如果上传的文件很小，那么会把它们储存在内 存中。否则就会把它们保存到一个临时的位置（通过 tempfile.gettempdir() 可以得到这个位置）。但是，如何限制上传文件的尺寸呢？缺省情况下， Flask 是 不限制上传文件的尺寸的。可以通过设置配置的 MAX_CONTENT_LENGTH 来限制文 件尺寸:
```python
from flask import Flask, Request

app = Flask(__name__)
app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024
```
上面的代码会把尺寸限制为 16 M 。如果上传了大于这个尺寸的文件， Flask 会抛 出一个 RequestEntityTooLarge 异常。

**注: 默认不限制上传大小**

### Flask上传大文件
>https://stackoverflow.com/questions/38048355/large-file-upload-in-flask

flask upload large file
```python
@app.route("/upload/<filename>", methods=["POST", "PUT"])
def upload_process(filename):
    filename = secure_filename(filename)
    fileFullPath = os.path.join(application.config['UPLOAD_FOLDER'], filename)
    with open(fileFullPath, "wb") as f:
        chunk_size = 4096
        while True:
            chunk = flask.request.stream.read(chunk_size)
            if len(chunk) == 0:
                return

            f.write(chunk)
    return jsonify({'filename': filename})
```

### [CRITICAL] WORKER TIMEOUT
>https://www.crifan.com/online_environment_gunicorn_run_flask_critical_workder_timeout/

gunicorn大文件上传时会超时,因此需要做如下修改:
```shell
#filename: conf/gunicorn/gunicorn_config.py
timeout = 30 #超时
loglevel = ‘debug’ #日志等级
```
### Pipenv使用
> https://zhuanlan.zhihu.com/p/37581807

### 有用的链接
https://blog.csdn.net/wangdandan01/article/details/103478357