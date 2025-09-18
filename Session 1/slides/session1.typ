#import "@preview/touying:0.6.1": *
#import "./theme/theme.typ": *
#import "@preview/curryst:0.5.1" as curryst: rule
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#set page(width: auto, height: auto, margin: 5mm, fill: rgb(245, 241, 230))
#let colors = (maroon, olive, eastern)
#set text(black, font: "New Computer Modern")

#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

#show: university-theme.with(
  config-colors(
    primary: primary-color,
    secondary: secondary-color,
    tertiary: tertiary-color,
    neutral-darkest: text-color
  ),
  config-info(
    title: [PRO 1 - Introduction to computers and Programming],
    subtitle: [An introduction to programming with Javascript],
    author: [Magnus Lindholm Nielsen],
    date: datetime.today(),
    institution: [Business Academy Aarhus],
  ),
)

#set heading(numbering: "1.")

#title-slide()

= About Magnus

== Magnus Lindholm Nielsen
Recently finished Masters in History with Computer Science Elective

Has worked at Aarhus University, Aarhus city archives and Danske Commodities during my studies

Primarily worked with Python, but has worked in Java, Scala, *Javascript*, Go and C during my studies

Lives in Aarhus with my girlfriend, who is approx. 8 months pregnant

Will be your Lecturer for PRO1 (this semester) and maybe PRO2 (next semester)

= About the course

== Plan

- 5 classroom sessions with Magnus
- 5 PRO days with individual/group work (tasks given by Magnus)
- 1 Q&A + Exam


== Course Schedule (updated 16.09.2025)


#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  align: center + horizon,
  stroke: none,
  row-gutter: 2pt, // Reduced space between rows
  fill: (x, y) => if y == 0 { colors.at(0).lighten(30%) } 
                   else if calc.odd(y) { rgb(245, 241, 230) } 
                   else { white },
  table.header[*Date (Week)*][*Who's in charge?*][*Subject of the day*],
  
  [WED 24/9 (39)], [Magnus], [PRO 1 - Intro to computer basics and programming basics],
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
)


== The Book vs. The Classroom
The book we follow for this course is *Computer Programming for Absolute Beginners (2020)* by Joakim Waasberg

The book will serve as background to the work we will do in the classroom. The book introduces things at a *high-level*, where in the classroom we will try to implement and sketch out the concepts at a *lower-level*

The book uses pseudo-code to represent different algorithms, and we will to in the classroom. We will also try to implement some of the algorithms discussed in *Javascript*

= About the Exam

== Exam notes
Written exam with 3 parts: 
- Multiple choice 
- Written questions
- Code section

Exam is done digitally in WiseFlow, and we are going to do a mock exam (keep an eye on canvas)

In case of technical malfunctions/missing CPR-number, we can print the exam and you can do it on paper

== Practical info about the exam
*Subject to change, please check Canvas regularly in the days up to the exam!* 

Date: XX-XX \@9:00-10:00

Room: SomeRoom-location

= Computer Basics

== What is a computer?

With the student next to you, please discuss what an model of a computer looks like to you, informally. Feel free to draw models, write down schematics and such, but refrain from browsing the web

Afterwards, we will try to model a computer on the whiteboard together

== Basic computer model


#align(center + horizon)[#include "../../shared/resources/computer.typ"]

---

== The transistor
All parts of a computer are made op of *transistors*. These can either amplify or block an electronic signal. They have two states:
- On (1): Current runs through the transistor
- Off (0): The transistor blocks current

These two states correspond directly to the binary number system of 2 digits: 1 or 0

---

== Logic Gates

Logic gates are the building blocks of digital circuits and are made from transistors. By combining transistors in novel ways, we are able to make *logic gates*

== NOT Gate
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


== AND Gate
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

 

== OR Gate
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

== Truth tables Task

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
#set text(black, font: "New Computer Modern")

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


== How Computer Memory Works
Memory on a Computer is divided into *blocks* with an *address* (called *memory addresses*)

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
    [0x02], [NONE],
    [0x03], [11100101],
    [0x04], [NONE],
    [...], [...],

  )]

== Memory Concepts
- Memory is *addressable* - each location has a unique address
- Memory stores *data* as binary values (0s and 1s)
- Programs access memory through *variables*, not directly through addresses


== Memory Task

With a partner, work through this scenario (Javascript):

```js
// Step 1: Create two variables
let score = 10;
let username = "player1";

// Step 2: Change the values
score = score + 5;
username = "champion";
```

On paper:
1. Draw a simple memory table with address (numbered 1-3) and content columns (1 byte)
2. Show where these variables are stored in memory
3. Illustrate what happens when the values change

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
  let x = 10;                // Variable declaration - does not return anything!
  ```

---

=== Key Difference
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

A programming language has a *syntax* for how to structure expressions and statements into a valid program. This syntax contains:
- A list of *keywords*, defining some basic operations
- Some *data types* for storing data (More in PRO3)
  - These can be *primitive* and store only one piece of information (like an integer or a text-string)
  - Or *composite*, where they store more than one piece of information (such as an array, a list or a set)
- Some *operators* defining some operations to utilize and change these data types (i.e. '+' as a operator for addition)
---
- A way to declare *variables* and *functions* (More in PRO2) etc. using *identifiers* 
- *Control structures* to control the execution of the program (More in PRO2) 
- *Comments* to annotate the code with extra info


== Keywords
#align(horizon)[#definition("keywords")[
  *Keywords* are a set of predefined words that serve a special function in a programming language.
]]

== Data types

== Variables

== Functions

= Example program designs

== Standalone program

== CLient-Server


= Intro to Javascript (Hands-On)


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

=== VS code
If you do not have Visual Studio Code downloaded, please download it for the next time.

=== Setup Javascript

Follow the following guid ein order to setup Javascript: //TODO