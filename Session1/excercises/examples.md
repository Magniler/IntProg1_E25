

## Example 1: Type Conversion Surprises

```js
// Shows how JavaScript handles different data types
let num = 5;
let text = "10";
console.log(num + text);       // "510" (string concatenation)
console.log(num + Number(text)); // 15 (numeric addition)
console.log(num == text - 5);   // true (automatic conversion)
console.log(num === text - 5);  // false (strict equality)
```


## Example 2: Variable Scope in Action

```js

let globalVar = "I'm global";

function scopeDemo() {
  let localVar = "I'm local";
  console.log(globalVar);  // Can access global
  console.log(localVar);   // Can access local
  
  if (true) {
    let blockVar = "I'm block-scoped";
    var functionVar = "I'm function-scoped";
    console.log(blockVar);  // Accessible here
  }
  
  console.log(blockVar);    // causes error - out of scope
  console.log(functionVar); // Still accessible
}

scopeDemo();
// console.log(localVar);  // Would cause error - out of scope

```

## Example 3: Binary Representation
A small toy example to show how to go from decimal to binary - not that important.

```js
// Show binary representation and operations
let num = 10;
console.log("Decimal:", num);
console.log("Binary:", num.toString(2));  // "1010"

let result = num << 1;  // Left shift = multiply by 2
console.log("Shifted left:", result);
console.log("Binary after shift:", result.toString(2));  // "10100"

// Convert binary string to number
let binaryString = "1101";
console.log("Binary string:", binaryString);
console.log("As decimal:", parseInt(binaryString, 2));  // 13

```

## Example 4: Function as Expression
In Javascript, functions are *first class objects*. This means that they can be handled just as other objects/datatypes, and be passed as parameters to other functions.

```js

// Show functions as expressions and using operators
const square = function(x) {
  return x * x;
};

const double = function(x) {
  return x * 2;
};

// Function composition using a new function
const doubleSquare = function(x) {
  return double(square(x));
};

console.log(square(4));        // 16
console.log(double(4));        // 8
console.log(doubleSquare(4));  // 32

// Functions in arrays
const operations = [square, double, Math.sqrt];
const number = 4;

// Apply each function to the number
for (let operation of operations) {
  console.log(operation(number));
}

```