Project Report:
Required Features (Linux Terminal-Based OS Simulator):
1.	Boot Process
o	Display OS name with a sleep-based loading screen.
2.	User Input for Hardware Specs
o	Prompt user to enter:
	RAM size
	Hard Drive size
	Number of CPU cores
3.	Task System
o	Minimum 15 tasks, such as:
	Notepad (auto-save to file)
	Calculator
	Clock (auto-start)
	File creation/move/copy/delete/info
	Mini-game (like a CLI-based minesweeper)
	Music (simulate with beep or background sleep)
	Print a file
	Download simulation
	System monitor
o	Each task must:
	Be run as a separate process (e.g., via exec or fork + exec)
	Be allocated resources (RAM, HDD)
	Communicate back to parent process
	Terminate if resources not available
	Have individual terminal window or terminal-based separation
4.	Task Management
o	Allow:
	Minimize
	Close
	Switch between tasks
o	Multitasking via Ready Queue and Core Management
o	Simulated interrupts (pause/resume)
5.	Scheduling
o	Implement:
	Multilevel Queue Scheduling
	Each level with a different algorithm (FCFS, Round Robin, Priority, etc.)
	Semaphores, Condition Variables, and Mutual Exclusion
6.	User and Kernel Modes
o	Kernel mode should allow:
	Deleting/running/stopping processes
o	User mode limited to interaction and launching
7.	Storage Handling
o	File I/O for Notepad, Print, File Management must write/read from actual files on disk
8.	Shutdown Handling
o	Shut down OS gracefully, closing tasks, freeing memory, and displaying goodbye message.


Project Folder Structure:
my_os_sim/
├── boot.sh                # Starts the OS (main entry)
├── init.sh                # Handles hardware init
├── clock.sh               # Auto-start task
├── tasks/                 # Folder for all 15 task scripts
│   ├── notepad.sh
│   ├── calculator.sh
│   └── ... (others)
├── ram.txt                # Simulated RAM usage
├── hdd.txt                # Simulated Hard Drive usage
├── ready_queue.txt        # Queue for tasks
├── logs/                  # Folder for logs
└── shutdown.sh            # Graceful shutdown




