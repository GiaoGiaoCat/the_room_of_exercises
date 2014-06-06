# Learn iOS Design 5月14日开始学习

---

## The iOS 7 Human Interface Guidelines

## Core Philosophies

iOS 7 is driven by 3 core philosophies: deference, clarity and depth.

### Deference

* Simplify - 除非你设计的是一款游戏，否则每添加一个元件你都要问自己这个是否必要？请尽量减少阴影和3D效果。而把关注点放在和谐的渐变和字体上。
* Maximize content - 内容应充满整个屏幕，其内部元件提供最大的空间。避免多个容器，最大限度地滚动的区域，这将允许更多的互动空间。
* Colors - 使用颜色来表明某个元素是可点击的。
* Typography is content
* Negative space - 你看到的越少，你越能专注于几件事情一次。内边距给人喘息的空间。不要用太多的结构或不必要的视觉元素压倒你的屏幕。
* Icon states

### Clarity

#### Make the text readable

In Retina, typography should have a minimum size of 22px. The optimal size for reading is around 32px.
Heading at around 50-100 px
H@ at around 30-50 px
Body text at around 26-40px

#### Use obvious icons

* 图标不应该是模棱两可，他们应该清楚地表明什么样的符号表示。
* 尽可能在图标旁边使用文本。
* 一旦你使用一个图标，不要重复使用同一个图标的另一个不同功能的地方。这会混淆用户。
* 同样，不要使用一般的文本，如“后退”或“提交”，而不是具体和写“返回首页”和“注册一个新帐户”。


#### Descriptive screens

每一个页面都应该有足够清晰的品牌。品牌由一个屏幕内的清晰的题目组成，并且最好状态栏有一个图标高亮。

#### Meaning in colors

颜色应该有自己的意义，红色代表破坏性动作，绿色代表同意，蓝色代表链接，中性颜色代表无状态。别瞎用，整个删除按钮还是绿色。

### Depth

* Transitional interface - 用好过场动画效果
* Blurred background - 当有前景内容的时候，记得模糊背景内容。如果你还想显示背景内容的话。

## Make it delightful

请谨慎使用动画，手势和声音。

* Animations - 动画不单是一个屏幕过渡到另一个，也在适当的场合为你的app增加趣味性和体验。好的动画能让人们注意到一些容易忽略的功能。
* Gestures - 手势没啥说的，好的手势方便用户操作。
* Sounds - 声音很少在 app 内出现，但是它会让一个普通的操作变得更有体验性。标志性的声音可以为你塑造app标志性形象。甚至不用看就知道是你的app。

## Three rules

* Design for touch - button: 60-120px, 最佳高度 88px。即便是 44px 的字体外面的可点击区域也要60px
* Readability - 最小值 22px，推荐大小 32px。行高 120% - 140%
* Optimize for the iPhone 4 - 布局要同时满足 640x1136 和 640x960

## Starting templates

* iOS 7 template - http://www.teehanlax.com/tools/iphone-sketch-app/
* Icon set - http://www.sketchappsources.com/free-source/281-ios7-icons-natives-and-basics.html
* Icon template - http://ios.robs.im/

---

## Learn Colors

### Get started

首先读 [How do you choose the right colors for your designs?](http://www.rocket-design.fr/color-template/)

* Primary, secondary and tertiary colors - 利用调色板首先选择一种主色，然后是次要颜色，最后是其他补充。
* Monochrome colors - 3个一样颜色的色块。其中两个分别遮盖50%透明度的黑色和白色，是一个不错的技巧。
* Analogous colors - 当你的色彩变化度不够的时候，可以选择在调色盘只改HSB中的一个色值。
* Complementary colors - 互补色是主色的相反色，可以直接在 sketch 的调色盘中调整那个彩色的长条。
* Neutral tones
* Hue, Saturation, Brightness and Alpha - HSBA 更好调色

### Using an image's colors

* The manual way - 手动创建调色板是最好的办法，但是需要你对色彩有准确的把握。主色表示需要注意的动作，次色用来补充主色色调上的变化。背景色用来服务于内容。
* Using Adobe’s Kuler


### The neutral palettes 中性调色板

* The blue palette
* The gray palette
* The custom palette

### Light and Dark UI

#### Guidelines for Light UI

1. 内容应比背景更亮。在重点对象通常比背景亮。
2. 不要过度使用的颜色。他们真的抓住你的注意力。使用颜色来给予重视的按钮和在突出显示状态。
3. 避免平均颜色。 90-100％的白色通常是最好的范围。

#### Guidelines for Dark UI

1. 不要使用绝对的黑色。这是很难看到在漆黑的细节和对比度过高对白色。
2. 如果必须使用黑色，确保有深灰色的变化，以缓解高对比度..
3. 使用蓝色时，应避免灰色。深蓝色的补充比蓝灰色为佳。

## Learn Typography

由于我们现在使用更大的字体无处不在，我们必须减少字体粗细，因为否则就偷了太多的注意力从内容的其余部分。

iOS的7引入了可变字体粗细。这意味着，项目中必需必须支持字体的：Regular, Light and Thin.

### The rules of good typography

可以先读[5 rules of good typography](http://practicaltypography.com/typography-in-ten-minutes.html)

* Your body text is everything - 选一个易读的非系统字体很有必要，例如：Helvetica Neue Light, Avenir Next, Proxima Nova, Museo Sans and Open Sans
* Typography that stays fit - 24-36px, use Regular. At 36-48px, use Light, at 48-64px, use Thin and at 64px+, use Ultra Thin.
* Line height that breathe - 120% - 145% of the font size.
* 45-90 characters per line rule - When your line is too long, the reader will have a hard time focusing.
* Use your font wisely - 了解和学会使用 Helvetica 字体。不要使用 bold 或者 italic 如果字体不支持的话。
* Serif and Sans-Serif - Serif and Sans 都是很好的选择。Serif 有点趣味性适合讲故事，Sans 比较直板更现代一些。

### Where to find fonts

* [Google Webfonts](http://google.com/fonts) 内含 Open Sans and Roboto 字体，是安卓内置字体。
* [Typekit](https://typekit.com/fonts)
* [fonts.com](http://www.fonts.com/)

### Resources

* [Typography Guide](http://www.typogui.de/)

---

## Learn Animations
