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
    title: [PRO 4 - Introduction to advanced datatypes in Javascript],
    subtitle: [An introduction to programming with Javascript],
    author: [Magnus Lindholm Nielsen],
    date: datetime.today(),
    institution: [Business Academy Aarhus],
  ),
)

#set heading(numbering: "1.")

#title-slide()

= Plan for today

---

Todays plan is:
- We all talk about how yesterdays independent work went
- Magnus introduces the sign-up assignment
- You guys work on the sign-up assignment in groups
- Break
- (Maybe) Magnus does a short presentation on Objects and Arrays in JS
- You guys continue to work on the sign-up assignment
- Lastly, you will get a mock-exam to work on tomorrow


= Pro-Day 1 sum-up

== Color-picker

You have designed a color-picker following a guide yesterday - how was it?

You have read some more about datatypes - any questions?

= Build a sign-up website

== Introduction

To further enhance your understanding of JS and the DOM, today you will be building a sign-up page for users to sign-up for... something

You will work in pair or in groups of three

Todays task is structured like this:
- You will work on task 1 and 2 of the user signup page
- Then there will be a reading task on how to use Objects and Arrays in JS
- Then you can move on to tasks 3-5

Tasks 6 and 7 are more advanced tasks for the quick ones

= Break

= Datatypes in JavaScript

== Recap: What datatypes do we know?

== Build-in primitive datatypes in JS

There are 7 primitive datatypes in JS:
- `string` #emoji.checkmark
- `number` (sometimes called `int` by MAGL) #emoji.checkmark
- `boolean` #emoji.checkmark
- `null` < New data type! #emoji.warning
- `undefined` (not applicable, kind like `null`) #emoji.crossmark
- `bigint` (not applicable) #emoji.crossmark
- `symbol` (not applicable) #emoji.crossmark

== Quick intro to `null`


#align(horizon)[#definition("null")[
`null` is a special value in JavaScript that represents the intentional absence of any object value. It is used when you want to indicate that a variable should have no value. People sometimes refere to it in the singular ]]


== Null examples

We can use `null` as  a way to denote the absence of a specific value
  // Example: Assigning null to a variable
  ```js
  let user = null; // user has no value yet
  console.log(user); // prints null
  ```

The `null`-value can also be used in Boolean expression, and we can check whether a variable is set to `null` 

#align(horizon)[
  #set text(size: 0.90em)
  // Example: Checking for null before using a variable
  ```js
  let user = null;
  if (user === null) {
    console.log("No user is set");
  } else {
    console.log("User is:", user);
  }
  ```
]

---
Sometimes we use `null` to indicate a variable has been 'cleared', i.e. we are done using it.
  // Example: Setting a variable to null to clear its value
  ```js
  // We start a session for the user and use the session variable to know the session is active
  let session = "active";
  // ... later in the code ...
  session = null; // session is now cleared
  console.log(session); // prints null
  ```

---
Functions can also return `null`, which is often used to indicate that they did not succeed in what they wanted to do.

#align(horizon)[
  #set text(size: 0.90em)
  // Example: Function that returns null if no result is found
  ```js
  function findUser(name) {
    let users = ["Alice", "Bob"];
    for (let user of users) { // Loop over users
      if (user === name) {
        return user;
      }
    }
    return null; // No user with that name found
  }
  let result = findUser("Charlie");
  if (result === null) {
    console.log("User not found");
  }
  ```
]

== `arrays` in JS
#align(horizon)[#definition("Array")[
An *array* is a special variable in JavaScript that can hold multiple values at once, stored in a single list. Each value in the array has a numbered position called an *index*, starting from 0. Arrays are useful for storing lists of data, such as numbers, strings, or even objects. You can access, change, add, or remove elements using their index or built-in methods such as `.push()` or `.pop()`.
]]

---
We can create an array by listing values inside square brackets. Each value is separated by a comma. The first value is at index 0.
#align()[
  #set text(size: 0.90em)
  // Creating an array
  ```js
  let colors = ["red", "green", "blue"];
  console.log(colors[0]); // prints "red"
  console.log(colors[2]); // prints "blue"
  ```
]
Arrays can hold any type of value, including numbers, strings, or even other arrays and objects. They are dynamic, so you can change their size at any time.

---
You can change the value at a specific index by assigning a new value to it. Arrays are *mutable*, so you can update them after creation.
#align()[
  #set text(size: 0.90em)
  // Modifying an array
  ```js
  colors[1] = "yellow"; // Change the second element
  console.log(colors); // ["red", "yellow", "blue"]
  ```
]

---
Arrays have built-in methods to add or remove elements. `push()` adds to the end, `unshift()` adds to the start, `pop()` removes the last element, and `shift()` removes the first.
#align()[
  #set text(size: 0.90em)
  // Adding and removing elements
  ```js
  colors.push("purple"); // Add to end
  colors.unshift("orange"); // Add to start
  let last = colors.pop(); // Remove last
  let first = colors.shift(); // Remove first
  console.log(colors); // Current state of array
  ```
]

---
To work with all elements in an array, you can use a loop. The `for` loop uses an index, while the `for...of` loop gives you each value directly.
#align()[
  #set text(size: 0.90em)
  // Looping through an array
  ```js
  for (let i = 0; i < colors.length; i++) {
    console.log(colors[i]);
  }
  // or
  for (let color of colors) {
    console.log(color);
  }
  ```
]
---

== `objects` in JS
#align(horizon)[#definition("Object")[
An *object* in JavaScript is a collection of properties, where each property has a name (key) and a value. Objects are used to group related data and functions together. They are ideal for representing real-world entities, such as a person, a car, or a user profile.
]]


---
Objects are created using curly braces `{}`. Each property is written as a key-value pair, separated by a comma. You can access properties using dot notation or bracket notation.
#align(horizon)[
  #set text(size: 0.90em)
  // Creating an object
  ```js
  let user = {
    name: "Magnus",
    age: 32,
    isStudent: false
  };
  console.log(user.name); // prints "Magnus"
  console.log(user["age"]); // prints 32
  ```
]

---
You can add new properties or change existing ones by assignment. Objects are mutable, so you can update them after creation.
#align()[
  #set text(size: 0.90em)
  // Adding and changing properties
  ```js
  user.email = "magnus@example.com"; // Add new property
  user.age = 33; // Update property
  console.log(user);
  ```
]

You can remove a property from an object using the `delete` keyword.
#align()[
  #set text(size: 0.90em)
  // Removing a property
  ```js
  delete user.isStudent;
  console.log(user);
  ```
]

---
Objects can also have functions as properties, called methods. Methods can use the `this` keyword to refer to the object itself.
#align()[
  #set text(size: 0.90em)
  // Objects can have functions (methods)
  ```js
  user.greet = function() {
    console.log("Hello, my name is " + this.name);
  };
  user.greet(); // prints greeting
  ```
]

---
Objects can contain arrays or other objects as properties, allowing you to build complex data structures. For example:
#align(horizon)[
  #set text(size: 0.90em)
  // Object with an array property
  ```js
  let car = {
    make: "Toyota",
    model: "Corolla",
    year: 2020,
    owners: ["Alice", "Bob"]
  };
  console.log(car.owners[0]); // prints "Alice"
  ```
]

---
You can also have arrays of objects, which is useful for storing lists of similar items.
#align(horizon)[
  #set text(size: 0.90em)
  // Example: Array of objects
  ```js
  let users = [
    { name: "Alice", age: 25 },
    { name: "Bob", age: 30 },
    { name: "Charlie", age: 22 }
  ];
  for (let user of users) {
    console.log(user.name + " is " + user.age + " years old");
  }
  ```
]

Objects are the foundation of most data structures in JavaScript. Mastering them will help you solve a wide range of programming problems.

= Sign-up webside presentation?