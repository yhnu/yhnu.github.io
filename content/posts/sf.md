### IOS平台

1. 针对IOS而言到iphon4s之后都支持到4096x4096了 建议用在光照贴图和UI上面
2. 指尖江湖会把光照贴图压缩到1024x1024,不超过2048x2048.你们可以做一下参考
3. UI贴图不建议同时存在超过5张(经验值)

### 安卓平台

1.使用Oepngl,可以通过GL_MAX_TEXTURE_SIZE,查询到最大支持分辨率.具体视游戏需要兼容的机型来定

```c#
static GLint maxTextureSize = 0;
glGetIntegerv(GL_MAX_TEXTURE_SIZE, &maxTextureSize);
```

2.数量不超过5张(经验值)

