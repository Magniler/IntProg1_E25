# Session 4 Worksheet: Signup Page Project

Welcome to Session 4! Today you'll build a simple user signup page and use JavaScript objects and arrays to store and manage user data. This worksheet contains only the tasks related to the signup page project.

---

## JavaScript Tasks (signup.js)

### Task 1: Create a User Object

#### 1.1 Get Form Input Values

- Select the form and its input fields for name, email, and age using `document.querySelector` or `getElementById`.
- When the form is submitted, prevent the default page reload using `event.preventDefault()`.
- Read the values from the input fields.

#### 1.2 Create the User Object

- Use the input values to create a new user object with `name`, `email`, and `age` properties.
- Log the user object to the console to check your work.

---

### Task 2: Store Users in an Array

#### 2.1 Create the Users Array

- At the top of your script, create an empty array called `users`.

#### 2.2 Add New User to Array

- When a new user object is created, add it to the `users` array using `push()`.

#### 2.3 Display Users in the List

- Select the `#user-list` div.
- Write a function to display all users in the array as a list inside `#user-list`.
- Call this function every time the array changes.

---

### Task 3: Remove a User

#### 3.1 Add Remove Button

- For each user displayed, add a "Remove" button next to their details.

#### 3.2 Remove User from Array

- When the button is clicked, find the user's index in the array (use `findIndex`).
- Remove the user from the array using `splice()`.
- Update the display.

---

### Task 4: Search for a User

#### 4.1 Add Search Input

- Add a search input field above the user list in your HTML.
- Select the input in your JS.

#### 4.2 Filter Users

- On every input change, filter the `users` array to only include users whose name or email matches the search text (use `filter`).
- Display the filtered list.

---

### Task 5: Update User Details

#### 5.1 Add Edit Button

- For each user displayed, add an "Edit" button next to their details.

#### 5.2 Edit User Details

- When clicked, show the user's details in the form inputs for editing.
- On form submit, update the user object in the array with the new values.
- Update the display.

---

## References & Hints

- Use array methods like `push`, `filter`, and `findIndex`.
- Use `innerHTML` to update the user list display.
- Ask for help if you get stuck!

---

*End of worksheet. Save your code and be ready to discuss your solutions in class!*
