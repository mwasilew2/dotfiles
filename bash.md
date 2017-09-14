<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Motion](#motion)
- [Editing](#editing)
- [Control](#control)
- [Recalling](#recalling)
- [Learning](#learning)
- [not learning](#not-learning)
- [source](#source)

<!-- markdown-toc end -->

press tab for completion

# Motion #

Ctrl + a – go to the start of the command line
Ctrl + e – go to the end of the command line
Alt + b – move backward one word (or go to start of word the cursor is currently on)
Alt + f – move forward one word (or go to end of word the cursor is currently on)
Ctrl + f – move forward one character
Ctrl + b – move backward one character

# Editing #

Ctrl + d – delete character under the cursor
Alt + d – delete to end of word starting at cursor (whole word if cursor is at the beginning of word)
Ctrl + k – delete from cursor to the end of the command line
Alt + . – use the last word of the previous command

# Control #

Ctrl + c – terminate the command
Ctrl + z – suspend/stop the command

# Recalling #

!! – run last command

# Learning #

Ctrl + w – delete from cursor to start of word (i.e. delete backwards one word)
Ctrl + u – delete from cursor to the start of the command line
Ctrl + /  - undo

Ctrl + xx – move between start of command line and current cursor position (and back again)
Ctrl + y – paste word or text that was cut using one of the deletion shortcuts (such as the one above) after the cursor
^^^     regex search and replace
Ctrl + l – clear the screen
Ctrl + h – delete character before the cursor (backspace)
Alt + u – make uppercase from cursor to end of word
Alt + l – make lowercase from cursor to end of word
Alt + t – swap current word with previous
Ctrl + t – swap character under cursor with the previous one
Alt + r - Cancel the changes and put back the line as it was in the history (revert)
Ctrl + r – search the history backwards
Ctrl + g – escape from history searching mode
Ctrl + p – previous command in history (i.e. walk back through the command history)
Ctrl + n – next command in history (i.e. walk forward through the command history)
!* – the previous command except for the last word (e.g. if you type ‘find some_file.txt /‘, then !* would give you ‘find some_file.txt‘)
Ctrl + s – stops the output to the screen (for long running verbose command)
Ctrl + q – allow output to the screen (if previously stopped using command above)
Alt + c – capitalize under cursor and jump to the end of word


# not learning #

C-x C-e == fc     start an editor to edit the command
!blah – run the most recent command that starts with ‘blah’ (e.g. !ls)
!blah:p – print out the command that !blah would run (also adds it as the latest command in the command history)
!$ – the last word of the previous command (same as Alt + .)
Esc + t - swap the last two words before the cursor
!$:p – print out the word that !$ would substitute
!*:p – print out what !* would substitute


# source #


Ref: https://www.gnu.org/software/bash/manual/bash.html#Bindable-Readline-Commands
