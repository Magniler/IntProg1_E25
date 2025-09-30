// Counter Example JS
// This file references slides in session3.typ for teaching DOM concepts

// Slide: DOM methods: `.getElementById`
const counterValue = document.getElementById('counter-value');
const incrementBtn = document.getElementById('increment-btn');
const decrementBtn = document.getElementById('decrement-btn');
const boldBtn = document.getElementById('bold-button')
const resetBtn = document.querySelector('.reset-btn'); // Query selector instead of getElementById
const btns = document.querySelectorAll('.counter-btn');

// add hover effect to buttons
btns.forEach(btn => {
  btn.addEventListener('mouseover', () => btn.style.border = '2px solid red');
});

// Slide: DOM methods: `.textContent`
let count = 0;
function updateDisplay() {
  counterValue.textContent = count;
}

// Slide: DOM Events and Event Handling
incrementBtn.addEventListener('click', function() {
  count++;
  updateDisplayAndColor();
});

boldBtn.addEventListener('click', function() {
    counterDisplay.innerHTML = `<b>${counter}</b>`;
    // TODO add capability to turn of the bold text again
});


decrementBtn.addEventListener('click', function() {
  count--;
  updateDisplayAndColor();
});

resetBtn.addEventListener('click', function() {
  count = 0;
  updateDisplayAndColor();
});

// Initial display
updateDisplay();

// Slide: Manipulating DOM Styles and Classes
// Example: Change color if negative
function updateColor() {
  if (count < 0) {
    counterValue.style.color = '#c00';
  } else {
    counterValue.style.color = '#333';
  }
}

// Update color whenever display changes
function updateDisplayAndColor() {
  updateDisplay();
  updateColor();
}

// Turns of all buttons when the counter reaches 12
// TODO this needs to have a way to turn back on

for (let btn of btns) {
  btn.disabled = (counter < 11);
}

// Initial color update
updateColor();
