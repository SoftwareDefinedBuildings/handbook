# Unix

## Basics
Unix is a very significant language in the evolution of computer science. In a very general sense, UNIX is the language that allows you to navigate your operating system on a raw level. When you navigate Finder on Mac or File Systems on Windows, you're essentially traversing through a user interface of terminal. Since it was created in the 1970s, many 'flavors' of unix have been developed, some of which have materialized into the most operating systems today, including Apple's macOS and Linux.

Unix is a brutally simple language. Every command is very straightforward and guarantees efficient execution. The trick is making sure you know what you're doing. Don't worry. At the start, Unix will definitely come off as very unwieldy and monotonous compared to what you're used to. But trust, once you get the hang of things, you'll forget the days where you slowly point-and-clicked through file systems, in favor of 'ls' and 'cd'-ing through directories. :muscle:

## Anatomy of a Unix Command
![](Screenshots/sample-unix.png)

## List of Unix Commands
Legend
^ - Requires Installation

#### File Management
Command | Purpose | Options
--- | --- | ---
ls | List items in your current directory | a (hidden files), l (long format)
cd (dir) | Change directory | .. (up one dir.), / (root dir.), ~ (home dir.)
pwd | Print working directory
mkdir (dir) | Create a directory named 'dir'
rm (dir / file) | Remove a file or directory | r (recursive), f (force)
cp (file1) (file2) | Copy file1 to file2 | r (recursive)
mv (file1) (file2) | Move file1 to file2
cat/head/tail/more/less (file) | View a file's contents
touch (file) | Create new file named 'file'
vim (file) | Edit a file using Vim text editor

#### Permissions + Process Management
Command | Purpose | Options
--- | --- | ---
chmod | Change File Permissions | Click [here](https://www.computerhope.com/unix/uchmod.htm) for in depth explanation
ps | Display active processes
top | Display running processes (equivalent of activity monitor)
htop ^ | More colorful 'top'
kill (process id) | Kill a process identified with id | 9 (force kill)

## Resources
1. Tutorials Point: https://www.tutorialspoint.com/unix/index.htm
2. Cheat Sheet: http://cheatsheetworld.com/programming/unix-linux-cheat-sheet/
3. A Unix Easter Egg :egg:: type 'telnet towel.blinkenlights.nl', then enter

### History of Unix
![](Screenshots/unix-history.png)
