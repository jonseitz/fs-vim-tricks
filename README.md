# Stupid Vim Tricks

## Overview

    I. Text Editors: A Personal History
    II. What is Vim?
    III. Vim Basics
    IV. Cool Things Vim Can Do
    V. Plugins/Extensions
    VI. Conclusion

## Text Editors: A Personal History

  1. Notepad on Windows XP
  2. Sublime Text
  3. Atom
  4. Neovim

## What is Vim?

An extensible, idiosyncratic, keyboard-driven modal text editor with a scriptable command language

### Normal Mode

```
<ACTION> <COUNT> <MOVEMENT>
```

Examples:

  - `d2w` - delete two words
  - `dd` - delete the current line
  - `5j` - move down five lines
  - `yG` - yank (copy) to the end of the file

### Visual/Line/Block Modes

Replaces the `<COUNT>` and `<MOVEMENT>` with text highlighting (which can be controlled with other movement keys).

Examples: 

  - `VU` - convert the whole line to uppercase
  - `Ctrl-v}d` - delete a column of text

### Insert Mode

For Writing Text (aka "The Boring Part")

**Except**: Inserting text is also considered a command in Vim, so you can use a `<COUNT>` to repeat the insertion.

### Command Mode

Allows for more complex commands, including launching external programs, searching, and more.

Examples:

- `:w` - write (save) the current file
- `:q` - quit Vim
- `:q!` - quit without saving
- `:wq` - write and quit
- `:!<command>` - run an external command
- `:r!<filename>` - Insert the output of the current command at the cursor position

## Some Vim Basics

### Navigation

#### Simple Movements 

- `h` - move left
- `j` - move down
- `k` - move up
- `l` - move right
- `gg` - go to the first line of the file
- `G` - go to the last line of the file

#### Token-based Movement

- `w` - move to the start of the next word
- `b` - move to the start of the previous word
- `e` - move to the end of the current word
- `^` - move to the first non-blank character of the line
- `$` - move to the end of the line
- `)` - move to the next sentence (punctuation-based)
- `(` - move to the previous sentence (punctuation-based)
- `{` - move to the previous paragraph (newline-based)
- `}` - move to the next paragraph (newline-based)

### Copy/Paste

- `y` - yank (copy) the selected text
- `d` - delete the selected text (also yanks it)

- `yy` - yank an entire line
- `dd` - delete an entire line (also yanks it)

- `p` - paste the yanked text after the cursor (or after the line if you yanked a line)
- `P` - paste the yanked text before the cursor  (or after the line if you yanked a line)

### Undo/Redo

- `u` - undo the last change
- `Ctrl-r` - redo the last change

### Documentation

- `:help <topic>` - open the help documentation for a specific topic
- `vimtutor` - start the Vim tutor for learning Vim basics

### Search

- `/<term>` - search forward for a term
- `?<term>` - search backward for a term
- `n` - repeat the last search in the same direction
- `N` - repeat the last search in the opposite direction
- `*` - search for the word under the cursor
- `#` - search for the word under the cursor in reverse

#### As a direction in a command

- `d<count>f<character>` - delete from the cursor to the <count>th occurrence of `<character>`
- `d<count>F<character>` - delete from the cursor to the <count>th occurrence of `<character>` in reverse
- `d<count>/<pattern>` - delete from the cursor to the next occurrence of `<pattern>`
- `d<count>?<pattern>` - delete from the cursor to the previous occurrence of `<pattern>`

### RegEx Find and Replace

- `:s/<pattern>/<replacement>/` - find and replace first occurrence in the current line
- `:%s/<pattern>/<replacement>/` - find and replace first occurrences in each line of the entire file

#### Flags

- `/g` - replace all occurrences in the line/file
- `/i` - Case insensitive replacement
- `/c` - confirm each replacement

## Cool Things Vim Can Do

### Sort items

- `:sort` - sort the lines in the current selection
- `:sort!` - sort the lines in the current selection in reverse order

### Windows/Tabs

- `:vsplit` - split the current window vertically
- `:split` - split the current window horizontally
- `Ctrl-w h` - move to the left window
- `Ctrl-w j` - move to the window below
- `Ctrl-w k` - move to the window above
- `Ctrl-w l` - move to the right window

- `:tabnew` - open a new tab
- `:tabnext` - switch to the next tab
- `:tabprev` - switch to the previous tab

### Increment/Decrement Values

- `Ctrl-a` - increment the number under the cursor
- `Ctrl-x` - decrement the number under the cursor

### Record Macros

Vim can record all of your keystrokes into a macro register, which can then be replayed later.

- `q<register>` - start recording a macro into the specified register
- `q` - stop recording the macro
- `@<register>` - play the macro from the specified register

> `<register>` is any key from `a` to `z`, or `0` to `9`.

#### Recursion

A macro can invoke itself, which will cause it to repeat until the macro fails

## Plugins/Extensions

### NERDTree

Displays a tree-like file browser in a vim pane

### COC

"Conquer of Completion" - Implements the Language Server Protocol to provide autocompletion, linting, etc.

### Copilot

AI-assisted editing/completions

> While putting this whole document together, I found copilot would occasionally suggest new commands that I didn't even know existed!

### Airline

Provides a fancy status bar with colors and file information

### csv.vim

Better display of csv files by column/row, and adds some vim-like commands for manipulating data

### Telekasten

A Zettlekasten-style note-taking tool built on top of vim, using a neovim-specific plugin called Telescope.

## Conclusion

I'm not arguing that Vim is the best text editor, or that everyone should stop using their current editor and make the switch.

I'm sure you can replicate any of these vim functions in VS Code, or Sublime Text, or whatever editor you prefer (probably not notepad).

Text editors are tools, and with any tool the most important thing is to make sure you're using it correctly. So it's worth taking the time to learn (and practice) the tools you use every day.

