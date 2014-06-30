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

``` my_num = 25 ```

### Math

* Addition (+)
* Subtraction (-)
* Multiplication (*)
* Division (/)
* Exponentiation (**) 求幂(乘方)
* Modulo (%) 求余

```2***3 means 2 * 2 * 2```

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
