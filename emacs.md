<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Motion](#motion)
- [Editing](#editing)
- [Learning](#learning)

<!-- markdown-toc end -->



# Motion #



# Editing #



# Learning #

A-m    jump to first non-white character in the line
A-t    transpose two words





## emacs (with evil mode)

C-x C-c   - close emacs
tutorial: https://www.gnu.org/software/emacs/tour/
macros

### moving cursor ###

C-f   forward character
C-n   next line
C-a   beginning of the line
M-f   forward word
M-a   previous sentence
M-v   previous screen (up one page)
M-<   beginning of buffer

C-b   backward character
C-p   previous line
C-e   end of the line
M-b   backward word
M-e   next sentence
C-v   down one page
M->   end of buffer

C-l   move underlying text to the middle/top/bottom of the screen
M-m   move to the first non-whitespace character on the current line

C-arrows   move by entire sections

### windows/buffers ###

S-arrows    move between windows
C-c C-arrows   move between buffers in tabbar
C-x C-b     fuzzy much on open buffers

### editing ###

C-o   new line

C-S-backspace      delete entire line
backspace   delete character before point
C-d         delete character after point
M-d         kill forward to the end of word
M-DEL       kill back to the beginning of the word
C-k         kill to the end of line

M-;   comment out line/section
M-l   turn to lower case
M-u   turn to upper case

C-x h    - mark the whole file
C-SPC    - make selections using keyboard

C-/   - undo
C-?   - redo
C-x u   - undo tree

C-x s   - save all buffers with changes
C-x C-s   - save current buffer immediately

M-tab     autofix spelling errors

### indentation ###

C-c arrows    move code blocks

C-M-\    indent a code block
C-x tab - indent

### Search & Replace

C-s    - incremental search forwards
C-r    - incremental search backwards
M-%    - query replace
C-M-%   - query replace with regex
replace-string    - replace without querquering

### Markdown ###

C-c C-t 3

M-<left>
M-<right>

### Magit
C-x g   open magit status
S       Stage everything
cc      commit
C-c C-c finish commiting
Pu      push


### Neotree
C-c C-n   - new file
C-c C-d   - delete a file
C-c C-r   - rename
C-c C-p   - copy

### Projectile
http://projectile.readthedocs.io/en/latest/usage/

### Clipboards

the primary facility to store text in emacs is kill ring: `https://www.gnu.org/software/emacs/manual/html_node/emacs/Kill-Ring.html`
by default kill commands will overwrite clipboard (which will make first entry in kill ring available outside of emacs). If you had something in clipboard when killing, it will be queued in the kill ring: `https://www.gnu.org/software/emacs/manual/html_node/emacs/Clipboard.html`

- clipboard (OS wide)
- kill ring
- primary selection
	- copy by selecting with mouse in any application
	- paste with middle click


### getting help, other ###

C-h
C-h v     get value, information, about a variable
C-h c     get information about a keybinding
C-h f     get information about a function

M-x       run a function (with my config it's doing fuzzy matching)
M-:       evaluate elisp (run an elisp command)
