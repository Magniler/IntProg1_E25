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
  config-common(show-notes-on-second-screen: right, appendix: true),
  config-colors(
    primary: primary-color,
    secondary: secondary-color,
    tertiary: tertiary-color,
    neutral-darkest: text-color
  ),
  config-info(
    title: [PRO 3 - Introduction to the JavasCript DOM],
    subtitle: [An introduction to programming with Javascript],
    author: [Magnus Lindholm Nielsen],
    date: datetime.today(),
    institution: [Business Academy Aarhus],
  ),
)

#set heading(numbering: "1.")

#title-slide()

= What have you learned soo far?
---

#align(horizon)[
  #block()[
- Basics of computer programming

- Basics intro to Javascript

- Followed along when Magnus Programmed

- Tried to build a half-done TODO-app
]
]



= What are we going ot do this week?
---

#align(horizon)[
  #block()[
- Monday (today): Combining Javascript and HTML through the DOM

- Tuesday: Reading + Independent work on JavaScript Project

- Wednesday: Focusing on more DOM work and also introduction to advanced datatypes (Maybe Mock Exam)

- Thursday: Reading + Independent work on JavaScript Project

- Friday: DOM Work || Programming Paradigmes (Maybe Mock Exam, Subject to Change)
  ]
]

= Intro to the DOM

== What is the DOM in JavaScript?
// Should include a visual model of the DOM, maybe as a tree
// should also include a practical example of some HTML rendered as a DOM tree

The *Document Object Model* (A.K.A. the DOM) is a *High-level* *abstraction* of a HTML document in Javascript

The *DOM* allows us to interact with HTML documents through Javascript and *change the HTML with JavaScript*

This is essentially what makes websites dynamic and responsive. HTML and CSS in itself is (mostly) static and unchanging, soo JavaScript allows us to adapt the HTML based on *hardware, user input, server output, etc*

---

#align(horizon)[#definition("Abstractions")[Abstractions in computer programming are concepts allows us to work with other parts of the software/code/etc. without worrying about the details. We *Abstract away* all non-essential details to focus on what matters.]]

== DOM Concept: The tree structure
The DOM represents your HTML document as a tree structure, where each element is a node connected to its parent and children. This makes it easy to navigate and manipulate different parts of the page.

*Tree-structures* are fundemental data types in Computer Science, and have the following properties:
- They are *Hierarchical* - Meaning the the data is organized at different levels
- they are *Linked* - Meaning that the different parts of the data are directly connected to other parts of the data

(More on datatypes next session)

#table(
  columns: 2,
  stroke: 0pt,
  [
    ```html
    <html>
      <head>
        <title>My Page</title>
      </head>
      <body>
        <ul>
          <li>Item 1</li>
          <li>Item 2</li>
        </ul>
      </body>
    </html>
    ```],
    [#include("../../shared/resources/dom-tree-diagram.typ")]
)



---
== Traversing the DOM (parent, child, sibling relationships)

#v(20mm)

The DOM tree allows you to move between elements using parent, child, and sibling relationships. You can use JavaScript to access these relationships and change the structure or content of your page.

*Key relationships:*
- `parentNode`: Get the parent of an element
- `children`: Get all child elements
- `nextSibling` / `previousSibling`: Move between siblings

---

#v(20mm)

#speaker-note("Draw a tree on the board to referene with these methods")

*Example:*
```js
let ul = document.querySelector('ul');
let firstLi = ul.children[0]; // First child
let parent = firstLi.parentNode; // Parent node (<ul>)
let next = firstLi.nextSibling; // Next sibling (could be a text node or <li>)
```

/* ---
#align(horizon)[#feature[Task][Select the counter display and each button (increment, decrement, reset) from your HTML using `document.getElementById`. Store these references in variables for later use.\n\nReference: See slide "DOM methods: .getElementById"\nHint: Use `document.getElementById('counter-display')` to select the counter display. Do the same for each button.]] */

== DOM Events and Event Handling
Events are actions that happen in the browser, like *clicks*, *typing*, or *loading the page*. You can use JavaScript to listen for these events using the `addEventListener()` (example later on) method and run code when they happen, making your page interactive.

*Common events:*
- `click`: When an element is clicked
- `input`: When a user types in a field
- `DOMContentLoaded`: When the page is ready

---


*Example:*
```html
/*html/*
<button id="my-btn">Click me!</button>
```

```js
// JavaScript
let button = document.getElementById('my-btn');
button.addEventListener('click', function() {
  alert('Button was clicked!');
});
```

= DOM methods

== Methods vs. Functions

#align(horizon)[#definition("Methods & Functions")[
  *Functions* can be defined *anywhere* in the code and be called withing the same *scope* it is defined.

  *Methods* are functions that are attached to a specific *object*. When calling these functions we need to *reference the object* and call the function on this object. We use *Dot-notation* (a ".") to call a methods
  ]
]

---

```js
let id = "some-div";
document.getElementById(id); // <- This is calling a method on an object

function doSomething(a) {
  res = 0
  b = 0 
  while (b < a) {
    res = res + b
  };
  return res;
};

doSomething(10) // <- This is calling a defined function 

```

== How to call a method on the DOM

When we write JavaScript to be used on a HTML document, we can reference an always instatiated object called `documnet`. This `document` object in our code is the *DOM*

#speaker-note("Show them how the DOM is instantiated in the todo.js project")




== Intro to essential DOM Methods

---
=== DOM methods: `.getElementById`
*Description*: This method finds a single element in your HTML by its unique *ID*. IDs are used to identify elements that should be unique on the page, like a specific button or section. You can use this method to quickly access and change the content or style of that element.

*Method Signature*: `document.getElementById(id)`

Returns the element with the given ID, or `null` if not found.

#speaker-note("Switch to counter-example/counter.js and show how we use getElementById to select the counter display and buttons. Demo increment and decrement button setup.")
---
*Example:*
```html
// HTML (before):
<div id="greeting">Hello!</div>
// HTML (after):
<div id="greeting">Hi there!</div>
```
```js
// JavaScript:
let el = document.getElementById("greeting");
el.textContent = "Hi there!";
```

---
#align(horizon)[#feature[Task][Use `document.getElementById('counter-display')` to select the counter display and save it to a variable using `let`. Do the same for each button.]]

---

#align(horizon)[#feature[Task][Add event listeners to the increment, decrement, and reset buttons using `.addEventListener`. Define empty functions to be called, we will add the function features later.

Hint: Use `.addEventListener('click', ...)` on each button to change the counter value.]]

---

=== DOM methods: `.getElementsByClassName`

*Description*: This method finds all elements that share the same class name. Classes are used to group elements that should look or behave the same, like all notes or all buttons. The result is a list of elements, so you can loop through them and change each one if you want.

*Method Signature*: `document.getElementsByClassName(className)`

Returns a `HTMLCollection` of matching elements.

#speaker-note("Show how you could use getElementsByClassName in counter-example/counter.js to select multiple buttons if needed. Demo how to loop through them if you add more controls.")

---

*Example:*
```html
// HTML (before):
<p class="note">Note 1</p>
<p class="note">Note 2</p>
// HTML (after):
<p class="note">Updated Note 1</p>
<p class="note">Note 2</p>
```
```js
// JavaScript:
let notes = document.getElementsByClassName("note");
notes[0].textContent = "Updated Note 1";
```

---

#align(horizon)[#feature[Task][Give all buttons the same class (e.g. `counter-btn`). Use `getElementsByClassName('counter-btn')` or `document.querySelectorAll('.counter-btn')` to select them all and save them into a new variable called `btns`]]


---
=== DOM methods: `.getElementsByTagName`
*Description*: This method finds all elements with a certain tag name, like all `<li>` items in a list or all `<div>` sections. It's useful when you want to do something to every element of a certain type, such as changing all list items.

*Method Signature*: `document.getElementsByTagName(tagName)`

Returns a `HTMLCollection` of matching elements.

#speaker-note("Mention how you could use getElementsByTagName in counter-example/counter.js if you had multiple counters or wanted to style all buttons.")
---
*Example:*
```html
// HTML (before):
<li>Item 1</li>
<li>Item 2</li>
// HTML (after):
<li>Item 1</li>
<li>Changed Item 2</li>
```
```js
// JavaScript:
let items = document.getElementsByTagName("li");
items[1].textContent = "Changed Item 2";
```

---

#align(horizon)[#feature[Task][Use `.addEventListener('click', ...)` on the increment and decrement buttons to add 1 or remove 1 from the counter value.]]

---
=== DOM methods: `.querySelector`
*Description*: This method finds the first element that matches a CSS selector, like a class, ID, or tag. It's very flexible and lets you select elements in the same way you style them with CSS. You can use it to quickly grab one element and change it.

*Method Signature*: `document.querySelector(selector)`

Returns the first matching element, or `null` if not found.

#speaker-note("Demo using querySelector in counter-example/counter.js to select the counter display or a button with a CSS selector. Show how you can use it for more complex selections.")
---
*Example:*
```html
// HTML (before):
<span class="highlight">Text</span>
// HTML (after):
<span class="highlight" style="color: red;">Text</span>
```
```js
// JavaScript:
let span = document.querySelector(".highlight");
span.style.color = "red";
```

---


#align(horizon)[#feature[Task][Give some buttons an additional class such as `highlight` or `bold`and use `getElementsByTagName('button')` to select all buttons with this new class. Save this to a new variable]]

---

=== DOM methods: `.querySelectorAll`
*Description*: This method finds all elements that match a CSS selector, like all items with a certain class or tag. It gives you a list of elements, so you can loop through and change each one. It's great for working with groups of elements at once.

*Method Signature*: `document.querySelectorAll(selector)`

Returns a static `NodeList` of matching elements.

#speaker-note("Show how you could use querySelectorAll in counter-example/counter.js to select all buttons or all displays if you expand the project.")

---

*Example:*
```html
// HTML (before):
<li class="task">A</li>
<li class="task">B</li>
// HTML (after):
<li class="task">A done</li>
<li class="task">B done</li>
```
```js
let tasks = document.querySelectorAll(".task");
tasks.forEach(t => t.textContent += " done");
```

---
=== DOM methods: `.createElement`
*Description*: This method creates a brand new element, like a new `<li>` for a list or a new `<button>`. You can set its content and attributes, then add it to your page. It's useful when you want to build new parts of your page with JavaScript.

*Method Signature*: `document.createElement(tagName)`

Returns the newly created element.

#speaker-note("Show how you could use createElement in counter-example/counter.js to dynamically add new buttons or displays. Demo adding a reset button if time allows.")

---

*Example:*
#v(30mm)
```html
// HTML (before):
<ul id="list"></ul>
// HTML (after):
<ul id="list"><li>New item</li></ul>
```
```js
let li = document.createElement("li");
li.textContent = "New item";
document.getElementById("list").appendChild(li);
```

---

#align(horizon)[#feature[Task][Add a new button to your counter dynamically using `document.createElement`. For example, create a "Double" button that doubles the counter value when clicked.]]

---

=== DOM methods: `.appendChild`
Use: This method adds an element as the last child of another element. For example, you can add a new <p> to a <div>. It's a common way to insert new content into your page.
Signature: parent.appendChild(child)
Common for inserting new elements into the DOM.

#speaker-note("Demo appendChild in counter-example/counter.js if you add a new button or display dynamically. Show how it attaches elements to the DOM.")
---
*Example:*
```html
// HTML (before):
<div id="container"></div>
// HTML (after):
<div id="container"><p>Hello!</p></div>
```
```js
let p = document.createElement("p");
p.textContent = "Hello!";
document.getElementById("container").appendChild(p);
```

=== DOM methods: `.removeChild`
Use: This method removes a child element from its parent. If you want to delete something from your page, like a list item, you can use this method to take it out of the DOM.
Signature: parent.removeChild(child)
Used for deleting elements from the DOM.

#speaker-note("Show how you could use removeChild in counter-example/counter.js to remove a button or display if you add a delete feature.")

*Example:*
```html
// HTML (before):
<ul id="list"><li id="item">Delete me</li></ul>
// HTML (after):
<ul id="list"></ul>
```
```js
let item = document.getElementById("item");
item.parentNode.removeChild(item);
```

---
=== DOM methods: `.setAttribute`
*Description*: This method lets you change or add an attribute on an element, like setting the `src` of an image or the `href` of a link. It's useful for updating how elements behave or look.

*Method Signature*: `element.setAttribute(name, value)`

Sets the value of the specified attribute on the element.

#speaker-note("Demo setAttribute in counter-example/counter.js by changing a button's style or adding a data attribute to the counter display.")
---
*Example:*
```html
// HTML (before):
<img id="logo" src="old.png">
// HTML (after):
<img id="logo" src="new.png">
```
```js
document.getElementById("logo").setAttribute("src", "new.png");
```

---

#align(horizon)[#feature[Task][Change or add an attribute to one of your buttons or the counter display using `.setAttribute`. For example, set a custom data attribute or change the button's style.\n
Hint: Use `.setAttribute('data-action', 'double')` or change a button's style with `.setAttribute('style', 'color: red;')`.]]

---

=== DOM methods: `.innerHTML` and `.textContent`
*Description*: These properties let you get or set the content inside an element. `innerHTML` lets you use HTML tags, while `textContent` is just for plain text. Use them to change what your users see on the page.

*Method Signature*: `element.innerHTML` / `element.textContent`

`innerHTML` gets/sets HTML markup, `textContent` gets/sets plain text.

#speaker-note("Demo innerHTML and textContent in counter-example/counter.js by updating the counter display value. Show the difference between setting HTML and plain text.")

---

*Example:*
```html
// HTML (before):
<div id="msg"></div>
// HTML (after):
<div id="msg">Just text</div>
```

```js
document.getElementById("msg").innerHTML = "<b>Bold!</b>";
document.getElementById("msg").textContent = "Just text";
```

---

#align(horizon)[#feature[Task][Change the color of the counter display based on its value (e.g., red if negative, black if positive) by updating the `style` property.\n
Hint: Use `counterDisplay.style.color = 'red'` if the value is negative, otherwise set it to black.]]

== Creating and Removing DOM Elements
You can use JavaScript to create new elements and add them to the page, or remove elements you no longer need. This is how you make your page dynamic and responsive to user actions.

*Creating an element:*
```js
let newDiv = document.createElement('div');
newDiv.textContent = 'Hello!';
document.body.appendChild(newDiv);
```

*Removing an element:*
```js
let oldDiv = document.getElementById('remove-me');
oldDiv.parentNode.removeChild(oldDiv);
```

---
#align(horizon)[#feature[Task][Use `getElementsByTagName('button')` to select all buttons and disable them if the counter is negative, except for the `reset` button. Remember to define an `eventListener` for this

Update the `reset` of the buttons code to also enable all buttons again if they are disabled.]]

= Tomorrows task
---
#align(horizon + center)[#emoji.face.smile.sweat]
