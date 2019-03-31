## A

* Accept 接受
* Algorithms 算法
* Arguments 实际参数
* Ascending Order 升序
* Authentication 证明、证实身份（OpenID）
* Authorization 授权、许可（OAuth）

## C

* Constant 常量
* Capitalize 首字母大写
* Combined Comparison Operator 组合对比运算符

## D

* Descending Order 降序
* Domain-specific language DSL 领域特定语言

## E

* Expect 期望
* Extension 扩展

## F

* Foundations 基础

## G

* Global variable 全局变量

## I

* Instance Variable 实例变量
* Iterator 迭代器
* Instantiation 实例化
* Introspection 自省
* Immediate value 立即值（Ruby 中的整数，符号，特殊对象true, false, nil。被赋值给变量时，变量持有值本身，而不是引用。）

## L

* Latest 最新的
* Library 类库
* Local variable 局部变量

## M

* Metaprogramming 元编程
* Method 方法
* Multiplies 相乘
* Multiplexer 多路复用器

## p

* Parameters 形式参数

## R

* Range 范围
* Regexp 正则表达式
* Resources 资源
* Reflection 反射

## S

* ```scheme``` URL 模式(例如 http, ftp, mailto, git)
* scope 作用域
* String interpolation 字符串内插
* statelessness 无状态的
* Splat Arguments - Variable Length Arguments List
* Sorting Algorithm 排序算法
* session identifier 会话标识符

## T

* The conditional operator 三元表达式
* token 令牌


## U

* Uniform Resource Locator 统一资源定位符(URL)
* Uniform Resource Identifier 统一资源标识符(URI)

## V

* variable visibility 变量可见度

### 测试方法名

```
test_order_status_when_initialized
test_order_amount_when_initialized
test_default_is_zero
test_total_calculation
```

### Service Object

```
create_record_failed_message_service.rb
destroy_record_failed_message_service.rb
build_suggestion_service.rb
find_suggestion_service.rb
suggestion_not_found_message_service.rb
build_topic_service.rb
```

```
app/services
├── record_services
│   └── message
│       ├── create_failed.rb
│       └── destroy_failed.rb
├── suggestion_services
│   ├── build.rb
│   ├── find.rb
│   └── not_found_message.rb
└── topic_services
    └── build.rb
```

### 游戏数据指标

* Daily NewUsers 日新登用户数(每日注册并登录游戏的用户数)
* Daily OneSession Users 日一次会话用户数(一次会话用户，即新登用户中只有一次会话，其会话时长低于规定阈值)
* Daily ActiveUsers 日活跃用户数
* Weekly ActiveUsers 周活跃用户数
* MonthlyActive Users 月活跃用户数
* DailyEngagement Count 日参与次数
* Daily Avg Online Time 每日总计在线时长／日活跃用户数
* Day 1 Retention Ratio 次日留存率
* Payment Ratio 付费率
* ActivePayment Account 活跃付费用户数
* AverageRevenue per User 平均每用户收入
* AverageRevenue per Payment User 平均每付费用户收入

参考
* [认识游戏数据指标（二）](http://blog.talkingdata.net/?p=3395)

### 论坛相关英文

```
论坛 forum/BBS(bulletin board system)
社区 community
聊天 chat
人物 Roles
管理员 administrator/forum adminstrator (admin/FA)
版主 moderator
游客 visitor
管理人员 staff members
注册用户 registered users
注册相关 Registration
昵称／别名 monicker/nick name
密码提示 password hint
注册 registration
发帖相关 Posting
贴子 post/thread
主题 subject
附件 attachment
回复 reply/post
回复贴子 reply to a post
发表回复 post a reply
引用 quote
表情 smilies
评选／投票／调查 voting/polling/survey
帖子管理 Post Management
切题 on topic
离题 off topic
锁贴 lock a post
删贴 delete
置顶 top/stick
置顶帖 sticky post
加精 highlight
转移贴子 move a post
再分类 reclassify/-fication
用户设定 User Preferences
用户控制面板 user control panel
个人资料 personal profile
签名／签名长度 signature/signature length
头像 avatar
个人／私人消息 private message/personal message
登入／登出 log in/log out
级别 rank/ranking
论坛管理 Forum Management
论坛公告 announcement
政策／规定／条款／准则 policies/rules/terms/guidelines
文字过滤 word filter
抱怨 complaint
官方的 official
封(用户／IP) ban(user ID/IP address)/suspension
违规或不雅行为 Violations
潜水／潜水员 lurking/lurker
人身攻击／挑衅 personal attacks/flames
侮辱／脏话 profanity/foul language
猥亵的图片 obscene image
广告 advertising
无遮拦的／侵犯性的 explicit/offensive
灌水／灌广告 spam/spamming
捣乱、煽风点火 trolling (名词troll, 此类人)
重复注册 multiple registration
回复里面套回复 step-laddering
在各个版面重复张贴（贬） cross post/cross posting
```
