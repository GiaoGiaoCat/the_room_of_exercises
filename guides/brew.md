# Homebrew

Homebrew OS X 不可或缺的套件管理器。类似 centos 下的 yum、ubuntu 下的 apt-get，免去了自己手动编译安装的不方便。

Homebrew 会将套件安装到独立目录，并将文件软链接至 `/usr/local`，所有文件均会被安装到预定义目录下，所以您无需担心 Homebrew 的安装位置。

## brew安装方法

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## 命令说明

| Command | Description |
|---|---|
| brew search wget | 查找软件包 |
| brew install wget | 安装软件包 |
| brew list | 列出已安装的软件包 |
| brew remove wget | 删除软件包 |
| brew info wget | 查看软件包信息 |
| brew deps wget | 列出软件包的依赖关系 |
| brew update | 更新 brew |
| brew outdated | 列出过时的软件包 |
| brew upgrade | 更新全部过时的软件包 |
| brew upgrade wget | 更新指定过时的软件包 |
| Ctrl + r | 可以搜索历史命令 |
| Ctrl + l | 类似 clear 命令效果 |
| Ctrl + y | 粘贴 |
