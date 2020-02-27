---
title: LdReading开发记录
description: LdReading开发记录
date: 2020-02-26 01:07:27
tags:
categories:
---
### XAsset使用WebAsset
```csharp
        var assets = Assets.Load(remote_url, typeof(Texture2D));//直接转换为获取后的数据类型

        assets.completed += delegate (Asset a) {
            Debug.Log(a.name);
            //Texture2D t2d = new Texture2D(1, 1);
            //t2d.LoadImage(a.bytes);
            Texture2D t2d = a.asset as Texture2D;
            if (t2d != null)
            {
                Sprite s = Sprite.Create(t2d, new Rect(0, 0, t2d.width, t2d.height), Vector2.zero);
                mIcon.sprite = s;
            }
        };
```
### 当当网缩略图获取
> http://img3m4.ddimg.cn/76/25/23886004-1_u_2.jpg