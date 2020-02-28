---
title: Unity3D_IOS_Instruments_通信
tags:
  - Unity3D
categories:
  - Unity3D
description: Unity3D_IOS_Instruments_通信
date: 2020-02-28 11:07:32
---
## 0x01 instruments相关的service
```xml
<string>com.apple.instruments.server.services.processcontrolbydictionary</string>
<string>com.apple.instruments.server.services.graphics.coreanimation.immediate</string>
<string>com.apple.instruments.server.services.assets</string>
<string>com.apple.instruments.target.ios</string>
<string>com.apple.instruments.server.services.graphics.openglesanalyzer.deferred</string>
<string>com.apple.instruments.server.services.coreprofilesessiontap.pmc</string>
<string>com.apple.instruments.server.services.deviceinfo.dyld-tracing</string>
<string>com.apple.instruments.server.services.device.xpccontrol</string>
<string>com.apple.instruments.target.physical-cpus</string>
<string>com.apple.instruments.server.services.sysmontap.system</string>
<string>com.apple.instruments.server.services.sysmontap.immediate</string>
<string>com.apple.instruments.server.services.objectalloc.zombies</string>
<string>com.apple.instruments.server.services.deviceinfo.gcd-perf</string>
<string>com.apple.xcode.debug-gauge-data-providers.procinfo</string>
<string>com.apple.instruments.target.user-page-size</string>
<string>com.apple.instruments.server.services.deviceinfo.recordOptions</string>
<string>com.apple.instruments.server.services.graphics.coreanimation.deferred</string>
<string>com.apple.instruments.server.services.deviceinfo.metal</string>
<string>com.apple.instruments.server.services.device.applictionListing</string>
<string>com.apple.instruments.server.services.fsusage.immediate</string>
<string>com.apple.instruments.server.services.coreprofilesessiontap</string>
<string>com.apple.instruments.server.services.coreprofilesessiontap.multipleTimeTriggers</string>
<string>com.apple.instruments.server.services.sampling</string>
<string>com.apple.instruments.server.services.coreprofilesessiontap.windowed</string>
<string>com.apple.instruments.server.services.vmtracking.deferred</string>
<string>com.apple.xcode.debug-gauge-data-providers.Energy</string>
<string>com.apple.instruments.server.services.processcontrol.capability.signal</string>
<string>com.apple.instruments.server.services.fsusage.deferred</string>
<string>com.apple.dt.Instruments.inlineCapabilities</string>
<string>com.apple.instruments.server.services.objectalloc.immediate</string>
<string>com.apple.instruments.server.services.deviceinfo</string>
<string>com.apple.instruments.server.services.coreprofilesessiontap.pmi</string>
<string>com.apple.instruments.server.services.networking</string>
<string>com.apple.instruments.server.services.networking.immediate</string>
<string>com.apple.instruments.server.services.filetransfer</string>
<string>com.apple.instruments.server.services.graphics.openglesanalyzer</string>
<string>com.apple.instruments.server.services.sysmontap.deferred</string>
<string>com.apple.instruments.target.logical-cpus</string>
<string>com.apple.xcode.debug-gauge-data-providers.NetworkStatistics</string>
<string>com.apple.instruments.server.services.deviceinfo.energytracing.location</string>
<string>com.apple.instruments.server.services.power.immediate</string>
<string>com.apple.instruments.server.services.sysmontap</string>
<string>com.apple.instruments.server.services.vmtracking</string>
<string>com.apple.instruments.server.services.activity.immediate</string>
<string>com.apple.instruments.server.services.objectalloc</string>
<string>com.apple.instruments.server.services.coreprofilesessiontap.deferred</string>
<string>com.apple.instruments.target.mtb.numer</string>
<string>com.apple.xcode.debug-gauge-data-providers.SpriteKit</string>
<string>com.apple.instruments.server.services.remoteleaks.deferred</string>
<string>com.apple.dt.Xcode.WatchProcessControl</string>
<string>com.apple.instruments.server.services.power.deferred</string>
<string>com.apple.instruments.server.services.graphics.coreanimation</string>
<string>com.apple.instruments.server.services.coresampling</string>
<string>com.apple.instruments.server.services.activity</string>
<string>com.apple.instruments.server.services.sampling.deferred</string>
<string>com.apple.instruments.server.services.activity.deferred</string>
<string>com.apple.instruments.server.services.remoteleaks</string>
<string>com.apple.instruments.server.services.sysmontap.windowed</string>
<string>com.apple.instruments.server.services.objectalloc.deferred</string>
<string>com.apple.instruments.server.services.graphics.opengl.immediate</string>
<string>com.apple.xcode.resource-control</string>
<string>com.apple.instruments.server.services.networking.deferred</string>
<string>com.apple.instruments.server.services.remoteleaks.immediate</string>
<string>com.apple.instruments.server.services.graphics.opengl.deferred</string>
<string>com.apple.instruments.target.mtb.denom</string>
<string>com.apple.instruments.server.services.sampling.immediate</string>
<string>com.apple.xcode.debug-gauge-data-providers.SceneKit</string>
<string>com.apple.instruments.server.services.wireless</string>
<string>com.apple.instruments.server.services.processcontrol</string>
<string>com.apple.instruments.server.services.deviceinfo.app-life-cycle</string>
<string>com.apple.instruments.server.services.deviceinfo.systemversion</string>
<string>com.apple.instruments.server.services.processcontrol.feature.deviceio</string>
<string>com.apple.instruments.server.services.assets.response</string>
<string>com.apple.instruments.server.services.deviceinfo.scenekit-tracing</string>
<string>com.apple.instruments.server.services.sysmontap.processes</string>
<string>com.apple.instruments.server.services.coreprofilesessiontap.immediate</string>
<string>com.apple.dt.services.capabilities.vmtracking</string>
<string>com.apple.private.DTXConnection</string>
<string>com.apple.instruments.server.services.graphics.opengl</string>
<string>com.apple.instruments.server.services.vmtracking.immediate</string>
<string>com.apple.xcode.debug-gauge-data-providers.resources</string>
<string>com.apple.instruments.server.services.mobilenotifications</string>
<string>com.apple.private.DTXBlockCompression</string>
<string>com.apple.instruments.server.services.filetransfer.debuginbox</string>
<string>com.apple.instruments.server.services.graphics.openglesanalyzer.immediate</string>
<string>com.apple.instruments.server.services.fsusage</string>
<string>com.apple.instruments.server.services.power</string>
```
##0x02 XCode如何与Instrucment通信的原理

[Discovering_the_iOS_Instruments_Server](https://recon.cx/2018/montreal/schedule/system/event_attachments/attachments/000/000/043/original/RECON-MTL-2018-Discovering_the_iOS_Instruments_Server.pdf)

> 注意: 对应的库编译需要使用IDA7.1,参考链接