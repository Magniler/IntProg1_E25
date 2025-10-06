# Midway Mock Exam 1: Introduction to Programming

This mock exam covers material from sessions 1-4. The format matches the real exam, but the amount of questions is roughly halved.

---

## Part 1: Multiple Choice

1. What is a variable in programming?
    - A) A fixed value
    - B) A container for storing data values
    - C) A type of function
    - D) A mathematical operator

2. Which of these is a correct way to declare a variable in JavaScript?
    - A) `var x = 5;`
    - B) `let x = 5;`
    - C) `const x = 5;`
    - D) All of the above

3. What does the following code output?

    ```js
    let a = 10;
    let b = 5;
    console.log(a + b);
    ```

    - A) 15
    - B) 105
    - C) "a + b"
    - D) Error

4. Which statement best describes a function?
    - A) A way to repeat code
    - B) A block of code designed to perform a particular task
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
    - B) Small
    - C) 7
    - D) Error

6. What is the output of this code?

    ```js
    let arr = [1, 2, 3];
    for (let i = 0; i < arr.length; i++) {
      console.log(arr[i]);
    }
    ```

    - A) 1 2 3
    - B) 0 1 2
    - C) arr
    - D) Error

7. Which of these is NOT a primitive data type in JavaScript?
    - A) String
    - B) Number
    - C) Object
    - D) Boolean

8. What does the `break` statement do in a loop?
    - A) Skips the current iteration
    - B) Exits the loop immediately
    - C) Restarts the loop
    - D) Causes an error

9. What is the result of this code?

    ```js
    let count = 0;
    while (count < 2) {
      console.log(count);
      count++;
    }
    ```

    - A) 0 1
    - B) 1 2
    - C) 0 1 2
    - D) Error

---

## Part 2: Written Questions

All questions that ask you to write code should be written in JavaScript, or Pseudo-javascript. It is okay to have a few errors in your code, as long as the overall structure and intention of it is correct.

1. Explain the difference between a `for` loop and a `while` loop. Give an example of when you would use each.

2. Describe what happens when you use an `if...else` statement in JavaScript. Give a short example.

3. What is an array in programming? Shortly describe what an array is, and give an example in pseudo-code or JavaScript

---

## Part 3: Code Questions

All questions that ask you to write code should be written in JavaScript, or Pseudo-javascript. It is okay to have a few errors in your code, as long as the overall structure and intention of it is correct

1. Write a JavaScript/pseudo-code function called `isEven` that takes a number as a parameter and returns `true` if the number is even, and `false` otherwise.

2. Given the following code, what will be printed to the console? Explain why.

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

3. Write a loop in JavaScript that prints all numbers from 1 to 10 (inclusive) to the console.

4. Given the array `let fruits = ["apple", "banana", "cherry"]`, write code to print each fruit on a new line to the console.

---

Good luck!
