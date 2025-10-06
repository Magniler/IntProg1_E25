# Midway Mock Exam 1: Introduction to Programming

This mock exam covers material from sessions 1-3. The format matches the real exam: 50% multiple choice, 25% written questions, 25% code questions.

---

## Part 1: Multiple Choice (50%)

1. What is a variable in programming?
    - A) A fixed value
    - B) A container for storing data values **[Correct]**
    - C) A type of function
    - D) A mathematical operator

2. Which of these is a correct way to declare a variable in JavaScript?
    - A) `var x = 5;`
    - B) `let x = 5;`
    - C) `const x = 5;`
    - D) All of the above **[Correct]**

3. What does the following code output?

    ```js
    let a = 10;
    let b = 5;
    console.log(a + b);
    ```

    - A) 15 **[Correct]**
    - B) 105
    - C) "a + b"
    - D) Error

4. Which statement best describes a function?
    - A) A way to repeat code
    - B) A block of code designed to perform a particular task **[Correct]**
    - C) A type of variable
    - D) A mathematical operation

5. What is the result of this code?

    ```js
    let x = 7;
    if (x > 10) {
      console.log("Big");
    } else {
      console.log("Small");
    }
    ```

    - A) Big
    - B) Small **[Correct]**
    - C) 7
    - D) Error

6. What is the output of this code?

    ```js
    let arr = [1, 2, 3];
    for (let i = 0; i < arr.length; i++) {
      console.log(arr[i]);
    }
    ```

    - A) 1 2 3 **[Correct]**
    - B) 0 1 2
    - C) arr
    - D) Error

7. Which of these is NOT a primitive data type in JavaScript?
    - A) String
    - B) Number
    - C) Object **[Correct]**
    - D) Boolean

8. What does the `break` statement do in a loop?
    - A) Skips the current iteration
    - B) Exits the loop immediately **[Correct]**
    - C) Restarts the loop
    - D) Causes an error

9.  What is the result of this code?

    ```js
    let count = 0;
    while (count < 2) {
      console.log(count);
      count++;
    }
    ```

    - A) 0 1 **[Correct]**
    - B) 1 2
    - C) 0 1 2
    - D) Error

---

## Part 2: Written Questions (25%)

All questions that ask you to write code should be written in JavaScript, or Pseudo-javascript. It is okay to have a few errors in your code, as long as the overall structure and intention of it is correct

1. Explain the difference between a `for` loop and a `while` loop. Give an example of when you would use each.
  Answer: A `for` loop is often used to loop over some data of a fixed length or a fixed number of times. A `while` loop is used to loop over some code an undefined amount of times. It continues until some condition, defined at the start, becomes `false`. You would use the `for` loop to loop over a list or print something a specific number of times, while you would use the `while` loop to await some user input

2. Describe what happens when you use an `if...else` statement in JavaScript. Give a short example.
   The ìf...else` statement defines 2 code blocks: One that is executes if a given condition is true, and another that is executed if it is false. E.g:

```js
  let condition = true;
  if (condition) {
    doSomething();
  } else {
    doSomethingElse();
  }
```

3. What is an array in programming? Shortly describe what an array is, and give an example in pseudo-code or JavaScript
   Answer: An array is an unordered list of some data. That data can be anything, e.g. strings, but can also contain other datatypes like this: `let list = ["text", "alsotext", 2]`  

---

## Part 3: Code Questions (25%)

All questions that ask you to write code should be written in JavaScript, or Pseudo-javascript. It is okay to have a few errors in your code, as long as the overall structure and intention of it is correct

1. Write a JavaScript/pseudo-code function called `isEven` that takes a number as a parameter and returns `true` if the number is even, and `false` otherwise.

  Answer:
  ```js
  function isEven(num){
    if (num % 2 == 0) {// even
      return true;
    } else {
      return false;
    }
  }
  ```

1. Given the following code, what will be printed to the console? Explain why.

    ```js
    let x = 3;
    let y = 7;
    if (x > y) {
      console.log("x is greater");
    } else if (x < y) {
      console.log("x is smaller");
    } else {
      console.log("x and y are equal");
    }
    ```

    Answer: The ìf...else if``statements check first which is greater, `x`or `y`, and the `else` block prints they are equal if none of the other blocks are executed. Since, in the given code, `y`is greater than `x`, the second block will be executed and the code will print "x is smaller"

2. Write a loop in JavaScript that prints all numbers from 1 to 10 (inclusive) to the console.

  Answer:
   ```js
  let x = 1
  while (x < 11){
    console.log(x);
    x++;
  }
   ```

3. Given the array `let fruits = ["apple", "banana", "cherry"]`, write code to print each fruit on a new line to the console.

  Answer:

  ```js
  for (let fruit of fruits){
    console.log(fruit);
  }
  ```
