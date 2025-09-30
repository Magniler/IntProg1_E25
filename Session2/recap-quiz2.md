# Session 2 Recap Quiz: Control Structures and Functions

## 1. What is a conditional statement in JavaScript and why is it important?

- A) A way to organize code into reusable blocks
- B) A statement that makes decisions based on whether a condition is true or false
- C) A statement that repeats code multiple times
- D) A way to define variables

## 2. Which of these is the correct syntax for an if statement in JavaScript?

- A) `if condition { code }`
- B) `if [condition] then { code }`
- C) `if (condition) { code }`
- D) `if condition then code endif`

## 3. What will this code output to the console?

```js
let num = 7;
if (num % 2 === 0) {
  console.log("Even");
} else {
  console.log("Odd");
}
```

- A) "Even"
- B) "Odd"
- C) Nothing
- D) Error

## 4. What is the purpose of the `break` statement in a switch statement?

- A) To stop the entire program
- B) To exit the current function
- C) To prevent fall-through to other cases
- D) To break the condition into multiple parts

## 5. What will the following loop print to the console?

```js
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```

- A) 1, 2, 3, 4, 5
- B) 0, 1, 2, 3, 4
- C) 0, 1, 2, 3, 4, 5
- D) 1, 2, 3, 4

## 6. Which loop type would be best for iterating through all elements of an array?

- A) while loop
- B) for loop
- C) for...of loop
- D) Any of the above could work, but for...of is most readable for this purpose

## 7. What happens when the function below is executed?

```js
function greet() {
  console.log("Hello, world!");
}
```

- A) "Hello, world!" is printed to the console
- B) Nothing happens because the function needs to be called
- C) An error occurs because the function has no parameters
- D) "Hello, world!" is returned by the function

## 8. What will be the value of `result` after this code executes?

```js
function square(x) {
  return x * x;
}
let result = square(4);
```

- A) 8
- B) 16
- C) 4
- D) Nothing, because the result isn't assigned to anything

## 9. What is the scope of the variable `score` in this code?

```js
function showScore() {
  let score = 20;
  console.log(score);
}
```

- A) Global scope - accessible anywhere in the program
- B) Function scope - only accessible within the showScore function
- C) Block scope - only accessible within the nearest {} block
- D) Module scope - only accessible within the current JavaScript file

## 10. What will happen when this code runs?

```js
let count = 0;
while (count < 3) {
  console.log(count);
  // Oops, forgot to increment count!
}
```

- A) 0, 1, 2 will be printed and then the loop ends
- B) 0 will be printed once and then the loop ends
- C) Nothing will be printed because the condition is false
- D) 0 will be printed repeatedly forever (infinite loop)

---

## Answers

1. B) A statement that makes decisions based on whether a condition is true or false
2. C) `if (condition) { code }`
3. B) "Odd"
4. C) To prevent fall-through to other cases
5. B) 0, 1, 2, 3, 4
6. D) Any of the above could work, but for...of is most readable for this purpose
7. B) Nothing happens because the function needs to be called
8. B) 16
9. B) Function scope - only accessible within the showScore function
10. D) 0 will be printed repeatedly forever (infinite loop)
