# Counter Project DOM Worksheet

In this worksheet, you will complete your own interactive counter using JavaScript and the DOM. Each task below matches a DOM method presented in the slides and used in the `counter.js` example. As you work through the presentation, implement each method in your unfinished counter code for hands-on practice.

---

## Task 1: `getElementById`

Select the counter display and each button (increment, decrement, reset) from your HTML using `document.getElementById`. Store these references in variables for later use.

**Reference:** See slide "DOM methods: .getElementById"
**Hint:** Use `document.getElementById('counter-display')` to select the counter display. Do the same for each button.

---

## Task 2: `textContent` and `innerHTML`

Update the displayed value of the counter by setting the `.textContent` property of the counter display element whenever the value changes. Try using `.innerHTML` to add formatting, such as making the number bold.

**Reference:** See slide "DOM methods: .innerHTML and .textContent"
**Hint:** Use `.textContent` to update the counter display. Try `.innerHTML` to add formatting, e.g. `<b>number</b>`.

---

## Task 3: `addEventListener`

Add event listeners to the increment, decrement, and reset buttons using `.addEventListener`. Make the counter increase, decrease, or reset when the buttons are clicked.

**Reference:** See slide "DOM Events and Event Handling"
**Hint:** Use `.addEventListener('click', ...)` on each button to change the counter value.

---

## Task 4: `createElement`

Add a new button to your counter dynamically using `document.createElement`. For example, create a "Double" button that doubles the counter value when clicked.

**Reference:** See slide "DOM methods: .createElement"
**Hint:** Use `document.createElement('button')` to make a new button, then set its text and add it to the page.

---

## Task 5: `setAttribute`

Change or add an attribute to one of your buttons or the counter display using `.setAttribute`. For example, set a custom data attribute or change the button's style.

**Reference:** See slide "DOM methods: .setAttribute"
**Hint:** Use `.setAttribute('data-action', 'double')` or change a button's style with `.setAttribute('style', 'color: red;')`.

---

## Task 6: Manipulating Styles

Change the color of the counter display based on its value (e.g., red if negative, black if positive) by updating the `style` property.

**Reference:** See slide "Manipulating DOM Styles and Classes"
**Hint:** Use `counterDisplay.style.color = 'red'` if the value is negative, otherwise set it to black.

---

## Task 7: `getElementsByClassName` and `querySelectorAll`

Give all buttons a class (e.g. `counter-btn`). Use `getElementsByClassName('counter-btn')` or `document.querySelectorAll('.counter-btn')` to select them all and add a style or event.

**Reference:** See slides "DOM methods: .getElementsByClassName" and ".querySelectorAll"
**Hint:** Give all buttons a class (e.g. `counter-btn`). Use `getElementsByClassName('counter-btn')` or `document.querySelectorAll('.counter-btn')` to select them all and add a style or event.

---

## Task 8: `getElementsByTagName` and `querySelector`

Use `getElementsByTagName('button')` to select all buttons and disable them if the counter is negative. Use `querySelector('#reset-btn')` to select the reset button and update its properties.

**Reference:** See slides "DOM methods: .getElementsByTagName" and ".querySelector"
**Hint:** Use `getElementsByTagName('button')` to select all buttons and disable them if the counter is negative. Use `querySelector('#reset-btn')` to select the reset button and update its properties.

---

Work through each task as you follow the presentation. Test your code in the browser and ask for help if you get stuck!

## Counter project unused methods

The following DOM methods are presented in the slides but are not directly implemented in the counter example. You can explore these for further learning or as bonus tasks:

- `appendChild`: Adds a node as the last child of a parent element (used in createElement, but not as a separate task).
- `removeChild`: Removes a child node from a parent element.

Feel free to try using these methods in your counter project or ask for examples in class.
