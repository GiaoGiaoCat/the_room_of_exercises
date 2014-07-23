# 复习到的新知识

1. hash = Hash.new(0) 然后 hash 里面添加任何一个新的 key 默认的 value 都是 0。
2. 多行注释的时候 =begin 和 =end 是ruby少数几个，不能用空格隔开的地方。通常情况下我们认为 ruby 是忽略空格的。
3. <=> 不是比较内存地址，只是比较两个对象的值，根据相等，大于，小于 依次返回 0，1，-1。所以数组反向排序的排序可以使用 arr.sort! { |a,b| b <=> a }。
4. hash 的 select 方法，可以过滤条件 hash.select { |k, v| v > 50 }
5. false 和 nil 是 Ruby 中唯一不是 true 的值，但是它俩并不一样。 unless nil 和 unless false 都会执行。
6. Hash 创建的方法。
7. class.ancestors 可以查看一个类的所有父类。class.included_modules 可以查看类包含的所有模块。

```
Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}
所以我们可以这么创建 Hash
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]
```

1. benchmark. The Benchmark module provides methods to measure and report the time used to execute Ruby code.

```
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."  
```



# Introduction to Ruby

## Variables & Data Types

### Overview & Sneak Peek

* High-level 高级语言，看起来就像英文
* Interpreted 解释型语言，不需要编译
* Object-oriented ruby 中的一切都是对象
* Easy to use 容易使用，只要有一点程序基础都可以学懂

### Data Types: Numbers, Strings, Booleans

为了快速处理程序，我们需要不同的数据类型。每个类型有自己独特的方法。

Ruby 区分大小写，所以 *true* 和 *True* 是不同的。

* numbers - 25
* booleans - true or false
* strings - "Ruby"

### Variables

变量是程序开发中的基础概念。你可以把变量当做掌握某一个值的单词或者名称。

```
my_num = 25
```

### Math

* Addition (+)
* Subtraction (-)
* Multiplication (*)
* Division (/)
* Exponentiation (**) 求幂(乘方)
* Modulo (%) 求余

```
2***3 means 2 * 2 * 2
```

### 'puts' and 'print'

打印命令。*puts* 和 *print* 的不同是，多了一个空行。

## String Methods

### Everything in Ruby is an Object

因为 Ruby 中的一切都是对象，所以 Ruby 确保所有对象都有 *methods* 方法。你可以把它当做我们要询问这个对象含有什么 *skills*。

比如 String 对象有长度，反转之类的方法。

* interpreter - 运行你写的代码的程序，解释器
* editor - 你在编辑器里面写代码
* console - 程序的运行结果在这里显示

Methods are summoned using a ```.```。

* length - the number of characters—letters, numbers, spaces, and symbols。
* reverse
* upcase & downcase

## Writing Good Code

### Single-Line Comments

*#* 符号表示注释。注释的作用不单单是为了其他同事更容易理解你的代码，也可以在一段日子之后提醒你自己这段代码的用处。

### Multi-Line Comments

*=begin* 和 *=end* 这里和 *2 + 4* 不一样，不可以有空格。

```
=begin
I'm a comment!
I don't need any # symbols.
=end
```

### Naming Conventions

有许多不同的变量，变量的命名规则是以小写字母开头，单词之间用下划线分割。例如 *counter* 和 *masterful_method*。

Ruby 不会阻止你用奇怪的符号当做变量的开头，但是按照惯例，*$counter* 和 *@counter* 有不同的意义。

# Putting the Form in Formatter

### Getting Input

*gets* 是 Ruby 内置的方法，用来获得用户输入。当获得输入的时候，Ruby 会在输入后自动加一个空行。*chomp* 方法可以移除这个空行。

### string interpolation

---

# CONTROL FLOW IN RUBY

## Introduction to Control Flow

* if, elsif, else, unless
* while, until
* loop, for, next, break
* each
* times

```
i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end
```

## Difference between map and collect in Ruby?

*each* is different from *map* and *collect*, but *map* and *collect* are the same (technically *map* is an alias for *collect*, but in my experience map is used a lot more frequently).

*each* performs the enclosed block for each element in the (Enumerable) receiver:

```
[1,2,3,4].each {|n| puts n*2}
# Outputs:
# 2
# 4
# 6
# 8

[1,2,3,4].map {|n| n*2}
# => [2,4,6,8]
```

Each will evaluate the block but throws away the result of Each block's evaluation and returns the original array.

```
irb(main):> [1,2,3].each {|x| x*2}
=> [1, 2, 3]
```

Map/collect return an array constructed as the result of calling the block for each item in the array.

```
irb(main):> [1,2,3].collect {|x| x*2}
=> [2, 4, 6]
```

# BLOCKS, PROCS, AND LAMBDAS

代码块就是一小段可以执行的代码。通常由 ```do...end``` 或者 ```{}``` 来定义。
代码块通常跟随 *times*, *each*, *collect* 之类的方法一起使用。

## Blocks: A Reintroduction

### yield

```
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }
```

```
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }
```

## Procs: Savable Blocks!

在 **一切皆对象** 的 Ruby 中。代码块是一个例外，它不是对象。所以你不能给它复制给一个变量。所以也没有对象那些能力，比如 .methods 方法。
*&* 把 proc 转换成 block。
*.call* 调用 proc

there's always more than one way to do something in Ruby.

### 好处

* 利用 Proc 把代码块转换之后，可以把代码块当做对象一样来调用各种方法
* 可以重复调用一个代码块，有利于我们保持 DRY 的原则。

```
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)
```

```
hi = Proc.new { puts "Hello!" }
hi.call
```

利用 *&* 可以把符号转换成代码块。

```
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]
```

## Lambdas

### 区别

1. lambdas 检查参数的个数，Procs 不会。在 Proc 中，多余的参数被设为 nil。但 lambdas 中，Ruby 抛出了一个错误。
2. lambdas 的 return 是返回值给方法，方法会继续执行。Proc 的 return 会终止方法并返回得到的值。

### 为何这么设计

* Ruby 中的 Procs 是代码片段(code snippets)，不是方法。因此，Proc 的 return 就是整个方法的 return。
* lambdas 就像是单独的 methods (只不过是匿名的)，所以它要检查参数个数，且不会覆盖整个方法的返回。


## Method

当你想把一个方法以闭包的形式传递给另一个方法，并且保持代码DRY。你可以使用 Ruby 的 method 方法。
如你所料，square 不是 Proc，而是 Method。Method 与 lambda 用法相同，因为它们的概念是一样的。不同的是 Method 是有名字的 method，而 lambda 是匿名 method。

```
class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

def square(n)
  n ** 2
end

array = [1, 2, 3, 4]

array.iterate!(method(:square))

puts array.inspect

# => [1, 4, 9, 16]
```

今日发现的坑

```
by_channel_and_app = lambda do
  settings = 'hello'
  "victor" if settings == "hello"
end

puts by_channel_and_app.call
```


# OBJECT-ORIENTED PROGRAMMING, PART I

1. 为什么需要 classes

在 Ruby 中几乎一切都是对象，对象有方法和属性。类用来组织和产生拥有相近属性和方法的对象。

2. 如何定义 class
3. initialize 方法
4. 实例变量
5. 创建类的实例
6. 变量作用域
7. 继承
8. 重载
9. 只能有一个父类

* @ 实例变量
* $ 全局变量
* @@ 类变量

```
class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.

#=>

Current user: Dave
Manufacturer: Mango Computer, Inc.
Files: {:hello=>"Hello, world!"}
```

# OBJECT-ORIENTED PROGRAMMING, PART II

1. private 方法不能有明确的接受者
2. attr_reader, attr_writer, attr_accessor
3. module 是包含一组方法和常量的工具箱，它和类非常像，只是不能被创建实例
4. require, include 方法可以引入一些 Ruby 本身提供的工具模块

# require, load, include and extend 的区别

## require

加载一个库，并且只加载一次，如果你多次加载会返回 false。只有当你要加载的库位于一个分离的文件中时才有必要使用 require。使用时不需要加扩展名，一般放在文件的最前面： require 'test_library'

## load

多次加载一个库，你必须指定扩展名: load 'test_library.rb'

## include

当你的库加载之后，你可以在你的类定义中包含一个 module，让 module 的实例方法和变量成为类本身的实例方法和类变量，它们 mix 进来了。
根据锄头书，include 并不会把 module 的实例方法拷贝到类中，只是做了引用，包含 module 的不同类都指向了同一个对象。
如果你改变了 module 的定义，即使你的程序还在运行，所有包含 module 的类都会改变行为。

## extend

会把 module 的实例方法作为类方法加入类中：

```
class TestClass
  extend Log
end
```

## 不同之处

1. requre, load 用于文件，如 .rb 等等结尾的文件
2. include 则用于包含一个文件( .rb 等结尾的文件)中的模块
3. requre 一般情况下用于加载库文件，而 load 则用于加载配置文件


# 相等：==, ===, eql?, equal?, <=>

1. == 普通的相等，不对 object_id 是否相等进行检查
2. eql? 和 == 是相同的
3. equal? 则是要对 object_id 是否相等进行检查
4. 当使用 case statement 的时候，在 ruby 内部，会调用 === 方法
5. 在 case statement 外部使用的时候， Tripple Equal 有两种不同的情况
  * 如果是类来调用 === 方法，就会比较另一个对象是否为当前类的实例
  * 如果是对象调用 === 方法，和 == 用法相同
6. <=> 返回 -1, 0, 1


# 链接

* [methods-in-ruby-objects-or-not](http://stackoverflow.com/questions/2602340/methods-in-ruby-objects-or-not)
* [了解 Ruby 中的闭包 : blocks , procs 和 lambdas](http://www.oschina.net/translate/know-your-closures-blocks-procs-and-lambdas?cmp&p=1)
* [理解Ruby的4种闭包：blocks, Procs, lambdas 和 Methods](http://rubyer.me/blog/917/)
* [Ruby面向对象(类)](http://www.yiibai.com/ruby/ruby_object_oriented.html#ruby_object_oriented)
