#import "@preview/touying:0.6.1": *
#import "../../shared/theme/theme.typ": *
#import "@preview/curryst:0.5.1" as curryst: rule
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#set page(width: auto, height: auto, margin: 5mm)
#let colors = (maroon, olive, eastern)
#set text(black, font: "New Computer Modern")
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

#let (example, feature, variant, syntax) = frames(
  feature: ("Task", tertiary-color.lighten(40%)),
  // For each frame kind, you have to provide its supplement title to be displayed
  variant: ("Variant",),
  // You can provide a color or leave it out and it will be generated
  example: ("Example", gray),
  // You can add as many as you want
  syntax: ("Syntax",),
)
#show: frame-style(styles.boxy)

#show: university-theme.with(
  config-colors(
    primary: primary-color,
    secondary: secondary-color,
    tertiary: tertiary-color,
    neutral-darkest: text-color
  ),
  config-info(
    title: [PRO 2 - Control Structures and Functions],
    subtitle: [An introduction to programming with Javascript],
    author: [Magnus Lindholm Nielsen],
    date: datetime.today(),
    institution: [Business Academy Aarhus],
  ),
)

#set heading(numbering: "1.")

#title-slide()

= Control Structures and Functions

== Learning Goals
By the end of today, you should:
- Understand what control structures are and why they are important
- Know how to use if, if...else, and loops in JavaScript
- Be able to write and use functions with parameters and return values
- Practice writing code using these concepts

---

== What is Execution?
Execution is the process of running your code, line by line, in the order specified by the program. By default, JavaScript runs each statement from top to bottom. However, with control structures, we can change this flow: skip lines, repeat actions, or make decisions. This is what makes programs dynamic and interactive.

*Analogy:* Think of execution like following a recipe. Sometimes you repeat steps (loops), sometimes you make choices (if/else), and sometimes you call another recipe (function).

---

== Conditionals
Conditionals let us make decisions in code. They allow the program to choose different paths depending on the data or user input.

*Example:* If you are hungry, eat. Otherwise, wait.

=== If Statement
The `if` statement checks a condition. If it is true, the code inside the block runs.
```js
let age = 18;
if (age >= 18) {
  console.log("You are an adult.");
}
```
*Note:* The code inside `{}` only runs if the condition is true.

=== Task 1
#feature[Task][Write an if statement that checks if a number is positive. If it is, print "Positive number".]

---

=== If...Else Statement
The `if...else` statement lets you choose between two actions.
```js
let score = 55;
if (score >= 60) {
  console.log("Passed");
} else {
  console.log("Failed");
}
```
*Note:* Only one of the blocks will run, depending on the condition.

---

#align(horizon)[#feature[Task][Write an if...else statement that prints "Even" if a number is even, and "Odd" if it is odd.]]

=== The Switch statement

---

== Loops
Loops let us repeat actions multiple times. This is useful for working with lists, repeating calculations, or automating tasks.

*Analogy:* Imagine you want to water 10 plants. Instead of writing "water plant" 10 times, you use a loop.

=== While-loop
A `while` loop repeats as long as the condition is true.
```js
let count = 0;
while (count < 5) {
  console.log(count);
  count++;
}
```
*Note:* Be careful! If the condition never becomes false, the loop will run forever (infinite loop).

---

=== For-loop
A `for` loop is often used when you know how many times you want to repeat something.
```js
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```
*Explanation:* `i` starts at 0, increases by 1 each time, and stops when it reaches 5.

---

=== For...of loop
A `for...of` loop lets you go through each item in a list (array).
```js
let fruits = ["apple", "banana", "cherry"];
for (let fruit of fruits) {
  console.log(fruit);
}
```
*Note:* This is great for working with arrays and lists.

=== Task 3
#feature[Task][Write a loop that prints all numbers from 1 to 10.]

---

== Functions
Functions are reusable blocks of code that perform a specific task. They help organize your code, avoid repetition, and make programs easier to read and maintain.

*Analogy:* Think of a function like a coffee machine. You give it ingredients (parameters), it does something, and gives you coffee (return value).

=== Function Basics
A function is defined with the `function` keyword, a name, and parentheses for parameters.
```js
function greet(name) {
  console.log("Hello, " + name + "!");
}

greet("Magnus"); // Calls the function with "Magnus" as the argument
```
*Note:* You can call a function as many times as you want, with different arguments.

---

=== Function Parameters and Return
Parameters are inputs to the function. The `return` keyword sends a value back to where the function was called.
```js
function add(a, b) {
  return a + b;
}

let sum = add(3, 7);
console.log(sum); // prints 10
```
*Note:* The function can use its parameters to calculate or process data, and return a result.

=== Task 4
#feature[Task][Write a function that takes a number and returns its square.]

---

=== Task 5
#feature[Task][Write a function that takes two numbers and returns the larger one.]

---

== Recap & Practice
- Try combining conditionals, loops, and functions in a small program.
- Example: Write a function that prints all even numbers from 1 to 20.

*Tip:* Start small. Test your code often. Ask questions if you get stuck!

---

== Preparation for Next Time
- Finish the exercises for today
- Make sure you can use if, loops, and functions in JavaScript
- Get ready for more advanced topics next session


