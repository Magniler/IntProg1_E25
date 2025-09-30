# JavaScript Basics: 3-5 Simple Examples

## 1. Print a message to the console

This is the most basic way to show output in JavaScript. The `console.log()` function prints a message to the browser's console (or terminal if running with Node.js).

```js
console.log("Hello, world!");
```

## 2. Variables and data types

You can store data in variables using the `let` keyword. `let` declares a variable whose value can change later. JavaScript supports different data types, such as strings, numbers, and booleans.

```js
let name = "Magnus"; // string
let age = 25;         // number
let isStudent = true; // boolean
console.log(name, age, isStudent);
```

## 3. More on data types

Javascript automatically 'guesses' the data type of the variable we declare for it. In other languages that are strongly typed languages we need to provide the data type explicitly.
Here is an example in _Java_:

```Java
new String name = "Magnus"; 
new int age = 25;
new Boolean isStudent = true;
```

Here, we initialize a new variable using the `new` keyword. The equivalent in JavaScript is the `let` keyword. But before we can give the variable a name, we need to tell the Java compiler what sort of data we are working with - soo after the `new` keyword, we have to include the `type` of data we are working with (that is the Data Type)

In Javascript, the same example will look like this:

```js
let name = "Magnus"; // string
let age = 25;         // number
let isStudent = true; // boolean
console.log(name, age, isStudent);
```

Notice we do not tell the JavaScript interpreter what sort of data we are working with. It infers it from the rest of the code.

## 4. Simple if statement

An `if` statement lets you run code only if a condition is true. The syntax is:

```js
if (condition) {
  // code to run if condition is true
}
```

The `condition` has to be an `expression` that evaluates to an `boolean` datatype.

Example:

```js
let age = 18;
if (age >= 18) {
  console.log("You are an adult.");
}
```

## 5. Loop from 1 to 5

A `for` loop repeats code a certain number of times. The syntax is:

```js
for ([loop variable];[loop condition];[loop variable ]) {
  // code to run each time
}
```

Soo for a loop we need a:

- Variable to control the loop
- A condition for us to end the loop
- An increment/decrement function to update the [loop variable]

Example:

```js
for (let i = 1; i <= 5; i++) {
  console.log(i); //Prints all the values from 1-5
}
```

In this loop, we first declare out `loop variable` (`let i = 1`), then we define a condition on which we end the loop (`i <= 5`) and finally how we change our variable at the end of each loop iteration (`i++`).

## 6. Function that adds two numbers

A function is a reusable block of code. You define it with the `function` keyword, give it a name, and specify parameters in parentheses. The `return` statement sends a value back to where the function was called.

```js
function add(a, b) {
  return a + b;
}
console.log(add(3, 4)); // prints 7
```
