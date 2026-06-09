# file-systems-simulation

AIM:-
Interactive File System Simulation and Management using shell Scripting in Ubuntu Linux. 

PROBLEM  STATEMENT:- 
Managing files efficiently is a core aspect of operating systems. Users often need to perform file operations like creation, deletion, reading, writing, backup and searching through command-line interfaces. However, beginners may find it challenging to remember and execute multiple shell commands manually.

OBJECTIVES:-
•	To develop a menu-driven shell script that simulates core file system operations such as file creation, deletion, copying, renaming and content manipulation in a user-friendly manner.
•	To implement an interactive terminal interface that takes dynamic input from users to perform operations.
•	To simulate a recycle bin mechanism by moving deleted files to a temporary hidden folder, allowing safe deletion and potential recovery.

THEORY:-
The file system is a fundamental component of any operating system. It organizes data in a structured and accessible manner. In Linux, the file system is hierarchical and starts from the root directory /. Every entity in Linux — files, directories, devices, even processes — is treated as a file.


A file system is the method and data structure an operating system uses to control how data is stored and retrieved. Without a file system, stored information would be one large block with no way to tell where one piece ends and another begins.

Functions of a File System:
1.	Data Storage & Organization: Arranges data into files and directories.
2.	Access Control: Determines who can read, write, or execute files.
3.	File Naming & Paths: Supports naming conventions and directory paths.
4.	File Manipulation: Enables file operations like create, read, write, move, rename, and delete.
5.	Metadata Handling: Stores file attributes like size, permissions, ownership, timestamps.

File System Simulation:
It means mimicking the behaviour of a real file system using custom logic (often via shell scripts or programs) without directly modifying the system's actual file structure. It provides a sandboxed environment to experiment with file operations safely.

Why Simulate a File System?
•	Educational tool for learning file system operations.
•	Experiment without risking system data.
•	Demonstrate file handling logic (e.g., deletion with a recycle bin).
•	Understand Linux shell commands and scripting.


Shell Scripting:
Shell scripting is the process of writing a series of commands in a file to be executed by the Unix/Linux shell — the command-line interpreter. In Ubuntu Linux, the default shell is Bash (Bourne Again Shell).
In this project, shell scripting is used to simulate and manage a virtual file system. Instead of interacting directly with the Linux root file system, the script creates and manages a controlled environment (like a folder named virtual fs/) where simulated file system operations are performed.


Importance of Shell Scripting in File system Simulation:

1.	Core Engine of the Simulation
Shell scripting serves as the core engine of the file system simulation. Every simulated action—whether it's creating a file, deleting it, or restoring it—is performed using Linux commands inside a shell script. Without shell scripting, the automation and interaction in a text-based environment would not be possible.
________________________________________
2.	 Mimics Real OS Behaviour
By using shell scripts, the simulation can closely mimic real-world file system operations:
•	touch and mkdir for creation
•	mv for renaming or moving
•	ls, find for listing and searching
•	rm or a custom deletion command for safe deletions (via a recycle bin)
________________________________________
3.	 Automation of File Operations
Shell scripts automate the management of the virtual file system:
•	No need to manually type commands each time
•	A user-friendly menu interface can guide operations
•	Eliminates human error during file operations
•	Allows batch processing of files (e.g., delete multiple files at once)
________________________________________
4.	 Interactive User Interface in CLI
Using conditional statements, loops, and functions, the script can provide a menu-driven interactive experience. Users can:
•	Select options from a list
•	Enter file names
•	Get instant feedback (success/failure messages)
________________________________________
5.	 Safety Through Controlled Simulation
Shell scripting allows the file system simulation to be sandboxed — isolated in a controlled environment like ./virtual_fs/. This ensures:
•	Real system files are never touched
•	Users can safely test operations like deletion or restore
•	Mistakes do not cause system damage
________________________________________
6.	 Lightweight and Built-In
Shell scripting requires no external software or compilers:
•	It runs natively on Ubuntu
•	Scripts are simple .sh files
•	Portable and easy to edit with any text editor
