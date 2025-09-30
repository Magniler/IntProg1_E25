## Exercise: Iteration statements

Iteration is a fundamental concept in programming that allows you to
execute a block of code multiple times. This is particularly useful for
tasks that require repetitive actions, such as processing elements in a
collection, performing calculations, or generating sequences. In this
set of exercises, you will explore different types of loops: for-loop,
while-loop, do-while loop, and foreach loop. Each type of loop has its
unique structure and use cases, which you will learn through both
theoretical questions and practical programming tasks.

Sources:

JavaScript for Loop [WWW Document], n.d. URL
<https://www.w3schools.com/js/js_loop_for.asp> (accessed 23.09.25).

JavaScript while Loop [WWW Document], n.d. URL
<https://www.w3schools.com/js/js_loop_while.asp> (accessed 23.09.25).

JavaScript Array forEach() Method [WWW Document], n.d. URL
<https://www.w3schools.com/jsref/jsref_foreach.asp> (accessed 23.09.25).

### Theoretical Exercises

1.  **For-Loop:**

    - Explain the structure of a for-loop and how it differs from other
      loops.

2.  **While-Loop:**

    - Explain the structure of a while-loop.

    - A while-loop might lead to an infinite loop. How can this be
      prevented?

3.  **Do-While Loop:**

    - Explain the structure of a do-while loop and how it ensures that
      the loop body is executed at least once.

4.  **Foreach Loop:**

    - Explain the purpose of a foreach loop and how it differs from a
      for-loop.

### Practical Programming Exercise

For coding you can use <https://mortenbonderup.github.io/jspad>

**Task:** Write a program that processes a list of numbers and performs
the following operations using different types of loops:

1.  **For-Loop:** Outside the for loop, define a variable called
    *result*. Use this variable within the for-loop and calculate the
    sum of all numbers from 1 to 100 (both included). Show the sum to
    the user after the loop has ended.

2.  **While-Loop:** Define a variable *max* and set its value to 50.
    Define a variable *counter* and set its value to 0. In the while
    loop, increase the counter value with one and make loop end, when it
    reaches *max*. Use console.log to show the counter value to the user
    during the loop.

3.  **Do-While Loop:** Do the same thing as 2) using the do-while loop.

4.  **Foreach Loop:** Make a list of car brands and use a foreach loop
    together with console.log to show the cars**.**

**Task:** Below you see a computer program that throws a dice and let
the user guess what side is up. But the code is not finished and has some flaws.
Type / copy the code to
<https://mortenbonderup.github.io/jspad> and try it out. Here are what
you must do (solve one at a time):

1.  Add a counter to keep track of how many guesses it takes to find the
    correct number. Display the count when the correct number is
    guessed.

2.  Allow the user only 5 attempts to guess the number. If she/he fails,
    display a message saying she/he has lost and reveal the correct
    number.

3.  After the game ends, ask the user if they want to play again. If
    they say yes, restart the game; otherwise, exit. Use an
    outer while loop to handle the replay logic.

4.  Modify the game to provide hints to the user if the guess is too
    high or too low. Use if-else statements inside the loop to compare
    the guess with the random number and provide appropriate hints.

```js
const randomNumber = Math.floor(Math.random() * 6) + 1;

let guess = 0;

while (guess !== randomNumber) {

    guess = Number(prompt("Guess the dice side (1-6):"), 10);

    if (guess === randomNumber) {

        alert("Congratulations! You guessed the correct number: " +
        randomNumber);

    } else {

    alert("Try again!");

    }

}
```