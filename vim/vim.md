
## vi ##

:w - write
:q - quit
/ - search
dd - to delete the line
yy and then p - cut and paste
Go    - add a line at the end of file, go to it
cheatsheet from rhsa book

vimtutor
macros

## leader key

## vimrc file

### mapping

`:help map-overview`

## displaying the current vim environment (variables)

https://vim.fandom.com/wiki/Displaying_the_current_Vim_environment

inspect a global variable: `:echo g:YourVariable`

## motion ##

* `w` - jump by start of words (punctuation considered words)
* `W` - jump by words (spaces separate words)
* `e` - jump to end of words (punctuation considered words)
* `E` - jump to end of words (no punctuation)
* `b` - jump backward by words (punctuation considered words)
* `B` - jump backward by words (no punctuation)
* `0` - (zero) start of line
* `^` - first non-blank character of line (same as 0w)
* `$` - end of line
* Advanced (in order of what I find useful)
    * `Ctrl+d` - move down half a page
    * `Ctrl+u` - move up half a page
    * `}` - go forward by paragraph (the next blank line)
    * `{` - go backward by paragraph (the next blank line)
    * `gg` - go to the top of the page
    * `G` - go the bottom of the page
    * `: [num] [enter]` - Go To that line in the document
    * Searching
        * `f [char]` - Move to the next char on the current line after the cursor
        * `F [char]` - Move to the next char on the current line before the cursor
        * `t [char]` - Move to before the next char on the current line after the cursor
        * `T [char]` - Move to before the next char on the current line before the cursor
        * All these commands can be followed by `;` (semicolon) to go to the next searched item, and `,` (comma) to go the the previous searched item
* `zz` - move the line under cursor to the middle of the screen


## Plugins

### CtrlP

https://github.com/ctrlpvim/ctrlp.vim
