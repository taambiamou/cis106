# Notes 4

## How to install and remove software using the APT command

The APT (Advanced Package Tool) command is used in Linux systems such as Ubuntu, Debian, or Kali Linux to install, update, and remove software. It helps manage all programs through the terminal instead of using a graphical software manager. Before installing or removing any software, it’s important to update the system so it knows about the latest packages. After that, you can install or remove programs easily and clean up the system to save space.

# Steps:
1. Update the package list:
sudo apt update
2. Upgrade installed packages:
sudo apt upgrade
3. Install a program:
sudo apt install package_name
Example:
sudo apt install firefox
4. Remove a program (keep settings):
sudo apt remove package_name
5. Remove a program and its settings:
sudo apt purge package_name
6. Remove unused packages:
sudo apt autoremove
7. Clear downloaded package files:
sudo apt clean
8. View details about a package:
apt show package_name

#### Notes:
* Always run sudo apt update before any installation.
* sudo apt autoremove helps delete extra files not needed anymore.
* sudo apt clean clears out the cache to free disk space.
* APT keeps the system organized, up-to-date, and secure.

## How to create a shell script step by step including screenshots and how to run it. Try to be as detailed as possible.

I created a shell script using the text editor and ran it using Tilix. A shell script is a simple text file that has Linux commands written in it. When I run the script, the commands inside it execute automatically. Here are the steps I followed.
#### Step 1: Open Tilix
I opened Tilix on my system. Then I made a new folder to keep my scripts organized. I typed the following commands:
mkdir scripts
cd scripts
This created a folder called scripts and moved me inside it.
#### Step 2: Create a new script file
Inside the folder, I created a new file by typing:
xed hello.sh
This opened a blank file called hello.sh in the text editor.
#### Step 3: Write the script
Inside the editor, I typed the following lines:
#!/bin/bash
#### My first shell script

echo "Hello! This is my first shell script."
echo "Today is: $(date)"

echo "You are in: $(pwd)"
After I finished typing the code, I saved the file and closed the editor.
#### Step 4: Make the file executable
I went back to Tilix and gave the file permission to run. I typed:
chmod +x hello.sh
Then I checked the permission by typing:
ls -l hello.sh
The “x” in the output showed that the file is executable.
#### Step 5: Run the shell script
I ran my script by typing:
./hello.sh
The terminal displayed:
Hello! This is my first shell script.
Today is: Mon Nov 3 14:25:10 EST 2025
You are in: /home/tasnim/scripts
#### Step 6: Edit the script to take a name as input
I opened the file again in the text editor and changed the code to:
#!/bin/bash
#### Script that greets the user

if [ -n "$1" ]; then

echo "Hello, $1!"

else

echo "Hello, user!"

fi

echo "Today is: $(date)"

I saved the file and closed the editor. Then I ran the following commands in Tilix:
./hello.sh
./hello.sh Tasnim
The first command printed “Hello, user!” and the second printed “Hello, Tasnim!”.

