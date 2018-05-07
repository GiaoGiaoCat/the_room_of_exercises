注：有一个类似的服务 https://siftery.com 可以查看各个公司使用的软件和服务。

## 面向开发团队的服务和技术栈

每个开发团队和开发者都要有如下工具

* wiki
* 版本控制
* 文件比较工具
* 编辑器
* 构建工具 - 用来编译
* 脚本工具
* 数值分析工具 - 可以对数据有一个直观地了解——图表、或者曲线图
* 文档工具 - 常常需要和他人分享想法
  * 图形可视化工具 - graphviz
  * 流程图
  * 代码自文档工具
  * 在线原型设计
* 文件备份
* 文件共享
* 软件QA（质量保障）工具
  * 错误跟踪
  * 任务需求管理
  * 单元测试和代码覆盖率
  * 代码“美化器” - 通过软件达到统一编程风格的效果
* 协同编辑器 - 异地团队结对编程

错误跟踪，任务管理通常可以合为同一工具。其中有些在 [Mac 平台下的软件](https://github.com/wjp2013/the_room_of_exercises/blob/master/guides/Best-App-for-Mac.md) 中已有介绍这里不再赘述。

### 说明

* ★ 正在使用, 星越多代表越常用
* ☆ 备选
* ♣ 关注的软件

### 团队工作

名称  | 功能简述
----- | ------
[slack](https://www.slack.com/) ★ | 新一代集成工作环境
[GistDox](https://app.gistboxapp.com/) ★ | 基于 gists 的代码管理，可以团队共享
[github project](https://github.com/) ★ | 任务需求管理
[github](https://github.com/) ★ | 代码托管
[newrelic](https://newrelic.com/) ★ | 服务器状态监控
[BitTorrentSync](http://www.getsync.com/) ★ | 团队内部的素材、视频、电子书、学习资料共享
[rubocop](https://github.com/bbatsov/rubocop) ★ | 代码质量检查
[Code Climate](https://codeclimate.com/) ★ | Code Review，和 rubocop 不是一回事
[Travis CI](https://travis-ci.org/) ☆ | 持续集成
[Witeboard](https://www.tutorialspoint.com/whiteboard.htm) ★ | 白板
[github wiki](https://github.com/) ★ | wiki
[floobits](https://floobits.com/) ★ | 结对编程
? | 原型设计
? | 脑图
? | API 测试
? | API 文档
[trello](https://trello.com) ★ | 任务需求管理备选
bitbucket ☆ | 代码托管备选
github issues ☆ | 错误跟踪

### 测试

名称  | 功能简述
----- | ------
[guard](https://github.com/guard/guard) ★ | 文件更改监控，自动运行测试
[watir](https://github.com/watir/watir/) ☆ | Web项目自动化测试

### 服务器部署

名称  | 功能简述
----- | ------
nginx ★ | 反向代理服务器
[Puma](http://puma.io/) ★ | Ruby Webservers
[Mina](http://nadarei.co/mina/) ★ | Really fast deployer and server automation tool
Vagrant ♣ | 虚拟机用于代码分发和环境同步
Docker ♣ | 代码分发

### 代码规范

* [The Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)
* [The Rails Style Guide](https://github.com/bbatsov/rails-style-guide)
* [A collection of useful .gitignore templates](https://github.com/github/gitignore)
* [JSON](https://github.com/darcyliu/google-styleguide/blob/master/JSONStyleGuide.md)
* [A guide for programming in style. ☆](https://github.com/thoughtbot/guides)
* [CSS ☆](https://github.com/chadluo/CSS-Guidelines/blob/master/README.md)

### 程序员的自我修养

* 《松本行弘的程序世界》
* 《黑客与画家》
* 《失控》

### 敏捷团队的自我修养

* 《重来》

## 面向开发者的网站

### Tips

名称  | 功能简述
----- | ------
[GitHub秘籍](https://github.com/tiimgreen/github-cheat-sheet/blob/master/README.zh-cn.md) | 收录了一些Git和Github非常酷同时又少有人知的功能

### 工具

名称  | 功能简述
----- | ------
[JSONLint](http://jsonlint.com/) | The JSON Validator
[Rubular](http://rubular.com/) | Ruby 正则工具
[Travis WebLint](http://yaml.travis-ci.org/) | 验证 travis-ci 配置是否正确
[Video to GIF](http://imgur.com/vidgif) | 视频变 Gif 文件
[RailsDiff](http://railsdiff.org/) | 比较 Rails 版本变化
[Yep, it’s vulnerable.](https://isitvulnerable.com/) | 上传 Gemfile.lock 检查你的 gem 有哪些漏洞
[bundlewatcher](http://www.bundlewatcher.com/) | 上传 Gemfile.lock 检查你的 gem 哪些该升级了
[bundle_outdated](https://github.com/scoop/bundle_outdated) | Find out which gems in your bundle are outdated.
[checkzilla](https://github.com/mickey/checkzilla) | CheckZilla is a command line tool allowing you to check and be notified of outdated software. 
[gemnasium](https://gemnasium.com/) | SECURE YOUR PROJECT AND REDUCE TECHNICAL DEBT
[演说.IO](http://yanshuo.io/) | 在线编辑、分享、保存，打开网页就能演示的幻灯片
[asciiflow](http://asciiflow.com/) | 通过 ASCII 编码来绘制图表的在线工具
[Uml Ascii Art](http://wiki.c2.com/?UmlAsciiArt) | Uml Ascii Art的说明
[使用 Graph-Easy 绘制 ASCII 图](https://www.jianshu.com/p/54255050d42f) | 使用 Graph-Easy 绘制 ASCII 图
[Generate an ASCII network diagram](https://changelog.com/news/generate-an-ascii-network-diagram-from-the-route-table-of-a-unixlinux-AJX4) | ASCII 绘制 网络图


### 配色

名称  | 功能简述
----- | ------
[iTerm Themes](http://iterm2colorschemes.com/) | iTerm 配色大全
[A set of fecund iTerm 2 color schemes](https://github.com/baskerville/iTerm-2-Color-Themes) | A set of fecund iTerm 2 color schemes
[Color Sublime](http://colorsublime.com/) | Sublimt Text 配色大全

### 图片处理

名称  | 功能简述
----- | ------
[Tiny Png](https://tinypng.com/) | 图片压缩处理
