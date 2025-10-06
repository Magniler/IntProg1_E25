const users = [];

const form = document.getElementById('signup-form');
const errorMessage = document.getElementById('error-message');
const searchInput = document.getElementById('search');

form.addEventListener('submit', function getUserInfo(event){
  event.preventDefault(); // Prevents the page from getting reloaded by the submit call
  // First task: assign the proper values to these variables
  let name = ???
  let email = ??
  let age = ???
  validateForm(name, email, age)
});

searchInput.addEventListener('input', function() {

});


function renderUsers(filteredUsers = users) {

}

function validateForm(name, email, age) {
  //

}

function clearForm() {

}

function editUser(index) {

}
