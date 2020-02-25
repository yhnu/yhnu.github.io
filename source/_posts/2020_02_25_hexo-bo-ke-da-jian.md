---
title: Hexo博客搭建
description: Hexo博客搭建
date: 2020-02-25 23:34:09
tags:
categories:
---

### 使用主题

[https://sabrinaluo.github.io/tech/](https://sabrinaluo.github.io/tech/)

### 添加description

```js
<% if(post.description){ %>
    <p class="post-description text-ellipsis desktop-only"> <%= post.description %> </p>
<% } else { %>
    <p class="post-description text-ellipsis desktop-only"> <%= post.content.replace(/<[^>]*>/ig, ' ').substr(0, 50) %> </p>
<% } %>
```

### 附录
[HexoEditor](https://github.com/zhuzhuyule/HexoEditor)
[https://moeditor.js.org/](https://moeditor.js.org/)