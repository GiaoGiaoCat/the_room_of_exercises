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

# OBJECTS II
