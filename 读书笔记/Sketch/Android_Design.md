Holo theme, 徐梓桁(网名NovaDNG), drawer, Fixed Tabs + Spinner

* [NovaDNG](http://www.geekpark.net/user/home/seeds/163712)
* [锋客网是一个中文团队博客](http://www.phonekr.com/)
* [Android Design in Action — 以知乎为例](http://www.geekpark.net/read/view/186387)


## 48dp 规律

48dp 转换成实际尺寸大约在 9mm 左右。这个尺寸落在在触摸屏对象的推荐大小范围中（7-10 mm），用户能可靠而准确的指向这个大小的目标对象。

换算成 sketch 的单位 20dp 是 50。 48dp是

如果设计元素至少在宽和高都达到 48dp，你可以保证：

* 设计元素在任何屏幕上显示都不会小于最低推荐值 7mm。
* 你可以在信息密度和界面元素的可操控性之间得到较好的平衡。

每个用户界面元素之间的空白都是 8dp。

[例子](http://23.244.200.195/design/style/metrics-grids.html#48dp-rhythm)

## 字体大小

12px,14px,18px,22px

## 图标

1. 移动设备：48*48dp；
2. 在电子市场：512*512px；
3. 操作栏：32*32dp，图形区域是24*24dp。原因，根据48dp原则中图标的操作区域为32dp，图形区域是24dp
4. 小图标：16*16，图形区域是12*12dp ；
5. 通知栏：24*24，图形区域是22*22dp

要创建适用于不同屏幕密度的图标，你应该在五种主要密度（分别是 medium, high, x-high, xx-high, and xxx-high）中都遵循2:3:4:6:8缩放比例。举例来说，考虑一个48x48 dp 大小的启动器图标这意味着基准（MDPI）资源大小为 48x48 px，高密度（HDPI）资源应该是1.5倍于基准大小，这样大小为72x72 px，而特高密度（XHDPI）资源应该2倍于基准大小，这样大小为96x96 px，其它屏幕密度资源大小以此类推。

虽然安卓也支持低像素密度（LDPI）的屏幕，但无需为此费神，系统会自动将 HDPI 尺寸的图标缩小到 1/2 进行匹配。
