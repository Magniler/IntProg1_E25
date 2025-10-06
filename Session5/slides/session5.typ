#import "@preview/touying:0.6.1": *
#import "../../shared/theme/theme.typ": *
#import "@preview/curryst:0.5.1" as curryst: rule
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#set page(width: auto, height: auto, margin: 5mm)
#let colors = (maroon, olive, eastern)
#set text(black, font: "New Computer Modern")
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
  //config-common(show-notes-on-second-screen: right, appendix: true),
  config-colors(
    primary: primary-color,
    secondary: secondary-color,
    tertiary: tertiary-color,
    neutral-darkest: text-color
  ),
  config-info(
    title: [PRO 5 - Teaching for the test],
    subtitle: [An introduction to programming with Javascript],
    author: [Magnus Lindholm Nielsen],
    date: datetime.today(),
    institution: [Business Academy Aarhus],
  ),
)

#set heading(numbering: "1.")

#title-slide()

= PRODAY 2 review 

== Yesterdays assignments

What did you think?

Did anybody do the 'hard' assignment?

How was the reading? Spend 5 minutes discussion in groups


== Mock exam discussion

Spend 5 minutes to discuss the following questions with the person next ot you:

- Where there any part of the mock exam you felt unprepared for?
- Was there any question you were unable to answer?
- Is there any topic you wish you had more resources on, based on the exam?

== Exam notes (From session 1)

Written exam with 3 parts: 
- Multiple choice (12-20 questions)
- Written questions (4-7 questions)
- Code section (4-7 questions)

Exam is done digitally in WiseFlow, and we are going to do a mock flow to ensure no nasty IT-problems happen (keep an eye on canvas)

In case of technical malfunctions/missing CPR-number, we can print the exam and you can do it on paper

It is *without any aids* (no internet, no AI, no paper notes)

= The Proper Exam

== What you need to know for the exam

You should be comfortable with the following topics and skills:

- Computer basics: What is a computer, binary and data representation.
- Programming basics: Syntax, keywords, #strike[statements vs. expressions], operators, and data types (`string`, `number`, `boolean`, `null`, `array`, `object`).
- Variables and scope: Declaring variables with `const`, and `let`, #strike[understanding scope]
- Control structures: 
  - Conditionals: `if`, `if...else`, `if...else if...else`,
  - Loops: `for`, `while`,#strike[`do...while`], `for...of`
- Functions: Defining and calling functions, parameters, return values, #strike[anonymous and arrow functions, function scope.]
- Arrays and objects: Creating, accessing, and modifying arrays and objects; looping through arrays; understanding key-value pairs.
- DOM manipulation: 
  - What is the DOM and why it matters
  - Selecting elements (`getElementById`, `getElementsByClassName`, `querySelector`, etc.)
  - Changing content and attributes (`textContent`, `innerHTML`, `setAttribute`)
  - Creating, appending, and removing elements
  - Handling events (`addEventListener`)
- Practical coding: Reading, understanding, and writing small pieces of JavaScript code (< 10 lines). Read code that manipulates the DOM.
- Debugging and problem-solving: Tracing code and understanding what is happening, predicting output, and #strike[fixing simple bugs].


== JavaScript Keywords You Should Know

#align(center)[
  #table(
    columns: (auto, 1fr),
    inset: 6pt,
    align: center,
    stroke: 1pt,
    fill: (x, y) => if y == 0 { tertiary-color.lighten(60%) } else { white },
    [*Keyword*], [*Meaning*],
    [`const`], [Declares a block-scoped constant],
    [`let`], [Declares a block-scoped variable],
    [`function`], [Defines a function],
    [`return`], [Returns a value from a function],
    [`if`], [Conditional statement, executes code if something is true],
    [`else`], [Alternative branch for if],
    [`for`], [Loop over a range or array],
    [`while`], [Loop while a condition is true],
    [`for...of`], [Loop over an array],
    [`true` / `false`], [Boolean values (Technically data types #emoji.face.nerd)],
    [`null`], [Represents intentional absence of value]
  )
]

#align(horizon)[You should know what each of the keywords on the last slide does and be able to recognize them in code. If you don't know what some of them do, find them on the slides or on Javascript.info and read up on them.]


== How to write more code

There are several websides that can help you be more comfortable reading and writing JavaScript code. MAGL recommends the following:

- #link("https://www.jschallenger.com/intermediate-javascript/")[JSchallenger] - a very nicely setup website, their basics Javascript course is free and interactive. If you are able to complete their basic javascript course, *you will be able to complete almost all coding questions on the exam*
- #link("https://www.codewars.com/kata/53af2b8861023f1d88000832/train/javascript")[CodeWars] - A 'gamefied' and challenge driven approach to learn programming. Most of their challenges are more advanced than this course, but they can for some be more fun.
- #link("https://www.executeprogram.com")[Execute Program] - 16 free lessons on Javascript. Is about the same as JSchallenger, but more text heavy and less generous

*Codecadamy*, *Udemy* and *Datacamp* might all have free introductory courses on Javascript that are a good introduction.

---

#v(10mm)

Of course, *the curricullum is the reading, the slides and the assignments*. The recourses on the previous slides are here to help you repeat and be comfortable with writing code, but they go beyond the curriculum sometimes. *This is not bad*, but if you use them to prepare for the exam, please be aware of this


== How to prepare for the exam

The best way to prepare for the exam is then:

- To write code (See last slide for resources)
- To study the assignments and try to complete them
- To read the assigned reading
- To study MAGL's slides (look for the 'defintion' blocks for important concepts!)

== A note on coding questions

#speaker-note("Give an example on how wrong a solution can be and still be correct.")

When i ask you guys to write code on the exam, it does not have to be perfect JavaScript. Even code with some mistakes, such as a missed ";" or "}" *can still get you full marks.*

Just as a few spelling errors does not ruin an assay, a few syntax errors does not ruin your code. *But i still have to be able to see that you understand the problem and try to implement a solution*

==


