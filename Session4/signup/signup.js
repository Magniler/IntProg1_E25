// signup.js starter file for the user signup project
// Your tasks:
// 1. Create a user object from form input
// 2. Store users in a collection (array)
// 3. Display users in the #user-list div
// 4. Add validation and feedback

const users = [];

const form = document.getElementById('signup-form');
const userList = document.getElementById('user-list');

form.addEventListener('submit', function(event) {
  event.preventDefault();
  // TODO: Get input values and create user object
  // TODO: Add user to users array
  // TODO: Update user list display
});

function renderUsers() {
  // TODO: Render users in userList div
}

// Optionally: Add more features, e.g. clear form, error messages, etc.
