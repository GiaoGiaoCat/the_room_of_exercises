# Getting Started with Programming

1. ```confirm("Hello")``` 弹出消息
2. ```var myAge = prompt("What is ur name?")``` 接受输入，并保存到变量中
3. Data Types: Numbers, Strings, Booleans
4. console.log("hello")
5. Math: ```+, -, *, /, %```
6. Comparisons: >, <, <=, >=, ===, !==, ==, !=
7. "wonderful day".substring(3, 7) 截取字符串
8. var myName = "Victor Wang"

## JavaScript 对象类型的确定

typeof 可以确定对象的基本类型: number, string, object, function, undefined。 === 比较值和对象类型是否相等。 == 仅比较值是否相等。

=== 比较的是基本类型，如果是对象的子类型，同样满足。所以 1 === 1.0 是 true 而 1 === "1" 是false。

## if 语句

```
if (condition) {
  do something
} else {
  do something
}
```

# FUNCTIONS

1. return 关键字在函数中，会返回该值，否则函数不会返回任何值。这和 Ruby 不同，函数并没有默认返回值。
2. 全局变量和局部变量。全局变量就是定义在函数之外的变量。
3. Math.random() 生成随机数

```
var my_number = 7; //this has global scope
var divideByThree = function(length, width) {
    return length * width;
};

var result = divideByThree(6, 2);
console.log(result);
```

# 'FOR' LOOPS IN JAVASCRIPT

```
text = "Blah blah blah blah blah blah Eric \
blah blah blah Eric blah blah Eric blah blah \
blah blah blah blah blah Eric";

var myName = "Eric";
var hits = [];

// Look for "E" in the text
for(var i = 0; i < text.length; i++) {
  if (text[i] === "E") {
    // If we find it, add characters up to
    // the length of my name to the array
    for(var j = i; j < (myName.length + i); j++) {
      hits.push(text[j]);
    }
  }
}

if (hits.length === 0) {
  console.log("Your name wasn't found!");
} else {
  console.log(hits);
}
```

# 'WHILE' LOOPS IN JAVASCRIPT

```
var coinFace = Math.floor(Math.random() * 2);

while(coinFace === 0){
	console.log("Heads! Flipping again...");
	var coinFace = Math.floor(Math.random() * 2);
}
console.log("Tails! Done flipping.");


var loopCondition = false;

do {
	console.log("I'm gonna stop looping 'cause my condition is " + loopCondition + "!");
} while (loopCondition);
```

# CONTROL FLOW

1. isNaN 用来判断后面的参数是否为数字
2. &&, ||, !

```
isNaN('berry'); // => true
isNaN(NaN); // => true
isNaN(undefined); // => true
isNaN(42);  // => false


var lunch = prompt("What do you want for lunch?","Type your lunch choice here");

switch(lunch){
  case 'sandwich':
    console.log("Sure thing! One sandwich, coming up.");
    break;
  case 'soup':
    console.log("Got it! Tomato's my favorite.");
    break;
  case 'salad':
    console.log("Sounds good! How about a caesar salad?");
    break;
  case 'pie':
    console.log("Pie's not a meal!");
    break;
  default:
    console.log("Huh! I'm not sure what " + lunch + " is. How does a sandwich sound?");
}

!true;   // => false
!false;  // => true
```

# DATA STRUCTURES

1. Array and Hash
2. Create a new object

```
var phonebookEntry = {};

phonebookEntry.name = 'Oxnard Montalvo';
phonebookEntry.number = '(555) 555-5555';
phonebookEntry.phone = function() {
  console.log('Calling ' + this.name + ' at ' + this.number + '...');
};

phonebookEntry.phone();
```

```
var me = new Object();
me.name = "victor";
me.age = 33;
```

```
var friends = {};
friends.bill = {
  firstName: "Bill",
  lastName: "Gates",
  number: "(206) 555-5555",
  address: ['One Microsoft Way','Redmond','WA','98052']
};
friends.steve = {
  firstName: "Steve",
  lastName: "Jobs",
  number: "(408) 555-5555",
  address: ['1 Infinite Loop','Cupertino','CA','95014']
};

var list = function(obj) {
  for(var prop in obj) {
    console.log(prop);
  }
};

var search = function(name) {
  for(var prop in friends) {
    if(friends[prop].firstName === name) {
      console.log(friends[prop]);
      return friends[prop];
    }
  }
};

list(friends);
search("Steve");
```

# OBJECTS I

1. OOP 中重要的概念就是方法，在 JS 中方法和函数很像。我们可以按照给对象属性赋值的方法，将一个函数复制给对象的属性即可。
  * 方法可以用来改变对象的属性
  * 方法可以用来进行基于对象属性的计算
2. this 引用调用方法的对象。
3. Constructors 构造器相当于其他语言中的类的概念。

```
// here is bob again, with his usual properties
var bob = new Object();
bob.name = "Bob Smith";
bob.age = 30;
// this time we have added a method, setAge
bob.setAge = function (newAge){
  bob.age = newAge;
};
// here we set bob's age to 40
bob.setAge(40);
```

```
// here we define our method using "this", before we even introduce bob
var setAge = function (newAge) {
  this.age = newAge;
};
// now we make bob
var bob = new Object();
bob.age = 30;
// and down here we just use the method we already made
bob.setAge = setAge;

// change bob's age to 50 here
bob.setAge(50);
```

```
function Person(name,age) {
  this.name = name;
  this.age = age;
  this.print = function() {
    console.log(this.name + this.age);
  }
}

// Let's make bob and susan again, using our constructor
var bob = new Person("Bob Smith", 30);
```

# OBJECTS II

1. typeof 用来判断参数是什么类型，常用的类型有 "number" "string" "function"  "object"
2. hasOwnProperty 判断对象自身含有什么属性
3. for 可以遍历对象的属性
4. prototype 为类添加方法
5. 类的继承  Penguin.prototype = new Animal();

```
var james = {
    job: "programmer",
    married: false,
    speak: function(string) {
        console.log("Hello, I am feeling " + string);

    }
};

james.speak("great");

console.log( typeof james );
```

```
var myObj = {
    // finish myObj
    name: "Victor"
};

console.log( myObj.hasOwnProperty('name') ); // should print true
console.log( myObj.hasOwnProperty('nickname') ); // should print false
```

```
var nyc = {
    fullName: "New York City",
    mayor: "Bill de Blasio",
    population: 8000000,
    boroughs: 5
};

for(var property in nyc) {
    console.log(property);
}
```

```
function Dog (breed) {
  this.breed = breed;
};

// here we make buddy and teach him how to bark
var buddy = new Dog("golden Retriever");
Dog.prototype.bark = function() {
  console.log("Woof");
};
buddy.bark();

// here we make snoopy
var snoopy = new Dog("Beagle");
/// this time it works!
snoopy.bark();
```

```
// the original Animal class and sayName method
function Animal(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs;
}
Animal.prototype.sayName = function() {
    console.log("Hi my name is " + this.name);
};

// define a Penguin class
function Penguin(name) {
    this.name = name;
    this.numLegs = 2;
}

// set its prototype to be a new instance of Animal
Penguin.prototype = new Animal();
```
