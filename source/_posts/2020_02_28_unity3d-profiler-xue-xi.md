---
title: Unity3D_Profiler学习
date: 1582873416027
tags:
  - Unity3D
categories:
  - Unity3D
description: Unity3D_Profiler学习
---
### 内存基础信息显示
```c#
// ProfilerWindow.cs
private void DrawOverviewText(ProfilerArea? area)
{
    if (!area.HasValue)
        return;
    //显示对应的基础数据信息
    string activeText = ProfilerDriver.GetOverviewText(area.Value, GetActiveVisibleFrameIndex());
    Debug.Log(activeText);
    float height = EditorStyles.wordWrappedLabel.CalcHeight(GUIContent.Temp(activeText), position.width);

    m_PaneScroll[(int)area] = GUILayout.BeginScrollView(m_PaneScroll[(int)area], Styles.background);
    EditorGUILayout.SelectableLabel(activeText, EditorStyles.wordWrappedLabel, GUILayout.MinHeight(height));
    GUILayout.EndScrollView();
}
```
![内存相关数据信息获取](http://q68vqxb8c.bkt.clouddn.com/2020_02_28_unity3d-profiler-xue-xi/20200228030546612.png)
![GPU相关数据信息获取](http://q68vqxb8c.bkt.clouddn.com/2020_02_28_unity3d-profiler-xue-xi/20200228031228709.png)
注意: 此接口包含所有模块的基础信息

### 底层接口数据获取
```c++
// ProfilerHistory.cpp
// ProfilerArea : 对应数据类型CPU,GPU还是其他
// frame        : 对应那一帧的数据
//                -1 对应最后一帧的数据
string ProfilerHistory::GetOverviewTextForProfilerArea(ProfilerArea profilerArea, int frame)
```

### 使用底层接口实时获取内存和显卡数据帮助数据分析
todo

