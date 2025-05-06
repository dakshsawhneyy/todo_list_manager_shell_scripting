# To-Do List Manager

A simple To-Do List Manager built using **Shell Scripting**. This project allows you to create, display, delete, and mark tasks as completed through a simple terminal-based interface.

## Features

- **Display Tasks**: Shows all tasks with details (Task description, Priority, Due date).
- **Add Tasks**: Allows you to add a task with description, priority, and due date.
- **Delete Tasks**: Allows you to delete tasks by selecting their number from the list.
- **Mark Task as Completed**: Allows you to mark tasks as completed.
- **Persistent Storage**: Tasks are saved to a `tasks.txt` file for persistence between sessions.

## Requirements

- **Bash** (or any shell that supports basic shell scripting)
- **Basic UNIX tools** like `sed`, `nl`, `grep`, and `echo`.

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/dakshsawhneyy/todo_list_manager_shell_scripting.git
   cd todo_list_manager_shell_scripting

Make the script executable:
```bash
chmod +x todo_list.sh
```

Run the script:
```bash
./todo_list.sh
```

Follow the prompts to interact with your To-Do List Manager.

### Script Breakdown 

#### Display Tasks:
Lists all tasks in the tasks.txt file.
If the file is empty, it asks you to add tasks first.

#### Add Task:
Prompts for the task description, priority (High, Medium, Low), and due date.
The task is saved to tasks.txt.

#### Delete Task:
Lists all tasks with line numbers.
Prompts to delete a task by selecting its line number.

#### Mark Task as Completed:
Lists tasks with numbers.
Allows you to mark a task as completed, which updates [ ] to [X] in tasks.txt.

#### File Structure
todo_list.sh: The main shell script for managing the to-do list.
tasks.txt: The file where tasks are stored. (Automatically created when you add a task.)

#### Customization
You can modify the script to change the way tasks are stored or display additional information.
Add additional features like editing tasks or sorting tasks based on due date or priority.
