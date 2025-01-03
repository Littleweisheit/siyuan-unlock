## 重要声明

- 如果你是订阅、付费用户，你应该使用思源官方版本
- 这个版本去除了所有用户相关功能。可以不登录使用同步功能

运行容器
```shell
docker run \
-v /opt/siyuan:/siyuan/workspace \ # 上方创建的容器卷:映射容器内思源笔记的数据存放路径，与workspace保持一致
-p 6806:6806 \  # 思源笔记容器内起的端口
-u 1000:1000 \  # 官方文档中，使用普通用户创建
-e LANG=zh_CN.UTF-8 \  # 参考链接中，设置默认为中文(主要是为了说明文档，还是中文方便一点)
-e LC_ALL=zh_CN.UTF-8 \
--restart=always \  # 容器自动重启
-d --name="siyuanNote" \ # -d:容器后台启动，--name 设置容器名称
apkdv/siyuan-unlock \  # 使用的镜像源名称
--workspace=/siyuan/workspace/  # 官方设置的容器内的数据存放路径，要与上方保持一致
--accessAuthCode=XXXX 
```



<p align="center">
<img alt="SiYuan" src="https://b3log.org/images/brand/siyuan-128.png">
<br>
重构你的思维
<br><br>
<a title="Build Status" target="_blank" href="https://github.com/siyuan-note/siyuan/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/siyuan-note/siyuan/cd.yml?style=flat-square"></a>
<a title="Releases" target="_blank" href="https://github.com/appdev/siyuan-unlock/releases"><img src="https://img.shields.io/github/release/siyuan-note/siyuan.svg?style=flat-square&color=9CF"></a>
<a title="Downloads" target="_blank" href="https://github.com/appdev/siyuan-unlock/releases"><img src="https://img.shields.io/github/downloads/siyuan-note/siyuan/total.svg?style=flat-square&color=blueviolet"></a>
<br>
<a title="Docker Pulls" target="_blank" href="https://hub.docker.com/r/apkdv/siyuan-unlock"><img src="https://img.shields.io/docker/pulls/apkdv/siyuan-unlock.svg?style=flat-square&color=green"></a>
<a title="Docker Image Size" target="_blank" href="https://hub.docker.com/r/apkdv/siyuan-unlock"><img src="https://img.shields.io/docker/image-size/apkdv/siyuan-unlock.svg?style=flat-square&color=ff96b4"></a>
<a title="Hits" target="_blank" href="https://github.com/siyuan-note/siyuan"><img src="https://hits.b3log.org/siyuan-note/siyuan.svg"></a>
<br>
<a title="AGPLv3" target="_blank" href="https://www.gnu.org/licenses/agpl-3.0.txt"><img src="http://img.shields.io/badge/license-AGPLv3-orange.svg?style=flat-square"></a>
<a title="Code Size" target="_blank" href="https://github.com/siyuan-note/siyuan"><img src="https://img.shields.io/github/languages/code-size/siyuan-note/siyuan.svg?style=flat-square&color=yellow"></a>
<a title="GitHub Pull Requests" target="_blank" href="https://github.com/siyuan-note/siyuan/pulls"><img src="https://img.shields.io/github/issues-pr-closed/siyuan-note/siyuan.svg?style=flat-square&color=FF9966"></a>
<br>
<a title="GitHub Commits" target="_blank" href="https://github.com/siyuan-note/siyuan/commits/master"><img src="https://img.shields.io/github/commit-activity/m/siyuan-note/siyuan.svg?style=flat-square"></a>
<a title="Last Commit" target="_blank" href="https://github.com/siyuan-note/siyuan/commits/master"><img src="https://img.shields.io/github/last-commit/siyuan-note/siyuan.svg?style=flat-square&color=FF9900"></a>
<br><br>
<a title="Twitter" target="_blank" href="https://twitter.com/b3logos"><img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/b3logos?label=Follow&style=social"></a>
<br><br>
<a href="https://trendshift.io/repositories/3949" target="_blank"><img src="https://trendshift.io/api/badge/repositories/3949" alt="siyuan-note%2Fsiyuan | Trendshift" style="width: 250px; height: 55px;" width="250" height="55"/></a>
<br><br>
<a href="https://www.producthunt.com/products/siyuan/reviews?utm_source=badge-product_rating&utm_medium=badge&utm_souce=badge-siyuan" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/product_rating.svg?product_id=534576&theme=light" alt="SiYuan - A&#0032;privacy&#0045;first&#0032;personal&#0032;knowledge&#0032;management&#0032;software | Product Hunt" style="width: 242px; height: 108px;" width="242" height="108" /></a>
</p>

<p align="center">
<a href="README.md">English</a>
</p>

## 💡 简介

思源笔记是一款隐私优先的个人知识管理系统，支持细粒度块级引用和 Markdown 所见即所得。

![feature0.png](https://b3logfile.com/file/2024/01/feature0-1orBRlI.png)

![feature51.png](https://b3logfile.com/file/2024/02/feature5-1-uYYjAqy.png)

## 🔮 Features

Most features are free, even for commercial use.

* Content block
  * Block-level reference and two-way links
  * Custom attributes
  * SQL query embed
  * Protocol `siyuan://`
* Editor
  * Block-style
  * Markdown WYSIWYG
  * List outline
  * Block zoom-in
  * Million-word large document editing
  * Mathematical formulas, charts, flowcharts, Gantt charts, timing charts, staffs, etc.
  * Web clipping
  * PDF Annotation link
* Export
  * Block ref and embed
  * Standard Markdown with assets
  * PDF, Word and HTML
  * Copy to WeChat MP, Zhihu and Yuque
* Database
  * Table view
* Flashcard spaced repetition
* AI writing and Q/A chat via OpenAI API
* Tesseract OCR 
* Multi-tab, drag and drop to split screen
* Template snippet
* JavaScript/CSS snippet
* Android/iOS/HarmonyOS App
* Docker deployment
* [API](https://github.com/siyuan-note/siyuan/blob/master/API.md)
* Community marketplace

Some features are only available to paid members, for more details please refer to [Pricing](https://b3log.org/siyuan/en/pricing.html).

## 🏗️ 架构设计和开源生态

![思源笔记架构设计](https://b3logfile.com/file/2023/05/SiYuan_Arch-Sgu8vXT.png "思源笔记架构设计")

| Project                                                  | Description           | Forks                                                                           | Stars                                                                                | 
|----------------------------------------------------------|-----------------------|---------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| [lute](https://github.com/88250/lute)                    | Editor engine         | ![GitHub forks](https://img.shields.io/github/forks/88250/lute)                 | ![GitHub Repo stars](https://img.shields.io/github/stars/88250/lute)                 |
| [chrome](https://github.com/siyuan-note/siyuan-chrome)   | Chrome/Edge extension | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/siyuan-chrome)  | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/siyuan-chrome)  |
| [bazaar](https://github.com/siyuan-note/bazaar)          | Community marketplace | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/bazaar)         | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/bazaar)         |
| [dejavu](https://github.com/siyuan-note/dejavu)          | Data repo             | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/dejavu)         | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/dejavu)         |
| [petal](https://github.com/siyuan-note/petal)            | Plugin API            | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/petal)          | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/petal)          |
| [android](https://github.com/siyuan-note/siyuan-android) | Android App           | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/siyuan-android) | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/siyuan-android) |
| [ios](https://github.com/siyuan-note/siyuan-ios)         | iOS App               | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/siyuan-ios)     | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/siyuan-ios)     |
| [harmony](https://github.com/siyuan-note/siyuan-harmony) | HarmonyOS App         | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/siyuan-harmony) | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/siyuan-harmony) |
| [riff](https://github.com/siyuan-note/riff)              | Spaced repetition     | ![GitHub forks](https://img.shields.io/github/forks/siyuan-note/riff)           | ![GitHub Repo stars](https://img.shields.io/github/stars/siyuan-note/riff)           |

## 🌟 Star History

<a href="https://star-history.com/#siyuan-note/siyuan&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=siyuan-note/siyuan&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=siyuan-note/siyuan&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=siyuan-note/siyuan&type=Date" />
 </picture>
</a>

## 🗺️ Roadmap

* [SiYuan development plan and progress](https://github.com/orgs/siyuan-note/projects/1)
* [SiYuan changelog](CHANGELOG.md)

## 🚀 Download Setup

It is recommended to give priority to installing through the application market on the desktop and mobile, so that you can upgrade the version with one click in the future.

### App Market

Mobile:

* [App Store](https://apps.apple.com/us/app/siyuan/id1583226508)
* [Google Play](https://play.google.com/store/apps/details?id=org.b3log.siyuan)
* [F-Droid](https://f-droid.org/packages/org.b3log.siyuan)

Desktop:

* [Microsoft Store](https://apps.microsoft.com/detail/9p7hpmxp73k4)

### Installation Package

* [B3log](https://b3log.org/siyuan/en/download.html)
* [GitHub](https://github.com/siyuan-note/siyuan/releases)

### Docker 部署

<details>
<summary>Docker 部署文档</summary>

#### 概述

在服务器上伺服思源最简单的方案是通过 Docker 部署。

* 镜像名称 `apkdv/siyuan-unlock`
* [镜像地址](https://hub.docker.com/r/apkdv/siyuan-unlock)

#### 文件结构

整体程序位于 `/opt/siyuan/` 下，基本上就是 Electron 安装包 resources 文件夹下的结构：

* appearance：图标、主题、多语言
* guide：帮助文档
* stage：界面和静态资源
* kernel：内核程序

#### 启动入口

构建 Docker 镜像时设置了入口：`ENTRYPOINT [ "/opt/siyuan/kernel" ]`，使用 `docker run apkdv/siyuan-unlock` 并带参即可启动：

* `--workspace`：指定工作空间文件夹路径，在宿主机上通过 `-v` 挂载到容器中
* `--accessAuthCode`：指定访问授权码

更多的参数可参考 `--help`。下面是一条启动命令示例：

```
docker run -d -v workspace_dir_host:workspace_dir_container -p 6806:6806 apkdv/siyuan-unlock --workspace=workspace_dir_container --accessAuthCode=xxx
```

* `workspace_dir_host`：宿主机上的工作空间文件夹路径
* `workspace_dir_container`：容器内工作空间文件夹路径，和后面 `--workspace` 指定成一样的
* `accessAuthCode`：访问授权码，请**务必修改**，否则任何人都可以读写你的数据

为了简化，建议将 workspace 文件夹路径在宿主机和容器上配置为一致的，比如将 `workspace_dir_host` 和 `workspace_dir_container` 都配置为 `/siyuan/workspace`，对应的启动命令示例：

```
docker run -d -v /siyuan/workspace:/siyuan/workspace -p 6806:6806 -u 1000:1000 apkdv/siyuan-unlock --workspace=/siyuan/workspace/ --accessAuthCode=xxx
```

Alternatively, see below for an example Docker Compose file:

```
version: "3.9"
services:
  main:
    image: apkdv/siyuan-unlock
    command: ['--workspace=/siyuan/workspace/', '--accessAuthCode=${AuthCode}']
    user: '1000:1000'
    ports:
      - 6806:6806
    volumes:
      - /siyuan/workspace:/siyuan/workspace
    restart: unless-stopped
    environment:
      # A list of time zone identifiers can be found at https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
      - TZ=${TimeZone}
```

#### 用户权限

镜像中是使用默认创建的普通用户 `siyuan`（uid 1000/gid 1000）来启动内核进程的，所以在宿主机创建工作空间文件夹时请注意设置该文件夹所属用户组：`chown -R 1000:1000 /siyuan/workspace`，在启动容器时需要带参数 `-u 1000:1000`。

#### 隐藏端口

使用 NGINX 反向代理可以隐藏 6806 端口，请注意：

* 配置 WebSocket 反代 `/ws`

#### 注意

* 请务必确认挂载卷的正确性，否则容器删除后数据会丢失
* 不要使用 URL 重写进行重定向，否则鉴权可能会有问题，建议配置反向代理

#### 限制

* 不支持桌面端和移动端应用连接，仅支持在浏览器上使用
* 不支持导出 PDF、HTML 和 Word 格式
* 不支持导入 Markdown 文件

</details>

### 安装包

* [GitHub](https://github.com/appdev/siyuan-unlock/releases)


## ❓ 常见问题和解答

### 思源是如何存储数据的？

数据保存在工作空间文件夹下，在工作空间 data 文件夹下：

* `assets` 用于保存所有插入的资源文件
* `emojis` 用于保存自定义图标表情图片
* `snippets` 用于保存代码片段
* `storage` 用于保存查询条件、布局和闪卡数据等
* `templates` 用于保存模板片段
* `widgets` 用于保存挂件
* `plugins` 用于保存插件
* `public` 用于保存公开的数据
* 其余文件夹就是用户自己创建的笔记本文件夹，笔记本文件夹下 `.sy` 后缀的文件用于保存文档数据，数据格式为 JSON

### 支持通过第三方同步盘进行数据同步吗？

不支持通过第三方同步盘进行数据同步，否则可能会导致数据损坏。

虽然不支持第三方同步盘，但是支持对接第三方云端存储（会员特权）。

另外，也可以考虑手动导出导入 Data 实现数据同步：

* 桌面端：<kbd>设置</kbd> - <kbd>导出</kbd> - <kbd>导出 Data</kbd> / <kbd>导入 Data</kbd>
* 移动端：<kbd>右侧栏</kbd> - <kbd>关于</kbd> - <kbd>导出 Data</kbd> / <kbd>导入 Data</kbd>

### Is SiYuan open source?

SiYuan is completely open source, and contributions are welcome:

* [User Interface and Kernel](https://github.com/siyuan-note/siyuan)
* [Android](https://github.com/siyuan-note/siyuan-android)
* [iOS](https://github.com/siyuan-note/siyuan-ios)
* [HarmonyOS](https://github.com/siyuan-note/siyuan-harmony)
* [Chrome Clipping Extension](https://github.com/siyuan-note/siyuan-chrome)

更多细节请参考[开发指南](https://github.com/siyuan-note/siyuan/blob/master/.github/CONTRIBUTING_zh_CN.md)。

### 如何升级到新版本？

* 如果是通过应用商店安装的，请通过应用商店更新
* 如果是桌面端通过安装包安装的，可打开 <kbd>设置</kbd> - <kbd>关于</kbd> - <kbd>自动下载更新安装包</kbd> 选项，这样思源会自动下载最新版安装包并提示安装
* 如果是通过手动安装包安装的，请再次下载安装包安装

可在 <kbd>设置</kbd> - <kbd>关于</kbd> - <kbd>当前版本</kbd> 中 <kbd>检查更新</kbd>，也可以通过关注[官方下载](https://github.com/appdev/siyuan-unlock/releases)或者 [GitHub Releases](https://github.com/appdev/siyuan-unlock/releases) 来获取新版本。

**注意**：切勿将工作空间放置于安装目录下，因为更新版本会清空安装目录下的所有文件

### 删除文档有什么注意事项吗？

文档被删除后不会出现在操作系统回收站中，而是直接删除，删除时思源会生成数据历史。

### 如何才能只换行不新起段落？

请使用 <kbd>Shift+Enter</kbd>。

## 有的块（比如在列表项中的段落块）找不到块标怎么办？

在列表项下的第一个子块是省略块标的。可以将光标移到这个块中，然后通过 <kbd>Ctrl+/</kbd> 触发它的块标菜单。

### 如何分享笔记？

* 分享文档到链滴
* 导出导入 `.sy.zip` 数据包
* 通过网络伺服
* 导出导入 Markdown
* <kbd>导出预览</kbd> 中复制到第三方在线服务

### 数据仓库密钥遗失怎么办？

* 如果之前在多个设备上正确初始化过数据仓库密钥的话，那么该密钥在所有设备上都是相同的，可以在 <kbd>设置</kbd> - <kbd>关于</kbd> - <kbd>数据仓库密钥</kbd> - <kbd>复制密钥字符串</kbd> 找回
* 如果之前没有正确配置（比如多个设备上密钥不一致）或者所有设备均不可用，已经无法获得密钥字符串，则可通过如下步骤重置密钥：

    1. 手动备份好数据，可通过 <kbd>导出 Data</kbd> 或者直接在文件系统上复制 <kbd>工作空间/data/</kbd> 文件夹
    2. <kbd>设置</kbd> - <kbd>关于</kbd> - <kbd>数据仓库密钥</kbd> - <kbd>重置数据仓库</kbd>
    3. 重新初始化数据仓库密钥，在一台设备上初始化密钥以后，其他设备导入密钥
    4. 云端使用新的同步目录，旧的同步目录已经无法使用，可以删除
    5. 已有的云端快照已经无法使用，可以删除

## 🙏 鸣谢

思源的诞生离不开众多的开源项目和贡献者，请参考项目源代码 kernel/go.mod、app/package.json 和项目首页。

思源的成长离不开用户的反馈和宣传推广，感谢所有人对思源的帮助 ❤️
