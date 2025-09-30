## Exercise: Selection statements

In programming, selection statements and logical operators are
fundamental tools that allow us to control the flow of our programs
based on certain conditions. Selection statements like if, else if, and
else help us make decisions and execute specific blocks of code
depending on whether conditions are true or false. Logical operators
such as AND (&&), OR (||), and NOT (!) enable us to combine multiple
conditions and create more complex decision-making logic.

The following exercises are designed to help you understand and practice
these concepts. By working through these problems, you'll gain a deeper
understanding of how to use selection statements and logical operators
to write more efficient and effective code.

Sources:

JavaScript if else else if [WWW Document], n.d. URL
<https://www.w3schools.com/js/js_if_else.asp> (accessed 23.09.25).

JavaScript Switch Statement [WWW Document], n.d. URL
<https://www.w3schools.com/js/js_switch.asp> (accessed 23.09.25).

### Explain the Flow

- Describe the general flow of control in an if-else statement. What
  happens when the condition is true? What happens when it is false?
  Supplement your answer with an example.

- Explain how a switch statement works. Describe what happens when a
  case matches the expression? Describe what happens when no cases match
  and there is a default case?

### Conceptual Questions

- What is the difference between if-else and switch statements? When
  would you use one over the other?

### Predict the Output

Given the following code snippet, predict the result:

```js
> const x = 10;
>
> let result;
>
> if (x > 5) {
>
> result = "x is greater than 5";
>
> }
>
> else {
>
> result = "x is less than or equal to 5";
>
> }
>
> console.log(result);
```

4.  Predict the output:
    Given the following code snippet, predict the result:

```js
> const number = 123;
>
> let result;
>
> switch (number) {
>
> case 1:
>
> result = "One";
>
> break;
>
> case 2:
>
> result = "Two";
>
> break;
>
> case 3:
>
> result = "Three";
>
> break;
>
> default:
>
> result = "Number not in range 1-3";
>
> break;
>
> }
>
> console.log(result);
```

### Trace the Code I:

Trace the following code and explain the output step-by-step:

```js
> const a = 5;
>
> const b = 10;
>
> let result;
>
> if (a > b) {
>
> result = "a is greater than b";
>
> } else if (a < b) {
>
> result = "a is less than b";
>
> } else {
>
> result = "a is equal to b";
>
> }
>
> console.log(result);
```

### Trace the Code II


Trace the following code and explain the output step-by-step:

```js
> const a = 3;
>
> const b = 7;
>
> let result;
>
> if (a > b && b < 10) {
>
> result = "Condition 1 is true";
>
> } else if (a < b || b > 5) {
>
> result = "Condition 2 is true";
>
> } else {
>
> result = "No condition is true";
>
> }
>
> console.log(result);
```

### Identifying a logical problem

a.  The following code will run but has a logical problem. What is it?

```js
> const purchaseAmount = 250.00;
>
> let discount;
>
> if (purchaseAmount >= 100) {
>
> discount = 0.10; // 10% discount
>
> } else if (purchaseAmount >= 200) {
>
> discount = 0.20; // 20% discount
>
> } else {
>
> discount = 0.0; // No discount
>
> }
>
> console.log("Your discount is kr. " + purchaseAmount * discount);
```

b.  Can you correct the code? No discount is to be given on purchases
    below kr. 100?

### Design a computer program

Design a computer program that takes a user's age and displays whether she/he is

I.  A child (age < 13)

II. A teenager (age 13-19)

III. An adult (age 20-64)

IV. A senior (age 65 and above)

It may help you, if you in everyday english, lay out the sequence of
statements in order before you start coding. Use
<https://mortenbonderup.github.io/jspad/> and your prior knowledge
about *prompt*.
