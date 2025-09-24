## Exercise: Functions

Functions are a fundamental concept in programming that allow you to
encapsulate code into reusable blocks. In these exercises, you will
explore key concepts such as return values, global and local variables
and function arguments. Each exercise is designed to help you understand
and apply these concepts in a practical way. Let's dive in and start
building your skills in writing and using functions!

Source: JavaScript Functions \[WWW Document\], n.d. URL
<https://www.w3schools.com/js/js_functions.asp> (accessed 23.09.25).

Use <https://mortenbonderup.github.io/jspad/> to test your programs.

### Exercise 1: Function Arguments

**Task**: Create a function named *greet_user* that takes a user's name
as an argument and shows a greeting message. Explain what function
arguments are and how they are used.

**Task**: Expand the task above, so that the function also takes the
greeting message itself as an argument. A greeting message can be "Good
morning", "Good evening" or "Good afternoon".

### Exercise 2: Understanding Return Values

**Task:** Write a function named *calculate_sum* that takes two integers
as arguments and returns their sum. Show the result to the user. Explain
what a return value is and why it is important.

**Task:** Write a function named* calculate_area_of_circle* that takes
the radius of a circle as an argument and returns the area of the
circle. Show the result to the user.

### Exercise 3: Global and Local Variables

**Task: **Write a function called *increment* that takes a number as an
argument, increments it by 1, and returns the new value. Use a local
variable to store the incremented value.

**Task:** Write a function called* calculate_area *that takes two
arguments (length and width), calculates the area of a rectangle, and
returns the result. Use a global variable to keep track of the total
area calculated so far. Show the values to the user.

Here is a suggestion to the statement sequence in plain english:

1.  Initialize a global variable called total_area to 0.

2.  Define a function named calculate_area that takes two arguments:
    length and width.

    - Inside the function:

      - Calculate the area by multiplying length and width.

      - Add this calculated area to the global variable total_area.

      - Return the calculated area.

3.  In the main part of the program:

    - Call the calculate_area function with the values 5 and 3.

      - Store the result in a variable called area1.

      - Show the value of area1 (it should be 15) to the user.

    - Call the calculate_area function again with the values 2 and 4.

      - Store the result in a variable called area2.

      - Show the value of area2 (it should be 8) to the user.

    - Show the value of total_area (it should be 23) to the user.

### Exercise: Temperature Conversion

**Task:** Write a program that defines functions to convert temperatures
between Celsius and Fahrenheit. The program should keep track of the
number of conversions performed.

Here is a suggestion to the statement sequence in plain english:

1.  Initialize a global variable called conversion_count to 0.

2.  Define a function named celsius_to_fahrenheit that takes one
    input: celsius.

    - Inside the function:

      - Convert the Celsius temperature to Fahrenheit using the formula:
        (celsius \* 9/5) + 32.

      - Increment the global variable conversion_count by 1.

      - Return the Fahrenheit temperature.

3.  Define a function named fahrenheit_to_celsius that takes one
    input: fahrenheit.

    - Inside the function:

      - Convert the Fahrenheit temperature to Celsius using the formula:
        (fahrenheit - 32) \* 5/9.

      - Increment the global variable conversion_count by 1.

      - Return the Celsius temperature.

4.  Predefine temperatures in Celsius: 0, 20, 37, and 100. Create a
    variable for each value.

5.  Predefine temperatures in Fahrenheit: 32, 68, 98.6, and 212. Create
    a variable for each value.

6.  For each predefined Celsius temperature:

    - Call the celsius_to_fahrenheit function with the Celsius
      temperature.

    - Store the result in a variable.

    - Show the original Celsius temperature and the converted Fahrenheit
      temperature to the user.

7.  For each predefined Fahrenheit temperature:

    - Call the fahrenheit_to_celsius function with the Fahrenheit
      temperature.

    - Store the result in a variable.

    - Show the original Fahrenheit temperature and the converted Celsius
      temperature to the user.

8.  Show the total number of conversions performed, which is stored in
    the global variable conversion_count, to the user.
