# Basic Commands
Here, we're going to review some of the basic commands in git, especially the unix options associated with adding, removing, and monitoring changes in your files. An option can be thought of as a parameter for a unix command, and they usually come in the form of -(character) or --(word).

There are a multitude of options with varying utility, but for now, we'll review the staples. If you're interested in learning about more options out there, you can always type in just the git command itself (i.e. 'git add') and you'll be given a list where you can read about the syntax, parameters, and utility of each option.

### An Anecdote
Perhaps the greatest initial barrier to learning Git is understanding what each command is actually doing. Here's an anecdote that, I hope, will serve as a roadmap for comprehending Git going forwards.

Imagine an apple farmer. As a farmer, the first thing you'd probably do is pick every apple off of your tree. Then, you'd inspect your harvest, throwing out the bad apples that have mold, insects, etc., while keeping the good ones. Finally, you'd pack the good apples and send them off to the store and turn it into profit.

Git works in a similar fashion. You're the apple farmer. An apple is the equivalent to modifying your project. In other words, every changed file is recorded with a unique signature aka the apple. When you 'git add', you're telling the computer which modifications, or which apples, you want to keep. Finally, with 'git commit', you've packed up the modifications and officially saved a new version of your directory.

### Adding / Staging Changes
```unix
git add -A
git add (name of change here)
```
'git add' is the Git command responsible for selecting modifications. When a file is modified, your computer has no idea which modifications are or aren't important. 'git add' is essentially your way of picking out the modifications that you're telling your computer you'd like to keep. A file that has been added is considered 'staged'. To select a change individually, just 'git add (name of modification here)'. Out of the options, you will most likely be using 'git add -A' the most.

Flag | Purpose
--- | ---
-A | Stage *all* recorded changes. Same combination of '.' and '-u'
. | Stage *new* and *changed* files, but not *deleted* files
-u | Stage *changed* and *deleted* files, but not *new* files
-v | Verbose, provides more information about execution
-f | Allows you to add ignored files
-i | Interactive mode, a bit confusing

### Committing Staged Changes
```unix
git commit -m 'Commit Message Here'
```
It's time to ship the apples. 'git commit' finalizes the staged changes you want to keep and revises the .git file to store a new latest version of the directory. With git commit, you can view previous versions of the directory, compare different commits, and revert back to a previous commit in case something happens to your project.

Flag | Purpose
--- | ---
-a / --all | Stage *changed* and *deleted* files, but not *untracked* files
-p | Interactive patch allowing you to choose changes to commit
-m | Edit commit message, multiple -m's are separated into paragraphs

### Removing or Postponing Changes
```unix
git stash save --keep-index
git stash drop
```
'git stash' is


### Remote Repository Interaction
```unix
```
### miscellaneous
```unix
git config
git log
```
