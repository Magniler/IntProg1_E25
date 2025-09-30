document.addEventListener('DOMContentLoaded', function() {
  // Get references to the DOM elements
  const form = document.getElementById('todo-form');
  const input = document.getElementById('todo-input');
  const list = document.getElementById('todo-list');
  const todoCount = document.getElementById('todo-count');
  const completedCount = document.getElementById('completed-count');
  
  // Create a button to clear completed tasks
  const clearBtn = document.createElement('button');
  clearBtn.textContent = 'Clear Completed';
  clearBtn.className = 'clear-btn';
  clearBtn.style.display = 'none'; // Initially hidden
  form.parentNode.insertBefore(clearBtn, list);

  // Add a button for toggling all complete
  const toggleAllBtn = document.createElement('button');
  toggleAllBtn.textContent = 'Toggle All Complete';
  toggleAllBtn.className = 'toggle-all-btn';
  form.parentNode.insertBefore(toggleAllBtn, list);

  // Event listener for the form submission
  form.addEventListener('submit', function(e) {
    e.preventDefault();
    const task = input.value.trim();
    if (task) {
      addTodo(task);
      input.value = '';
      updateClearButton();
      updateAllCounters();
    }
  });

  // Event listener for the clear button
  clearBtn.addEventListener('click', function() {
    clearCompleted();
    updateClearButton();
    updateAllCounters();
  });

  // Event listener for the toggle all button
  toggleAllBtn.addEventListener('click', function() {
    toggleAllComplete();
    updateClearButton();
    updateAllCounters();
  });

  /**
   * Adds a new todo item to the list
   * @param {string} task - The text of the todo item
   */
  function addTodo(task) {
    const li = document.createElement('li');
    const taskText = document.createElement('span');
    taskText.textContent = task;
    taskText.className = 'task-text';
    li.appendChild(taskText);
    const delBtn = document.createElement('button');
    delBtn.textContent = 'Delete';
    delBtn.className = 'delete-btn';
    li.appendChild(delBtn);
    list.appendChild(li);

    // Event: Mark as complete
    taskText.addEventListener('click', function() {
      markAsComplete(li);
      updateClearButton();
      updateAllCounters();
    });
    // Event: Delete
    delBtn.onclick = function() {
      list.removeChild(li);
      updateClearButton();
      updateAllCounters();
    };
    // Event: Edit
    taskText.ondblclick = function() {
      editTodo(li);
    };
  }

  /**
   * Marks a todo item as completed
   * @param {HTMLElement} todoItem - The todo item to mark as complete
   */
  function markAsComplete(todoItem) {
    todoItem.classList.toggle('completed');
  }

  /**
   * Edits the text of a todo item
   * @param {HTMLElement} todoItem - The todo item to edit
   */
  function editTodo(todoItem) {
    // Find the span containing the task text
    const taskText = todoItem.querySelector('.task-text');
    if (!taskText) return;
    // Create an input field
    const input = document.createElement('input');
    input.type = 'text';
    input.value = taskText.textContent;
    todoItem.replaceChild(input, taskText);
    input.focus();
    // Save changes on Enter or blur
    function saveEdit() {
      if (input.value.trim()) {
        taskText.textContent = input.value.trim();
      }
      todoItem.replaceChild(taskText, input);
    }
    input.addEventListener('keydown', function(e) {
      if (e.key === 'Enter') {
        saveEdit();
      }
    });
    input.addEventListener('blur', saveEdit);
  }

  /**
   * Toggles all todos as completed or not completed
   */
  function toggleAllComplete() {
    const items = list.querySelectorAll('li');
    let allCompleted = true;
    items.forEach(function(item) {
      if (!item.classList.contains('completed')) {
        allCompleted = false;
      }
    });
    items.forEach(function(item) {
      if (allCompleted) {
        item.classList.remove('completed');
      } else {
        item.classList.add('completed');
      }
    });
    updateClearButton();
    updateAllCounters();
  }

  /**
   * Removes all completed tasks from the list
   */
  function clearCompleted() {
    const completedItems = list.querySelectorAll('.completed');
    completedItems.forEach(function(item) {
      list.removeChild(item);
    });
  }

  /**
   * Updates the visibility of the clear button
   * Shows the button if there are completed tasks, hides it otherwise
   */
  function updateClearButton() {
    const completedItems = list.querySelectorAll('.completed');
    clearBtn.style.display = completedItems.length > 0 ? 'block' : 'none';
  }

  /**
   * Updates all counters (todo count, completed count, no todos message)
   */
  function updateAllCounters() {
    updateTodoCount();
    updateCompletedCount();
    updateNoTodosMessage();
  }

  /**
   * Updates the todo count
   */
  function updateTodoCount() {
    const count = list.querySelectorAll('li').length;
    todoCount.textContent = 'Todos: ' + count;
  }

  /**
   * Updates the completed count
   */
  function updateCompletedCount() {
    const count = list.querySelectorAll('.completed').length;
    completedCount.textContent = 'Completed: ' + count;
  }

  /**
   * Updates the no todos message
   */
  function updateNoTodosMessage() {
    const count = list.querySelectorAll('li').length;
    if (count === 0) {
      todoCount.textContent = 'No todos left!';
    }
  }
});
