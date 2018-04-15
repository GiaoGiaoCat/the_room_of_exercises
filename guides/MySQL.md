# MySQL数据库开发军规

本军规适用于并发量大，数据量大的典型互联网业务。请自行根据业务场景酌情调整。

## 基础规范

1. 隔离不同环境数据库
  * 产品环境 `_production`，开发环境 `_development`， 测试环境 `_test`，预发布环境 `_staging`
2. 表存储引擎必须使用 InnoDB，表字符集默认使用 utf8，必要时候使用 utf8mb4  
3. 禁止使用存储过程，视图，触发器，Event
4. 禁止在线上环境做数据库压力测试
5. 禁止在数据库中存储大文件
  * 将大文件存储在对象存储系统，数据库中存储路径

## 命名规范

1. 库名，表名，列名必须用小写，采用下划线分隔
2. 库名，表名，列名必须见名知义，长度不要超过 32 字符
3. 库备份必须以 bak 为前缀，以日期为后缀
4. 从库必须以 -s 为后缀
5. 备库必须以 -ss 为后缀

## 表设计规范

1. 单实例表个数必须控制在 2000 个以内
2. 单表分表个数必须控制在 1024 个以内
3. 表必须有主键
4. 禁止使用外键
  * 如果要保证完整性，应由应用程式实现
5. 将大字段，访问频度低的字段拆分到单独的表中存储，分离冷热数据
6. 平衡范式和冗余

## 列设计规范

1. 根据业务区分使用 `tinyint/int/bigint`，分别会占用1/4/8字节
2. 根据业务区分使用 `char/varchar`
  * 字段长度固定，或者长度近似的业务场景，适合使用 `char`，能够减少碎片，查询性能高
  * 字段长度相差较大，或者更新较少的业务场景，适合使用 `varchar`，能够减少空间
3. 根据业务区分使用 `datetime/timestamp`
4. 必须把字段定义为 `NOT NULL` 并设默认值
5. 使用 `INT UNSIGNED` 存储IPv4，不要用 `char(15)`
6. 使用 `varchar(20)` 存储手机号，不要使用整数
7. 使用 `TINYINT` 来代替 `ENUM`

## 索引规范

* 唯一索引使用 `uniq_[字段名]` 来命名
* 非唯一索引使用 `idx_[字段名]` 来命名
* 单张表索引数量建议控制在5个以内
* 组合索引字段数不建议超过5个
* 不建议在频繁更新的字段上建立索引
* 非必要不要进行 JOIN 查询
  * 如果要进行 JOIN 查询，被 JOIN 的字段必须类型相同，并建立索引
* 理解组合索引最左前缀原则，避免重复建设索引
  * 如果建立了(a,b,c)，相当于建立了(a), (a,b), (a,b,c)

## SQL 规范

1. 不在数据库做运算
  * 禁止在 where 条件列使用函数或者表达式
2. 禁止使用 `select *`，只获取必要字段
3. 避免负向查找和 `%` 前缀模糊查询
  * 如 `NOT、!=`
4. 禁止大表 JOIN 和子查询
5. 同一个字段上的 OR 必须改写问 IN，IN 的值必须少于 50 个
6. 减少 `COUNT(*)`
  * 资源开销大，尽量改用 `COUNT(col)`
  * 计数的统计可以采用的方法：实时统计可以使用 memcache，双向更新，凌晨跑基准
  * 非实时统计尽量用单独统计表，定期重算
7. LIMIT 高效分页
  * 传统的方法是 `select * from t limit 10000, 10`，推荐的方法是 `select * from t where id > 23423 limit 10` LIMIT 的偏移量越大则越慢。
  * 还有一些高效的方法有：先取 id 来 LIMIT 偏移，减少整体的数据偏移；取到需要的 id，与原表 JOIN；程序取ID，然后用IN来填写。`select * from t where id >= (select id from t limit 10000, 1) limit 10 , select * from t INNER JOIN (select id from t limit 10000, 10) USING (id) , select id from t limit 10000, 10; select * from t where id in (123, 456...)`
8. `group by` 会默认自动升序排序
  * 如果需要去掉排序，需要指定 `order by NULL`
9. 同数据类型的列值比较：数字对数字、字符对字符
  * 如果数值列与字符类型作比较，同时转换成双精度
  * 如果字符列与数值类型作比较，字符列整列转数值，且不会使用索引查询

## 参考

* [58到家MySQL军规升级版](https://mp.weixin.qq.com/s/YfCORbcCX1hymXBCrZbAZg)
* [MySQL数据库开发的三十六条军规完整版](https://wenku.baidu.com/view/77a04f7f31b765ce050814b2.html)
* [MySQL开发军规](https://www.jianshu.com/p/cf620ad5e8f4)
* [一分钟掌握数据库垂直拆分](https://mp.weixin.qq.com/s?__biz=MjM5ODYxMDA5OQ==&mid=2651959773&idx=1&sn=7e4ad0dcd050f6662dfaf39d9de36f2c&chksm=bd2d04018a5a8d17b92098b4840aac23982e32d179cdd957e4c55011f6a08f6bd31f9ba5cfee&scene=21#wechat_redirect)

## SQL的一些命令

explain, show profile, mysqlsla, mysqldumpslow, show slow log, show processlist, show QUERY_RESPONSE_TIME(Percona)
