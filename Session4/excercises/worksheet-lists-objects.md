# JavaScript Lists & Objects Worksheet

This worksheet introduces the basics of working with lists (arrays) and objects in JavaScript. Complete the tasks below to practice using these important datatypes.

---

## What is a JavaScript Object?

A JavaScript object is a way to group related data together. Each piece of data is stored as a property with a name (the key) and a value. Objects are very flexible and can represent almost anything: a person, a product, a form input, etc.

### Object Syntax

Objects are written with curly braces `{}`, kind of like functions without the function keyword. Each property is a key-value pair separated by a colon, and pairs are separated by commas:

```js
let user = {
  name: "Alice",      // String property - The properties can be any data type in JavaScript
  email: "alice@example.com", // String property
  age: 22,            // Number property
  isMember: true      // Boolean property
};
```

### Accessing and Modifying Properties

You can access properties using dot notation or bracket notation:

```js
console.log(user.name);      // "Alice"
console.log(user["email"]); // "alice@example.com"
```

You can change property values or add new ones:

```js
user.age = 23;               // Update property
user.country = "Denmark";   // Add new property
```

---

## What is a JavaScript Array?

An array is a list of values, stored in a single variable. Arrays are written with square brackets `[]` and can hold any type of data, including objects.

```js
let numbers = [1, 2, 3, 4, 5];
let names = ["Alice", "Bob", "Charlie"];
```

Arrays can also hold objects:

```js
let users = [
  { name: "Alice", email: "alice@example.com", age: 22 },
  { name: "Bob", email: "bob@example.com", age: 25 }
];
```

You can loop through the array to access each object:

```js
for (let user of users) {
  console.log(user.name);
}
```

---

## Tasks

### Task 1: Create an Object
- Make a new object called `car` with properties for `make`, `model`, and `year`.
- Log the object to the console.

### Task 2: Update an Object
- Change the `year` property of your `car` object to a new value.
- Add a new property called `color`.
- Log the updated object.

### Task 3: Create an Array
- Make a new array called `fruits` with at least 3 fruit names.
- Log the array.

### Task 4: Add and Remove Array Items
- Add a new fruit to the `fruits` array using `push()`.
- Remove the first fruit using `shift()`.
- Log the updated array.

### Task 5: Array of Objects
- Make an array called `books` with at least 2 objects, each representing a book with `title` and `author` properties.
- Loop through the array and log each book's title.

---

*End of worksheet. Save your code and be ready to discuss your solutions in class!*
