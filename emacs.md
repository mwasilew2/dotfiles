<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Links](#links)
- [Motion](#motion)
- [File](#file)
- [Editing](#editing)
    - [killing and yanking](#killing-and-yanking)
    - [undoing](#undoing)
    - [formatting](#formatting)
    - [other](#other)
- [Repeating/Macros](#repeatingmacros)
- [Search & Replace](#search--replace)
- [windows/buffers](#windowsbuffers)
- [Markdown](#markdown)
- [Magit](#magit)
- [Neotree](#neotree)
- [Projectile](#projectile)
- [Dockerfile](#dockerfile)
- [Org](#org)
    - [Org-tbl](#org-tbl)
    - [Org-trello](#org-trello)
- [Clipboards](#clipboards)
- [getting help](#getting-help)
- [other](#other)

<!-- markdown-toc end -->

# Links #

http://www.star.bris.ac.uk/bjm/emacs-tips.html

https://www.emacswiki.org/emacs/EmacsNiftyTricks

https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf

http://www.ast.cam.ac.uk/~vasily/idl/emacs_commands_list.html

# Motion #

| Amount               | forward            | backward          | forward       | backward      |
| ---                  | ----               | -----             | ----          | ----          |
| characters           | C-f                | C-b               | C-d           | BACKSPACE     |
| words                | M-f                | M-b               | M-d           | C-BACKSPACE   |
| lines                | C-n                | C-p               | C-S-BACKSPACE | C-S-BACKSPACE |
| line end/start       | C-e                | C-a               | C-k           |               |
| sentences            | M-e                | M-a               | M-k           |               |
| expressions          |                    |                   |               |               |
| paragraphs           | M-}                | M-{               |               |               |
| buffer end/start     | M->                | M-<               |               |               |
| page down/up         | C-v                | M-v               |               |               |
| parenthesis balanced | C-M-right or C-M-f | C-M-left or C-M-b | C-M-k         |               |
| parenthetical group  | C-M-n              | C-M-p             |               |               |
| function             | C-M-e              | C-M-a             |               |               |


| Shortcut  | Action                                                         |
| --------- | -------------------------------------------------------------- |
| C-l       | move underlying text to the middle/top/bottom of the screen    |
| M-m       | move to the first non-whitespace character on the current line |
| M-g M-g   | go to line by number                                           |
| C-x C-x   | swap mark and point                                            |
| M-z char  | kill to the next occurrence of char                            |


# File #

| Shortcut | Acton                             |
| --       | ---                               |
| C-x C-f  | open file by name (fuzzy matched) |
| C-x C-s  | Save current buffer immediatelly  |
| C-x s    | save all buffers with changes     |
| C-x C-b  | list buffers (fuzzy matched)      |
| C-x C-w  | save as                           |
| F5       | refresh from file                 |
| C-x k    | close window/buffer               |


# Editing #

## killing and yanking ##

| Shortcut | Acton                 |
| --       | ---                   |
| M-w      | copy                  |
| S-INSERT | paste                 |
| M-y      | rotate over kill ring |
| C-w      | kill current region   |

## undoing ##

| Shortcut | Acton       |
| --       | ---         |
| C-/      | - undo      |
| C-?      | - redo      |
| C-x u    | - undo tree |

## formatting ##

| Shortcut | Acton               |
| --       | ---                 |
| M-u      | uppercase word      |
| M-l      | lowercase word      |
| M-c      | capitalize word     |
| C-x C-u  | uppercase selection |
| C-x C-l  | lowercase selection |


| Shortcut    | Action              |
| ----------- | ------------------- |
| C-c arrows  | move code           |
| C-M-\       | indent a code block |
| C-x tab     | indent              |


## other ##


| Shortcut    | Action                            |
| ----------- | -------------------               |
| C-o         | new line                          |
| C-M-o       | move rest of line vertically down |
| C-S-D       | duplicate line                    |
| M-;         | comment out line/section          |
| C-SPC       | make selections using keyboard    |
| C-x C-p     | select page                       |
| C-x h       | mark the whole file               |
| M-tab       | autofix spelling errors           |
| C-t         | transpose two characters          |
| M-t         | transpose two words               |
| C-x C-t     | transpose lines                   |


# Repeating/Macros #

| Shortcut    | Action                                           |
| ----------- | ---------------------------                      |
| C-x z       | repeat command                                   |
| M-number    | repeat command number of times (the same as C-u) |
| C-u 20 C-d  | repeat 20 times command C-d                      |


C-x (     -start macro
press the sequence
C-x )     - stop recording macro
C-x e     - apply macro

# Search & Replace #

| Shortcut        | Action                       |
| --------------- | ---------------------------- |
| C-s             | search forward               |
| C-r             | search backward              |
| C-M-s           | search forward using regex   |
| C-M-r           | search backward using regex  |
| M-%             | query replace                |
| C-M-%           | query replace with regex     |
| replace-string  | replace without quering      |



# windows/buffers #

| Shortcut          | Action                         |
| -------------     | ------------------------------ |
| S-arrows or C-x o | move between windows           |
| C-c C-arrows      | move between buffers in tabbar |
| C-x C-b           | fuzzy much on open buffers     |
| C-x 0             | close window                   |
| C-x 3             | split vertical                 |
| C-x 2             | splint horizontal              |

# Markdown #

| Shortcut   | Action        |
| ---------- | ------------- |
| C-c C-t 3  | title level 3 |
| M-<left>   | unindent      |
| M-<right>  | indent        |

https://jblevins.org/projects/markdown-mode/



# Magit #

| Shortcut  | Action            |
| --------- | ----------------- |
| C-x g     | open magit status |
| S         | Stage everything  |
| cc        | commit            |
| C-c C-c   | finish commiting  |
| Pu        | push              |
| Fu        | pull              |

https://magit.vc/manual/magit.html#Top

# Neotree #

| Shortcut  | Action        |
| --------- | ------------- |
| C-c C-n   | new file      |
| C-c C-d   | delete a file |
| C-c C-r   | rename        |
| C-c C-p   | copy          |

https://www.emacswiki.org/emacs/NeoTree

# Projectile #

http://projectile.readthedocs.io/en/latest/usage/

# Dockerfile #

https://github.com/spotify/dockerfile-mode

# Org #

http://orgmode.org/guide/index.html#Top

## Org-tbl ##

## Org-trello ##

http://org-trello.github.io/

# Clipboards #

the primary facility to store text in emacs is kill ring: `https://www.gnu.org/software/emacs/manual/html_node/emacs/Kill-Ring.html`
by default kill commands will overwrite clipboard (which will make first entry in kill ring available outside of emacs). If you had something in clipboard when killing, it will be queued in the kill ring: `https://www.gnu.org/software/emacs/manual/html_node/emacs/Clipboard.html`

- clipboard (OS wide)
- kill ring
- primary selection
	- copy by selecting with mouse in any application
	- paste with middle click


# getting help #

| Shortcut  | Action                                   |
| --------- | ---------------------------------------- |
| C-h       | help                                     |
| C-h v     | get value, information, about a variable |
| C-h c     | get information about a keybinding       |
| C-h f     | get information about a function         |
| C-h b     | display all key bindings                 |

# other #

| Shortcut  | Action                                                    |
| --------- | --------------------------------------------------------- |
| M-x       | run a function (with my config it's doing fuzzy matched)  |
| M-:       | evaluate elisp (run an elisp command)                     |
| C-c C-o   | follow a symlink (if it's url it will open a browser)     |
| C-g       | Cancel                                                    |
| C-x C-c   | quit emacs                                                |
