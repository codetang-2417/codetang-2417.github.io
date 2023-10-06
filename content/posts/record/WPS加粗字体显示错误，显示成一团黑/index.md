---
title: "WPS加粗字体显示错误，显示成一团黑"
date: 2023-10-06T12:58:01+08:00
lastmod: 2023-10-06T12:58:01+08:00
author: ["Ling"]
keywords:
- linux
- archlinux
- wps
categories: # 没有分类界面可以不填写
-
tags: # 标签
- archlinux
- wps
- linux
description: "WPS加粗字体显示错误"
weight:
slug: ""
draft: false # 是否为草稿
comments: false # 本页面是否显示评论
reward: false # 打赏
mermaid: true #是否开启mermaid
showToc: true # 显示目录
TocOpen: true # 自动展开目录
hidemeta: false # 是否隐藏文章的元信息，如发布日期、作者等
disableShare: true # 底部不显示分享栏
showbreadcrumbs: true #顶部显示路径
cover:
    image: "" #图片路径例如：posts/tech/123/123.png
    zoom: # 图片大小，例如填写 50% 表示原图像的一半大小
    caption: "" #图片底部描述
    alt: ""
    relative: false
---

解决方案：[Wps很多字体的加粗都显示异常的问题](https://forum.manjaro.org/t/wps/144447)。如图：

​![image](assets/image-20230921101755-dc4puvl.png)​

降级 freetype2 (2.13.2-1 → 2.13.0-1) 即可解决问题

如果是更新包后，出现问题，则系统应该会保留旧包的缓存，可以直接执行

```sh
sudo pacman -U /var/cache/pacman/pkg/freetype2-2.13.0-1-x86_64.pkg.tar.zst
```

如果提示包不存在，则说明缓存被清理，或者以前没有安装过旧版。

​![image](assets/image-20230921101903-zcmzndi.png)​

需要去官方备份下载旧版本，再使用上述命令行手动安装。官方备份网站：[归档](https://archive.archlinux.org/)

​![image](assets/image-20230921101945-3yva1uo.png "降级后正常")​

‍
