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
    //config-common(show-notes-on-second-screen: right, appendix: true),
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


= Preamble

== Updated schedule

#block[
  #set text(size: 0.75em)
  #table(
  columns: (auto, auto, 1fr),
  inset: 7pt,
  align: center + horizon,
  stroke: none,
  row-gutter: 2pt, // Reduced space between rows
  fill: (x, y) => if y == 0 { primary-color.lighten(60%) } 
                   else if calc.odd(y) { rgb(245, 241, 230) } 
                   else { white },
  table.header[*Date (Week)*][*Who's in charge?*][*Subject of the day*],
  
  [WED 24/9 (39)], [Magnus], [PRO 1 - Intro to Computer Basics and Programming basics],
  [THU 25/9 (39)], [Magnus], [PRO 2 - Intro to Functions and Control Structures in programming],
  [FRI 26/9 (39)], [INDIVIDUAL], [PRO Days],
  [MON 29/9 (40)], [Magnus], [PRO 3 - Introduction to the DOM (Document Object Module)],
  [TUE 30/9 (40)], [INDIVIDUAL], [PRO Days],
  [WED 1/10 (40)], [Magnus], [PRO 4 - Data Structures in JavaScript],
  [THU 2/10 (40)], [INDIVIDUAL], [PRO Days],
  [FRI 3/10 (40)], [Magnus], [PRO 5 - Programming Paradigmes (SUBJECT TO CHANGE)],
  [MON 6/10 (41)], [INDIVIDUAL], [PRO Days],
  [TUE 7/10 (41)], [INDIVIDUAL], [PRO Days],
  [WED 8/10 (41)], [INDIVIDUAL], [Exam (+ Q&A)],
)]

== Recap of last session
Last session we:

- Looked at how a computer works
- Worked with decimal to binary conversion
- Was introduced to some of the building blocks of programming languages
- Was introduced to what a programming languages syntax is:
  - It has some defined *keywords* (such as `let`)
  - It has defined som *simple data types* (such as strings of text (`"hello"`) or integers (`24`))
  - It has a way to declare *variables* (using `let` in JS)
  - It has a way to *control the flow of the code* ← Today's subject!
  - It has a way to declare *functions* ← Today's subject!
- Saw some JavaScript code and wrote some too.

== Learning Goals
By the end of today, you should:

- Understand what control structures are and why they are important for your code
- Know how to use `if`, `if...else`, and loops in JavaScript
- Be able to write and use functions with parameters and return values (maybe)
- Have written code using these concepts, and gotten a practical understanding of them
- Start combining Javascript with HTML and CSS (maybe, subject for tomorrow)

---

= What is Execution and What is Flow?

---

Execution is the process of running your code, line by line, in the order specified by the program. By default, JavaScript runs each statement from top to bottom. However, with control structures, we can change this flow: skip lines, repeat actions, or make decisions. This is what makes programs dynamic and interactive.

*Analogy:* Think of execution like following a recipe.
- Sometimes you repeat steps, such cracking multiple eggs (loops) 
- Sometimes you make choices, such as if the meat is not done yet you cook it for longer (if/else)
- And sometimes you have to use another recipe for part of the main recipe (like calling a function).


= Conditionals

#align(horizon)[#definition("Conditionals")[Conditionals let us make decisions in code. They allow the program to choose different paths depending on the data or user input. This allows us to create code that *branches out* depending on user input]]


== `if` Statement
The `if` statement takes a *boolean expression* and checks if it is true. If it is true, the code inside the block runs. The syntax is:

```js
if ([condition]) {
  // code that does something
}
```

the condition needs to evaluate to a *boolean value* (that is, `true` or `false`), but other than that it can be any expression (or function).
---

Example:

```js
let age = 18;
if (age >= 18) {
  console.log("You are an adult.");
}
```
*Note:* The code inside `{}` only runs if the condition is true.

#speaker-note("Expand this example in live code with different conditions. Try to:
- `let age = 15`
- `(age == 18)`
- `(18 >= age && age >= 12)`\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")


---

#align(horizon)[#feature[Task][Write an if statement in pseudocode/JavaScript that checks if a number is positive. If it is, print "Positive number" to the console (screen). Magnus will demo it on the board afterwards.]]


== `if ... else` Statement
The `if...else` statement lets you choose between two actions, depending on whether a condition is true or false. The syntax is:

```js
if ([condition]) {
  // do something if condition is true
} else {
  // do something else if condition is false
}
```

The `else` block runs only if the condition is false.

---

Example:

```js
let score = 55;
if (score >= 60) {
  console.log("Passed");
} else {
  console.log("Failed");
}
```
*Note:* Only one of the blocks will run, depending on the condition.

#speaker-note("Expand this example in live code with different scores. Try to:
- `let score = 75`
- `let score = 40`
- `score == 60`\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

---

Another example:

```js
let theNumber = Number(prompt("Pick a number"));
if (!Number.isNaN(theNumber)) {
  console.log("Your number is the square root of " +
              theNumber * theNumber);
} else {
  console.log("Hey. Why didn't you give me a number?");
}
```

---

#align(horizon)[#feature[Task][Write an if...else statement that prints "Even" if a number is even, and "Odd" if it is odd.]]

---

== `if ... else if ... else`
The `if...else if...else` statement lets you check multiple conditions in sequence. The syntax is:

```js
if ([condition1]) {
  // do something if condition1 is true
} else if ([condition2]) {
  // do something if condition2 is true
} else {
  // do something if none of the above are true
}
```

You can have as many `else if` blocks as you need.

---

Example:

```js
let grade = 85;
if (grade >= 90) {
  console.log("A");
} else if (grade >= 80) {
  console.log("B");
} else if (grade >= 70) {
  console.log("C");
} else {
  console.log("Needs improvement");
}
```
*Note:* The first true condition's block will run, and the rest are skipped.

#speaker-note("Try different values for grade: 95, 82, 75, 60.\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

---

== The Switch statement
The `switch` statement is another way to choose between many options, especially when checking the value of a single variable. The syntax is:

```js
switch (expression) {
  case value1:
    // code to run if expression === value1
    break;
  case value2:
    // code to run if expression === value2
    break;
  default:
    // code to run if no case matches
}
```

---

Example:

```js
let day = 3;
switch (day) {
  case 1:
    console.log("Monday");
    break;
  case 2:
    console.log("Tuesday");
    break;
  case 3:
    console.log("Wednesday");
    break;
  default:
    console.log("Another day");
}
```
*Note:* The `break` statement stops the switch from running the next case.

#speaker-note("Try changing the value of day to 1, 2, 4.\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

---

= Loops
---
Loops let us repeat actions multiple times. This is useful for working with lists, repeating calculations, or automating tasks.

*Analogy:* Imagine you want to water 10 plants. Instead of writing "water plant" 10 times on your todo, write 'water all the plants' and water them all one by one. A loops works on the same principle

#align(center)[#image("../../shared/resources/CPT-Programming-FOR-Loop.svg.png")]


== For-loop
A `for` loop is often used when you know how many times you want to repeat something. The syntax is:

```js
for ([initialization]; [break-condition]; [update]) {
  // code to repeat
}
```

Where:
- The `initialization` is where we initialize a *loop variable* that we use to control the loop
- The `break-condition` is where we define at what point the loop should *break*
- The `update` part is where we *update the loop variable* at the end of each loop, to get us closer to meeting the `break-condition`

---

#align(horizon + center)[#definition("Loop Variable")[A Loop Variable is a special kind of variable we only use to *control the loop we are running*. It is not used outside of the loop at all#footnote[Except when we as programers decide to use it outside the loop, and there are good reasons to do it!]]]

---

Example:

```js
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```
*Explanation:* `i` starts at 0, increases by 1 each time, and stops when it reaches 5.

#speaker-note("Try changing the start value, end value, or increment.\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

---

== Task
#align(horizon)[#feature[Task][Write a loop that prints all numbers from 1 to 10.]]

---

== While-loop
A `while` loop repeats as long as the condition is true. The syntax is:

```js
while ([condition]) {
  // code to repeat
}
```

The loop only runs *if the conditions is true*. If the condition never is true, then it never runs

The `while` loops also needs a *loop variable* but we need to make it ourselves

---

Example:

```js
let count = 0;
while (count < 5) {
  console.log(count);
  count++;
}
```
*Note:* Be careful! If the condition never becomes false, the loop will run forever (infinite loop).

#speaker-note("Try different starting values for count, or change the condition to count <= 3.\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

---

== For...of loop
A `for...of` loop lets you go through each item in a list (array). The syntax is:

```js
for (let item of array) {
  // code to run for each item
}
```

---

Example:

```js
let fruits = ["apple", "banana", "cherry"];
for (let fruit of fruits) {
  console.log(fruit);
}
```
*Note:* This is great for working with arrays and lists.

#speaker-note("Try adding more fruits to the array, or use a different array.\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

= Functions
Functions are reusable blocks of code that perform a specific task. They help organize your code, avoid repetition, and make programs easier to read and maintain.

*Analogy:* Think of a function like a coffee machine. You give it ingredients (parameters), it does something, and gives you coffee (return value).

---

== Function Basics
A function is defined with the `function` keyword, a name, and parentheses for parameters. The syntax is:

```js
function functionName(parameter_1, parameter_2, ...) {
  // code to run
}
```

The function *parameters* work as empty variables that we can define when *calling the function*.
---
#align(horizon)[#definition("Calling a Function")[Calling a Function means we use use the function after we have defined it. This is where the function code actually runs. When we define a function, using the `function` keyword, the functions code *does not run*]]

---

Example:

```js
function greet(name) {
  console.log("Hello, " + name + "!");
}

greet("Magnus"); // Calls the function with "Magnus" as the argument
```
*Note:* You can call a function as many times as you want, with different arguments.

#speaker-note("Try calling greet with different names, or add more code inside the function.\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

---

== Function Parameters and Return
Parameters are inputs to the function. The `return` keyword sends a value back to where the function was called. The syntax is:

```js
function functionName(param1, param2) {
  // code
  return value;
}
```

---

Example:

```js
function add(a, b) {
  return a + b;
}

let sum = add(3, 7);
console.log(sum); // prints 10
```
*Note:* The function can use its parameters to calculate or process data, and return a result.

#speaker-note("Try returning different values, or using more parameters.\n\n[REMINDER: Do a live coding demo of this example on the board or in the console]")

---

=== Task
#align(horizon)[#feature[Task][Write a function that takes a number and returns its square.]]

---

=== Task
#align(horizon)[#feature[Task][Write a function that takes two numbers and returns the larger one.]]

---

== Anonymous functions in JS

Anonymous functions are functions without a name. They are often used when a function is only needed once or as arguments to other functions. The syntax is:

```js
// Anonymous function expression
let greeting = function(name) {
  return "Hello, " + name;
};

// Using the function
console.log(greeting("Student")); // prints "Hello, Student"
```

---

=== Arrow Functions
A more concise way to write anonymous functions is using arrow function syntax (Introduced in the ECMAScript 6 specification):
#block[
  #set text(size: 0.75em)
  ```js
  // Arrow function with multiple lines
  let greeting = (name) => {
    return "Hello, " + name;
  };

  // Shorter version for simple functions
  let square = x => x * x;

  console.log(square(5)); // prints 25
  ```
]
*Note:* Arrow functions have implicit return when you omit curly braces for a single expression.

#speaker-note("Demonstrate how arrow functions can be more concise. Show both multi-line and short form examples.\n\n[REMINDER: Do a live coding demo of these examples in the console]")

---

=== When to Use Anonymous Functions
Anonymous functions are commonly used:

1. As callback functions
```js
setTimeout(function() {
  console.log("This runs after 2 seconds");
}, 2000);

// Same with arrow function
setTimeout(() => console.log("This runs after 2 seconds"), 2000);
```

2. In array methods
```js
let numbers = [1, 2, 3, 4, 5];
let doubled = numbers.map(x => x * 2);
console.log(doubled); // [2, 4, 6, 8, 10]
```

#speaker-note("Explain how anonymous functions are often used with array methods like map, filter, and reduce. Show how they make code more concise and readable.\n\n[REMINDER: Live code some examples of array methods with anonymous functions]")

---

=== Anonymous Functions vs. Named Functions
When should you use each?

- Use *named functions* when:
  - You need to reuse the function in multiple places
  - The function is complex and has a specific purpose
  - You want the function to appear in stack traces for debugging

- Use *anonymous functions* when:
  - The function is used only once
  - The function is simple and its purpose is clear from context
  - You're passing it as a callback or argument to another function

#speaker-note("Discuss tradeoffs between anonymous and named functions. Mention that named functions can be easier to debug because they show up in stack traces with their name.")

---

== Functions and scope

Variables when instantiated, belong to a specific *scope*. This means that they can only be referenced within that specific scope in the code onl

#block[
  #set text(size: 0.85em)
  ```js
  function showScore() {
    let score = 20; // score only exists inside this function
    console.log(score);
  }
  showScore(); // prints 20
  console.log(score); // Error: score is not defined outside the function
  ```
]


= Recap & Practice

Go to canvas for todays recap quiz #emoji.confetti


== Preparation for Next time
- Finish the exercises for today
  - Focus on `iterations.pdf` and `selections.pdf`. `functions.pdf` can wait until tomorrow/some other pro-day
- 


