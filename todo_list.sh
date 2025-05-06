#!/bin/bash

while true
do
	echo "=========================="
	echo "   To-Do List Manager"
	echo "=========================="
	echo "1. Display Tasks"
	echo "2. Add Task"
	echo "3. Delete Task"
	echo "4. Mark Task as Completed"
	echo "5. Exit"
	echo ""

	read -p "Choose an Option (1-5) to continue: " choice

	case $choice in
		1) 
			echo "You choose to display tasks" 
			# Check if tasks.txt is not empty
			if [ -s tasks.txt ]; then
				cat tasks.txt
			else
				echo "No tasks available. Please add some tasks first!"
			fi
		;;
		2)
			echo "You choose to add task"
			read -p "Enter Task Description: " desc
		 	read -p "Enter Priority of Task (High / Medium / Low): " priority
			read -p "Enter DueDate (format: YYYY-MM-DD): " date

			# Adding all tasks into another file
			touch tasks.txt
			echo "[ ] Task: $desc | Priority: $priority | DueDate: $date" >>tasks.txt
			echo "Task added successfully..." 
		;;
		3)
			echo "You choose to delete task" 
			# Listing The Tasks
			if [ -s tasks.txt ]; then
				nl tasks.txt
				# Enter line number to delete that task
				read -p "Enter the task number to delete: " task_num
				# using sed to delete that particular line
				sed -i "${task_num}d" tasks.txt
				echo "Task Deleted Successfully"
			else 
				echo "No tasks available. Please add some tasks first!"
			fi
		;;
		4)
			echo "You choose to Mark Task as Completed" 
			if [ -s tasks.txt ]; then
				nl tasks.txt
				read -p "Enter the task number to mark as completed: " task
				# use sed to replace [ ] with [ X ]
				sed -i "${task}s/\[ \]/\[X\]/" tasks.txt
			else
				echo "No tasks to mark as completed. First of all Add One"
			fi
		;;
		5)
			echo "Exiting....."
			break ;;
		*)
			echo "Invalid choice. Please enter 1-5" ;;
	esac
	
	echo ""
	read -p "Press Enter to continue..."
	clear
done
