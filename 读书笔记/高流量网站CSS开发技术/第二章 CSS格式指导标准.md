# CSS 格式指导标准

对于代码，每位开发人员都有自己的书写习惯。个人习惯通常必须要服从灵活性、一致性更高的编写方式。

在起步阶段，这个方法可能不是效率最高的，新入职的开发者要熟悉公司的编码约定，否则无法真正开始干活。但应用了这些方法，要编辑和更新他人写的代码就会更容易，而不必为了弄懂这些代码，熟悉某人的编码风格而多花时间。

## CSS 格式指导标准

不同的人有不同的编码风格，有时会给彼此的理解阅读造成极大的困扰，而建立一份 CSS 格式指导标准并加以实施，将会消除编码中的不一致成分。编码不一致会减慢开发流程，增加错误、冗余，造成代码臃肿。一份格式指导标准可以成为确保一致性的有力工具，进而增强代码的可重用性和有效性。

指导标准说到底只是一份“参考指南”，遇到具体问题时候，决策权还是在你自己。

## CSS 编写格式

### 单行与多行

使用多行写法，既每个属性独占一行。这样的原因是以下几点：

* 容易注释和标示修改
* 在较小的文件中容易阅读
* 在后续阶段会对 CSS 文件进行简化和压缩（幸运的是 Rails 帮我们做了这些）

### 缩进

尽量不要采用对照 HTML 结构的缩进方式。因为当 HTML 结构非常复杂的时候，CSS 的规则可能要向右缩进很多。超出屏幕以外（尤其是对于坚持每行不超过 80 个字符的玩家们）。下面是一个 **不好的例子**

```
section {
  width: 800px;
}
  section article {
    border-bottom: 1px solid #999;
    padding-bottom: 10px;
  }
    section article footer {
      font-size: 11px;
      font-style: italic;
    }
```

### 制表符和空格

* 使用制表符进行缩进（Indent using 2 spaces）
* 使用等宽字体
* 使用空格校准定位

### 冒号和分号

因为我们 CSS 文件将来会被简化，所以编辑阶段主要关心的就是易读性。

* 冒号和属性值之间保留一个空格
* 不要省略最后一个属性后面的分号

## 注释和 CSS 元数据

### 现成的标准: CSSDOC

CSSDOC 采用的是 DocBlock。

* 一段 DocBlock 以 /\*\* 开头，以 空格加 \*/ 结尾。每一行必须以空格加 \* 开头。
* 标签以 @ 开始，紧跟着名字，中间不带空格。
* 标签可以包括作者@author，版权@copyright，代办@todo 等信息。标签描述的值放在标签名称之后，前面用空格分开。
* 可以加入多个区块注释，对样式表进行内容区块划分。补丁和错误修证放在每个区块结束的位置。
* 区块注释应加 @section 标签。

http://cssdoc.net

### 文件信息

* 列出 CSS 附属文件，例如主重置文件或者导入其它样式表。
* 说明样式表应用于哪个网站、哪个子网站、页面，以及它是否会覆盖其它 CSS 的定义。

```
/**
 * Christmas theme
 *
 * CSS theme for the Christmas version of the Igloo Refrigerator Parts Inc website
 *
 * This theme has been developed by the Design Team at IRP Inc and should be used between the dates of November 7th and January 7th
 *
 * @project   IRP Christams Site
 * @author    Design Team at IRP Inc
 * @copyright 2010 Igloo Refrigerator Parts Inc
 * @cssdoc    version 1.0-pre
 */
```

### 内容目录

在样式表的开始出，插入一段注释作为内容目录的好处是，无需在几千行的 CSS 文件中翻来翻去弄清它所包含的内容，想要定位信息业更方便。

注意: 使用 CSSEditor 或者 SB2，TextMate 之类的软件可以配合插件自动显示这些目录

```
/* 内容目录：

1. 可重用的class
2. 结构元素
3. 颜色和字体排版
4. 视觉媒体
5. 部件

*/
```

```
/* 内容目录：

1. 导入
2. 可重用的class
3. 结构
4. 导航
5. 链接
6. 排版
    * 标题
    * 正文文字
    * 引用文字
7. 列表
    * 普通列表
    * 定义列表
8. 表单
9. 图像
10. 侧边栏
11. 页脚
12. 首页
13. 部件

*/
```

### 区块