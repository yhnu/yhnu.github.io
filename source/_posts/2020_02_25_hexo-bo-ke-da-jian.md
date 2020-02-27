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

### 插件编写
> https://github.com/dailyrandomphoto/hexo-unique-post-path
> https://hexo.io/plugins/

### 多标签
![](/2020_02_25_hexo-bo-ke-da-jian/20200226125747239.png)

### 评论插件
> https://blog.csdn.net/death05/article/details/83618887

### 最新文章
```js
<% if (site.posts.length){ %>
  <div class="widget-wrap">
    <h3 class="widget-title"><%= __('recent_posts') %></h3>
    <div class="widget">
      <ul>
        <% site.posts.sort('date', -1).limit(5).each(function(post){ %>
          <li>
            <a href="<%- url_for(post.path) %>"><%= post.title || '(no title)' %></a>
          </li>
        <% }) %>
      </ul>
    </div>
  </div>
<% } %>
```
### 附录
>[HexoEditor](https://github.com/zhuzhuyule/HexoEditor)
>[https://moeditor.js.org/](https://moeditor.js.org/)
>[https://sulin.me/2019/Z726F8.html](https://sulin.me/2019/Z726F8.html)
>[https://github.com/cometlj/hexo-translate-title](https://github.com/cometlj/hexo-translate-title)
>https://github.com/viko16/hexo-permalink-pinyin
