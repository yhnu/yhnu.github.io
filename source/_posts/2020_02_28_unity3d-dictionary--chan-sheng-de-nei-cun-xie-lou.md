---
title: Unity3D_Dictionary_产生的内存泄漏
tags:
  - Unity3D
categories:
  - Unity3D
description: Unity3D_Dictionary_产生的内存泄漏
date: 2020-02-28 11:03:59
---


0x01 一段神奇的代码,下面的代码会引发内存不释放

Unity3D构建32位安卓应用,使用Dictionary会产生内存泄漏

```c#
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GCAllocTest : MonoBehaviour
{
    struct MyData
    {
        public int hashCode;
        public string s;
    }
    private static MyData[] mds = new MyData[5000];
    byte[] t;
    private int n = 0;
    // Use this for initialization
    void Start()
    {
        for (var i = 0; i < mds.Length; ++i)
        {
            mds[i].hashCode = i * (1024 * 1023) + 1;
        }
    }
    // Update is called once per frame
    void Update()
    {
        t = new byte[2 * 1024 * 1024];
    }    
}
```

