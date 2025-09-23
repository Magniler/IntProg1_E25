#import "@preview/touying:0.6.1": *
#import "../../shared/theme/theme.typ": *
#import "@preview/frame-it:1.2.0": *
#import "@preview/curryst:0.5.1" as curryst: rule
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#set page(width: auto, height: auto, margin: 5mm)
#let colors = (maroon, olive, eastern)
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
  config-common(show-notes-on-second-screen: right,
  appendix: true),
  config-colors(
    primary: primary-color,
    secondary: secondary-color,
    tertiary: tertiary-color,
    neutral-darkest: text-color
  ),
  config-info(
    title: [PRO 1 - Introduction to Computers and Programming],
    subtitle: [With JavaScript Examples],
    author: [Magnus Lindholm Nielsen (magl\@eaa.dk)],
    date: datetime.today(),
    institution: [Business Academy Aarhus/Erhvervsakademi Aarhus],
    // logo: eaaalogo //TODO: Fix logo 
  ),
)

#set heading(numbering: "1.")

#title-slide()

---
*Learning Goals*

By the end of todays lecture and exercises, you should have:

- know how the course is going to be run and how the exam is structured
- A basic understanding of how a computer works at a physical level
- Some knowledge about the basic concepts of programming languages (syntax, keywords, etc.)
- Seen some of the concepts of programming languages be implemented in JavaScript
- Have tried to write a very simple JavaScript program
- Have been introduced to how to write pseudo-code in order to communicate programming ideas

= About Magnus

== Who is MAGL
Recently finished a Master in History with a Computer Science Elective

Has worked at Aarhus University, Aarhus city archives and Danske Commodities during my studies

Primarily worked with Python, but has worked in Java, Scala, *Javascript*, Go and C

Lives in Aarhus with my girlfriend, who is approx. 8 months pregnant #emoji.woman.pregnant

Will be your Lecturer for PRO1 (this semester) and maybe PRO2 (next semester)

Will likely be a bit too *theroretical* (#emoji.man.old) in class, but will try make the sessions more *practical* (#emoji.builder)

== How to contact MAGL

Email: magl\@eaaa.dk

Office:  7G, 3.13 (I am in most days)

Please feel free to contact me about any questions you have with the course #emoji.face.smile

If you email me about code problems, please make sure that the email includes:
- Enough/all of you code (or linked to your GitHub Repo)
- A clear description (with screenshots!) of the problem you are experiencing
- A summary of all the steps you have taken to fix the problem 
  - If you have asked a chat-bot, please specify and maybe include its answer/the whole chat
- Your own theory of why the code isn't working (if you have one)


= About the course

== Course Purpose

#speaker-note(```md This is the only course where **the coding** is at the center of the course. For your other courses, coding is a means to an end```)

The purpose of this course is to give your coding skills a boost

This will help you with the rest of your education and increase your employability on the danish job market

The course is going to be about *what coding is* and *how to write proper code*.

See this course as the one where you learn the fundemental techniques necessary for you guys to do the projects that are part of your education going forward.

== Course Schedule (updated 16.09.2025)

#block[
  #set text(size: 0.80em)
  #table(
  columns: (auto, auto, 1fr),
  inset: 8pt,
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
  [MON 29/9 (40)], [Magnus], [PRO 3 - Data Structures in programming],
  [TUE 30/9 (40)], [INDIVIDUAL], [PRO Days],
  [WED 1/10 (40)], [Magnus], [PRO 4 - Programming Paradigms (SUBJECT TO CHANGE)],
  [THU 2/10 (40)], [INDIVIDUAL], [PRO Days],
  [FRI 3/10 (40)], [Magnus], [PRO 5 - TBA],
  [MON 6/10 (41)], [INDIVIDUAL], [PRO Days],
  [TUE 7/10 (41)], [INDIVIDUAL], [PRO Days],
  [WED 8/10 (41)], [INDIVIDUAL], [Exam (+ Q&A)],
)]

#speaker-note("
- Emphasize that the QA and exam is on the same day
- The exam will be 
")

== The Book vs. The Classroom
#speaker-note()[This is a note for Magnus]

The book we follow for this course is *Computer Programming for Absolute Beginners (2020)* by Joakim Waasberg

The book will serve as background to the work we will do in the classroom. The book introduces things at a *High-Level*, where in the classroom we will try to implement and sketch out the concepts at a *Lower-Level*

The book uses pseudo-code to represent different algorithms, and we will to in the classroom. We will also try to implement some of the algorithms discussed in *JavaScript* (JS)


== A note on 'Le-Chat'

Generative AI is here to stay, so it is *not banned* in this course. But please, use it as a *learning helper* instead of an assistant

That means, when asking questions to the chat, do the following:
- Start the conversation telling it that you are a student and you want it to produce answers that are both informative and help you learn.
- For smaller problems, ask the chat to *guide you to a solution* instead of *providing a solution*. Again, this is to help you learn the basics.
- When all fails and you have spend 30-60min on a problem, ask the chat for a solution

The exam is done *without any aids* - keep that in mind!


= About the Exam

== Exam notes
Written exam with 3 parts: 
- Multiple choice (12-20 questions)
- Written questions (4-7 questions)
- Code section (4-7 questions)

Exam is done digitally in WiseFlow, and we are going to do a mock flow to ensure no nasty IT-problems happen (keep an eye on canvas)

In case of technical malfunctions/missing CPR-number, we can print the exam and you can do it on paper

It is *without any aids* (no internet, no AI, no paper notes\*)

== Practical info about the exam
*Subject to change, please check Canvas regularly in the days up to the exam!* 

Date: 8th of October, 10:00-11:00 (Subject to Change) - There will be a Q&A session just before, from 8:15-9:30.

Room: EAA-S7G-4.03, EAA-S7G-4.04 and EAA-S7G-4.05 (idk why we have 3 rooms)

#speaker-note("
- Tell them that you would like to put the exam around 10, but you don't know whether that is your call of the administration
- The Q&A is going to be on the same date as the exam, soo all the answers should be fresh in mind
")

= Computer Basics

== A note on Despair
#speaker-note("Present the rolercoaster of despair - tell them that if they leave todays session bewildered and confused, that is part of learning how to code")

You are going on a ride for the next 2 weeks, and you are going to be confused, bewildered and maybe even feel that you are in over your head and have no idea what is going on

#text(style: "italic")[And that is perfectly normal and fine!]

Coding is a *contact sport* - Learning to code is mentally challenging and exhausting. The best way to learn it is to simply write a lot of dysfunctional and bad code, and then try to learn how to make it better. 

And as you get better, you are going to have more and more code that works and that is #text(style: "italic")[*exhilerating*]



== What is a computer?

#align(horizon)[#feature("Task")[
With the student next to you, please discuss what an model of a computer looks like to you, informally. Feel free to draw models, write down schematics and such, but refrain from browsing the web

Be as *specific* or as *broad* as you want to 

Afterwards, we will try to model a computer on the whiteboard together as a flowchart, starting with the *user*
]]

== Basic computer model

#align(center + horizon)[#include "../../shared/resources/computer.typ"]

---

=== The transistor
All parts of a computer are made op of *transistors*. These can either amplify or block an electronic signal. They have two states:
- On (1): Current runs through the transistor
- Off (0): The transistor blocks current
Transistor thereby can be used to represent information using in *Binary*

#definition("Binary")[Binary (litt. dual/double) is a way to represent *information* using only 2 values (1 and 0). An example of a binary system is the base-2 number systen]

#align(horizon + center)[
  #figure(
    image("../../shared/resources/transistor.svg", width: 15mm, height: 15mm, fit: "contain"))
  ]

---

=== Base-2 system

These two states of the transistor correspond directly to the *base-2 number system*, where we can represent all numbers using only 2 digits: 1 or 0

Normally we use a *base-10* number system.

The base-2 system is used in programming since it perfectly aligns with the on/off state of a transistor. Using base-2, we can translate the electrical signals of a transistor into numbers/other information.

#speaker-note("Do the following exercise on the whiteboard:
- Show that base-10 is a positional number system (and ask if they know a non-positional number system)
- Translate 10 from base-10 to binary. Use 10^0 notation and make boxes to show how the position of numbers matter.
- Be sure to tell them that thi is very low-level, and they will likely never work with transistors etc. - but it is good to have an understanding of what is happening on a physical level.")

---
#v(10mm)
#align(center)[#table(
  columns: (auto, auto, auto),
  inset: 6pt,
  align: center,
  stroke: 1pt,
  fill: (x, y) => if y == 0 { tertiary-color.lighten(60%) } else { white },
  [*Decimal (Base-10)*], [*Binary (Base-2)*], [*Hexadecimal (Base-16)*],
  [0], [0], [0x0],
  [1], [1], [0x1],
  [2], [10], [0x2], 
  [10], [1010], [0xA],
  [16], [10000], [0x10], 
  [30], [11110], [0x1E],
  [100], [1100100], [0x64],
)]

#v(5mm)
*Examples:*
- The decimal number 10 is written as `1010` in binary.
- The binary number `1101` is `13` in decimal (1×2³ + 1×2² + 0×2¹ + 1×2⁰ = 8+4+0+1 = 13).


#align(horizon)[#feature("Task")[Do the 'binary' task on todays module on Canvas either in pairs or in a groups of 3]]

---

== Boolean Algebra

We have seen that with a base-2 number system, our computer, made op of transistors that are on or off, can represent all numbers

Using this binary state, we can make our computer calculate arbitrary functions/algorithms using *Boolean Algebra*, a special kind of algebra using only the numbers 1 and 0 as operands (corresponding to true and false).

While it forms the basis of how computers work at a hardware level, we also use it at a high level in order to calculate the truth value of statements

#definition("Boolean Algebra")[A version of normal algebra that only uses the values true/false, represented by 1/0, instead of the value of the ordinary numbers (1, 2, 3, ...). This algebra is the basis of how computers can do calculations and execute algorithms]

#speaker-note("
Do some easy boolean algebra on the board, in both pseudo code and Javascript like:
- Take the truth value of true AND false (JS: &&)
- Take the truth value of True OR True (JS: ||)

Remember to remind the students that they should not be experts in Boolean algebra")

---


*The logical operators in JavaScript*

#align(horizon + center)[
  #table(
    columns: (auto, auto, auto),
    inset: 6pt,
    align: center,
    stroke: 1pt,
    fill: (x, y) => if y == 0 { tertiary-color.lighten(60%) } 
      else if y >= 4 { rgb(255, 220, 220) } // Light red for rows 4 and below
      else { white },
    [*Operator*], [*Symbol*], [*Name*],
    [AND], [&&], [Logical AND],
    [OR], [||], [Logical OR],
    [NOT], [!], [Logical NOT],
    [Nullish Coalescing #footnote[All columns in red are operations that are rarely used and we will not use them in this course. Use this table to ensure that you don't use the wrong operation]], [??], [Nullish Coalescing],
    [Bitwise AND], [&], [Bitwise AND],
    [Bitwise OR], [|], [Bitwise OR],
    [Bitwise XOR], [^], [Bitwise XOR],
    [Bitwise NOT], [\~], [Bitwise NOT],
  )
]

---

#align(horizon)[#feature("Task")[
  Calculate the Truth value of the following expressions:
  + True && False || True
  + False || (¬False && True)
  + False || True || False && True

  If you have time, please also do the 'boolean' task on todays module on Canvas

  Remember: the order of operations still apply to Boolean algebra
]]

---

#block[
  #set text(size: 0.90em)
  ```js
  // Example: Using boolean operators to calculate truth values

  let a = true;
  let b = false;

  // Logical AND
  let result1 = a && b; // false

  // Logical OR
  let result2 = a || b; // true

  // Logical NOT
  let result3 = !a; // false

  console.log("a && b:", result1);
  console.log("a || b:", result2);
  console.log("!a:", result3);
  ```
]

/*
---
=== Logic Gates

Logic gates are the building blocks of digital circuits and are made from transistors. By combining transistors in novel ways, we are able to make *logic gates*

---

=== NOT Gate
The NOT gate (inverter) outputs the opposite of its input.

#include "../../shared/resources/not-gate.typ"

Truth Table:
#align(center)[
  #table(
    columns: (auto, auto),
    inset: 6pt,
    align: center,
    stroke: 1pt,
    fill: (x, y) => if y == 0 { colors.at(0).lighten(50%) } else { white },
    [*Input*], [*Output*],
    [0], [1],
    [1], [0],
  )
]

---

=== AND Gate
The AND gate outputs 1 only if and only if both inputs are 1.

#v(10mm)

#include "../../shared/resources/and-gate.typ"

---

  Truth Table for AND gate:
  #align(center)[
    #table(
      columns: (auto, auto, auto),
      inset: 6pt,
      align: center,
      stroke: 1pt,
      fill: (x, y) => if y == 0 { colors.at(0).lighten(50%) } else { white },
      [*Input A*], [*Input B*], [*Output*],
      [0], [0], [0],
      [0], [1], [0],
      [1], [0], [0],
      [1], [1], [1],
    )
  ]

---

=== OR Gate
The OR gate outputs 1 if at least one input is 1.

#v(5mm)

#include "../../shared/resources/or-gate.typ"

--- 

Truth Table for OR gates:
#align(center)[
  #table(
    columns: (auto, auto, auto),
    inset: 6pt,
    align: center,
    stroke: 1pt,
    fill: (x, y) => if y == 0 { colors.at(0).lighten(50%) } else { white },
    [*Input A*], [*Input B*], [*Output*],
    [0], [0], [0],
    [0], [1], [1],
    [1], [0], [1],
    [1], [1], [1],
  )
]

---

=== Truth tables Task

#v(5mm)
In this task, you will work with a circuit that combines two logic gates. Examine the following circuit

#align(center)[
  #diagram(
    node-stroke: 1pt,
    edge-stroke: 1pt,
    
    // First row - AND gate
    node((0,0.5), [A], fill: colors.at(0)),
    node((0,-0.5), [B], fill: colors.at(0)),
    node((1.5,0), [AND], fill: colors.at(1)),
    
    edge((0,0.5), (1.5,0), "->"),
    edge((0,-0.5), (1.5,0), "->"),
    edge((1.5,0), (3,-0.75), "->"),
    // Second row - OR gate
    node((0,-1.5), [C], fill: colors.at(0)),
    node((3,-0.75), [OR], fill: colors.at(1)),
    node((5,-0.75), [Final], fill: colors.at(2)),
  

    edge((0,-1.5), (3,-0.75), "->"),

    // OR to Final

    edge((3,-0.75), (5,-0.75), "->"),
  )
]

---

Here is an incomplete truth table for this circuit

#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto),
    inset: 6pt,
    align: center,
    stroke: 1pt,
    fill: (x, y) => if y == 0 { colors.at(0).lighten(50%) } else { white },
    [*Input A*], [*Input B*], [*Input C*], [*Output from AND*], [*Final Output (OR)*],
    [0], [0], [0], [?], [?],
    [0], [0], [1], [?], [?],
    [0], [1], [0], [?], [?],
    [0], [1], [1], [?], [?],
    [1], [0], [0], [?], [?],
    [1], [0], [1], [?], [?],
    [1], [1], [0], [?], [?],
    [1], [1], [1], [?], [?],
  )
]

---

#v(10mm)

- *Step 1:* First fill in the "Output from AND" column based on the AND gate's truth table
- *Step 2:* Then determine the "Final Output" column based on the OR gate's truth table
- *Step 3:* Discuss with your partner: What logic function does this entire circuit implement?

#v(5mm)

*Challenge:* Can you think of a simpler way to achieve the same logical output using only one gate?

*/

== How Computer Memory Works

#speaker-note("Present how to read base-16 ")

Memory on a Computer is divided into *blocks* with an *address* (called *memory addresses*). The blocks are often numbed using *hexadecimal* (base-16), since this makes the long addresses more human friendly to read

#v(5mm)
// Memory visualization as a table
#align(center)[
  #table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    stroke: 1pt,
    fill: (x, y) => if x == 0 { colors.at(0).lighten(50%) } else { colors.at(1).lighten(60%) },
    [*Memory Address*], [*Content (1 byte)*],
    [0x00], [01101001],
    [0x01], [00110010],
    [0x02], [],
    [0x03], [11100101],
    [0x04], [NULL],
    [...], [...],

  )]

== Memory Concepts
- Memory is *addressable* - each location has a unique address
- Memory stores *data* as binary values (0s and 1s)
- Memory addresses are *changeable*. We can change the data stored in the address at any time during the program
- Programs access memory through *variables*, not directly through addresses 
  - Except in low level languages like COBOL, Machine Code, (and sometimes) C


== Memory Task

#feature("Task")[
  #set text(size: 0.90em)
  With a partner, work through this scenario (Javascript):

  ```js
  // Step 1: Create two variables
  let score = 10;
  let username = "player1";

  // Step 2: Change the values
  score = score + 5;
  username = "champion";
  ```

  1. Draw a simple memory table with address (numbered 1-3) and content columns (1 byte)
  2. Show where these variables are stored in memory
  3. Illustrate what happens when the values change
]

= Break

= Programming Basics

== Expressions and Statements
A programming language is a way for humans to instruct a machine to do something using *statements* and *expressions*.

These statements and expressions are ordered by a *syntax*, that clearly defines what is correct and what is not in the language.



---

=== Expressions
- Produce a value
- Can be assigned to variables
- Can be used as arguments to functions
- Examples:
  ```js
  5 + 3           // Produces 8
  "Hello" + name  // Produces a string of 'Hello (name)'
  x > 10          // Produces a boolean (true or false)
  ```

---

=== Statements
- Perform actions
- Do not produce values that can be assigned
- End with semicolons in many languages (incl. Javascript)
- Example:
  ```js
  let x = 10;  // Variable declaration - does not return anything!
  ```

---

=== Key Difference
#speaker-note("Remember to emphasize that they do not need to know whether they are writing an expression or an statement at all points while writing code. It i important to know that there is a difference, since this is part of the code lingo")
Expressions are like questions that get answered with a value. Expressions are evaluated to a value
Statements are like commands that make something happen. Statements do not evaluate to a value

---
*Example In JavaScript:* 
```js
// Statement that contains expressions
let shipping = 10;
let price = 5;
let quantity = 4;
let total = (price * quantity) + shipping;
//         └─────────┬─────────┘   └──┬──┘
//               expression      expression
//         └──────────────┬───────────────┘
//                    expression
// └─────────────────────┬─────────────────┘
//                    statement
```

---

== Programming language syntax
#block[
  #set text(size: 0.90em)

  A programming language has a *syntax* for how to structure expressions and statements into a valid program. This syntax contains:
  - A list of *keywords*, defining some basic operations
  - Some *data types* for storing data (More in PRO3)
    - These can be *primitive* and store only one piece of information (like an integer or a text-string)
    - Or *composite*, where they store more than one piece of information (such as an array, a list or a set)
  - Some *operators* defining some operations to utilize and change these data types (i.e. '+' as a operator for addition)
  - A way to declare *variables* and *functions* (More in PRO2) etc. using *identifiers* 
  - *Control structures* to control the execution of the program (More in PRO2) 
  - *Comments* to annotate the code with extra info
]

== Keywords
In all programming languages, some words are reserved words, with a specific meaning. Using these in a program invokes a specific sequence of operations, and denotes

#definition("keywords")[
  *Keywords* are a set of predefined words that serve a special function in a programming language, such as instantiating variables, starting loops and defining functions.
  ]


---
=== Most common keywords in JavaScript
#align(center)[
  #table(
    columns: (auto, auto),
    inset: 6pt,
    align: center,
    stroke: 1pt,
    fill: (x, y) => if y == 0 { colors.at(0).lighten(50%) } else { white },
    [*Keyword*], [*Meaning*],
    [let], [Declares a (block-scoped) variable],
    [const], [Declares a (block-scoped) constant],
    [var], [Declares a (function-scoped) variable],
    [function], [Defines a function],
    [return], [Returns a value from a function],
    [if], [Conditional statement, executes code if something is true],
    [else], [Alternative branch for if],
    [for], [Loop over a range or array],
    [while], [Loop while a condition is true],
    [break], [Exit a loop],
    [continue], [Skip to next loop iteration],
  )
]

---
```js
let a = 10
const b = 20

function addition(arg1, arg2){
  res = arg1 + arg2 + a + b
  return res
}

console.log(addition(10, 30))

```

*Question:* What does this code snippet print

== Data types
Data types define *how* the data stored at a specific memory location should be *intepreted* by the machine running the code.

Since all data on a machine is in binary, in order for us to represent other types of data, we as programers need to specify how the machine should see the data 

#include "../../shared/resources/data-type-diagram.typ"

#v(10mm)

#feature[Task][
  Do the 'Binary' task on Canvas if not done already 
]

---

...Except when we don't #emoji.face.smile.sweat

Javascript is a *Weakly Typed* language, meaning that the Javascript *Interpreter* infers what type of data we are working with at *run-time*.

Other compiled languages like C need to know the specific data-type of a variable at *compile time*

#definition("Run-time & Compile-time")[
  *Run-time* Referes to the time when the code is actually run on a machine. #linebreak()
  *Compile-time* Referes to the time when the code is compiled to e.g machine code.
]

---

#include "../../shared/resources/js-intepreter.typ"

---

Javascript is, because of this weak type system and a not very picky interpreter, very loose at what happens when we mix datatypes in our code #emoji.face.teeth

#block[
  #set text(size: 0.80em)
  ```js
  // Mixing data types in JavaScript
  let num = 5;
  let str = "10";

  // Adding a number and a string
  let result1 = num + str; // "510" (string concatenation)
  console.log(result1);

  // Subtracting a string from a number
  let result2 = num - str; // -5 (string converted to number)
  console.log(result2);

  // Adding a boolean to a number
  let result3 = num + true; // 6 (true is converted to 1)
  console.log(result3);
  ```
]

== Operators

#speaker-note("Demo these operations by comparing them to the basic operations we do on numbers addition, subtraction, etc.")

Having a load of data in memory is not very worthwhile unless we can do something with it. Therefore we define a number of *operation* that we can perform on that data

*Examples*
- We have 2 numbers, 10 and 20. We can add these to using the '+' symbol
  - 10 + 20 (= 30)
- We have 2 lists of names, listA and listB. We can con concatenate listA on ListB using the '+' symbol 
  - ListA + ListB (= ListAB)

You can see *operators* as special keywords, that change meaning based on what data they handle 

---

#definition("Basic Operations in JavaScript")[
  #set text(size: 0.90em)
  *Integers (Numbers):*
  #grid(
    align: (left, right),
    columns: (1fr, 1fr),
    row-gutter: 8pt,
    [Addition, subtraction (+ and -)], [ ],
    [Multiplication and division (\* and /)], [ ],
    [Modulo (%)], [returns the remainder after division],
    [Increment (++), Decrement (--)], [convenience operations for #sym.plus.minus 1],
    [Comparison (==, !=, <, >, <=, >=)], [returns True or False],
  )

  *Booleans (True and False):*
  #grid(
    columns: (auto, 1fr),
    row-gutter: 8pt,
    [Logical AND (&&)], [ ],
    [Logical OR (||)], [ ],
    [Logical NOT (!)], [ ],
    [Comparison (==, !=)], [],
  )
]

== Variables

When working with data in a program, we want to be able to save some specific data in a *variable* and reference it again. This can be done in the following ways in Javascript:

#block[
  #set text(size: 0.85em)
  ```js
  // Declaring a variable with let (can be changed)
  let score = 10;

  // Declaring a constant with const (cannot be changed)
  const maxScore = 100;

  // Declaring a variable with var (older style, function-scoped)
  var playerName = "Alice";

  // Changing the value of a variable
  score = score + 5; // score is now 15
  ```
]

#block[
  #set text(size: 0.85em)
  ```js
  // Variables can store different types of data
  let isGameOver = false; // Boolean
  let items = ["sword", "shield", "potion"]; // Array (list)
  ```
]

Variables when instantiated, belong to a specific *scope*. This means that they can only be referenced within that specific scope in the code.

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

---

#definition("Variables & Scope")[*Variables* refer to specific data in memory. They can be either static or changeable, and can hold all data #linebreak()
*Scope* A variable, when declared, enters a specific scope. It is only within this scope that this variable can be referred]

== Functions

Apart from using the build-in operations on data, we can also define our own *Functions* to do specific things. Functions are defined by their *name*, their *parameters* and they return some *output*

#block[
  #set text(size: 0.85em)
  ```js
  // This function takes two parameters: x and y
  // It returns their sum
  function add(x, y) {
    // x and y are parameters
    let result = x + y;
    return result; // return value
  }

  // Call the function and store the result
  let sum = add(5, 7); // sum will be 12
  console.log(sum); // prints 12
  ```
]

#align(horizon)[
  #definition("Functions in Programming")[*Functions* are defined sequences of operations that do something. They can take  some arguments and use them to do something, and/or they can have *side-effects* where they interact with something outside of the data they have been given (I.e. they print to the screen)]
]

= Example program designs

== Standalone program

== CLient-Server


= Intro to Javascript (Hands-On)
---
Magnus is going to demo a few JavaScript-scripts on the board. Go to this website:

https://mortenbonderup.github.io/jspad/ 

In order to follow along easily on your own machine



= Recap Quiz

== Quiz
Please login to canvas and find the recap quiz under todays module

the quiz contains 10 questions and is *not graded* - It does *not count towards your final grade at all*. It is there for 2 reasons:

#v(1.5mm)

+ In order for you guys to get familiar with the material as a preparation for the exam
+ For me to adjust the future modules if there are some subjects we should cover more in depth

#v(2mm)

Please use the next 10-15 minutes to complete the quiz.

== Preparation for next time

=== Finish the exercises for today
But please do not spend more than 2-3 hours on them

=== Get Setup in GitHub Classroom
Follow the following link and do the following:
- Sign in to your GitHub account
- Pick your name from the list of names 
- 


===