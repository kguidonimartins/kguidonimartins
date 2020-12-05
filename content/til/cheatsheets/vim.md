---
title: "Alguns atalhos para o Vim"
author: 'Karlo Guidoni'
date: 2020-12-05
categories:
  - til
tags:
  - til
  - linux
  - terminal
  - vim
  - atalhos
---

# NAVIGATION

`0`              : go to the starting of the current line.

`^`              : go to the first non blank character of the line.

`$`              : go to the end of the current line.

`g_`             : go to the last non blank character of the line.

`H`              : go to the first line of current screen.

`M`              : go to the middle line of current screen.

`L`              : go to the last line of current screen.

`ctrl-f`         : jump forward one full screen.

`ctrl-b`         : jump backwards one full screen

`ctrl-d`         : jump forward (down) a half screen

`ctrl-u`         : jump back (up) one half screen

`ctrl-e`         : line-wise scrolling

`ctrl-y`         : line-wise scrolling

`zt`             : shifts page content so current line sits at the top of the viewport

`zb`             : shifts page content so current line sits at the bottom of the viewport

`zz`             : shifts page content so current line sits at the middle of the viewport

# NORMAL MODE

`*`              : go to the next match terms

`ctrl-n`         : autocomplete

`vi"`            : visually select all inside the doublequotes

`va(`            : visually select all inside the bracket, including bracket

`I`              : go to the begin of the line and insert

`A`              : go to the end of the line and insert

`J`              : remove breaklines

`gwip`           : add breakline in a continuous paragraph

`.`              : dotcommand - repeat the last move

`:set hlsearch`  : highlight words in search

`:set nohlsearch`: disable with

`o`              : to start inserting on a new line below the current one

`O`              : to start inserting on a new line above the current one

`u`              : undo

`ctrl-r`         : redo

`dto`            : delete up to character 'o'

`fa`             : move forward to the character 'a'

`cw`             : change word

`ctA`            : change up to the character 'A'

`ct(`            : change up to the character '('

`cc`             : change the entire line

`ciw`            : change inside word

`ci(`            : change in parenthesis

`ci{`            : change in curly brace

`ci<`            : change in < > angle brackets

`ci"`            : change inside quotes (this leaves the quotes intact)

`ca"`            : change (a)round quotes … means quotes get replaced too

`cat`            : change (a)round (t)ag … yep, vim understands html tags!

`cw<ESC>'p`      : enclose in quotes

`yiw`            : yank inner word (copy word under cursor)

`viwp`           : used after the previous command to replace a word

# VISUAL MODE

`vwU`              : change the selected word to uppercase

`vwu`              : change the selected word to lowercase

`gU<motion>`       : change based on motion; gU$ = uppercase from here to the final of line

`ctrl-v`           : visual block; select columns

`ctrl-v`+`shift-i` : edit with multiple cursor

`gg + shift-v`+`shift-g + :sort u` : select multiple lines, sort and remove duplicated lines

# SPELL CHECKER

`]s` : vai para a próxima palavra

`[s` : vai para a palavra anterior

`z=` : mostra a lista de sugestões para a palavra

`zg` : adiciona a palavra sob o cursor no dicionário, assim ela não será mais marcada como errada

`zug`: desfaz a última palavra adicionada

`zw` : remove a palavra sob o cursor do dicionário,   assim ela será marcada como errada

`zuw`: desfaz a última palavra removida

# COMMAND-LINE

`:nmap` : Display key bindings for NORMAL mode

`:vmap` : Display key bindings for VISUAL mode

`:imap` : Display key bindings for INSERT mode

`:map`  : Display key bindings for all modes

# Moving between buffers

`:bn` : next buffer

`:bp` : previous buffer

`:ls` : list buffers

`:b#` : go to buffer #; can be 1, 2, 3

`:bf` : go to the first buffer

`:bl` : go to the last buffer

# Switching working directories

`:cd a%:p:h` : change wd based on filename

`:cd %:p:h/path/to/other/proj` : change to path

`:cd a%:p:h` : return to basename

# CURSOR MOVEMENTS

h                   move left

j                   move down

k                   move up

l                   move right

w                   jump by start of words (punctuation considered words)

W                   jump by words (spaces separate words)

e                   jump to end of words (punctuation considered words)

E                   jump to end of words (no punctuation)

b                   jump backward by words (punctuation considered words)

B                   jump backward by words (no punctuation)

ge                  jump backward to end of words

0                   (zero) start of line

^                   first non-blank character of line

$                   end of line

\-                   move line upwards, on the first non blank character

\+                   move line downwards, on the first non blank character

\<enter>             move line downwards, on the first non blank character

gg                  go to first line

G                   go to last line

nG                  go To line n

:n                  go To line n

)                   move the cursor forward to the next sentence.

(                   move the cursor backward by a sentence.

{                   move the cursor a paragraph backwards

}                   move the cursor a paragraph forwards

]]                  move the cursor a section forwards or to the next {

[[                  move the cursor a section backwards or the previous {

CTRL-f              move the cursor forward by a screen of text

CTRL-b              move the cursor backward by a screen of text

CTRL-u              move the cursor up by half a screen

CTRL-d              move the cursor down by half a screen

H                   move the cursor to the top of the screen.

M                   move the cursor to the middle of the screen.

L                   move the cursor to the bottom of the screen.

fx                  search line forward for 'x'

Fx                  search line backward for 'x'

tx                  search line forward before 'x'

Tx                  search line backward before 'x'

# BOOKMARKS

:marks              list all the current marks

ma                  make a bookmark named a at the current cursor position

`a                  go to position of bookmark a

'a                  go to the line with bookmark a

`.                  go to the line that you last edited

# INSERT MODE

i                   start insert mode at cursor

I                   insert at the beginning of the line

a                   append after the cursor

A                   append at the end of the line

o                   open (append) blank line below current line

O                   open blank line above current line

Esc                 exit insert mode

# EDITING

r                   replace a single character (does not use insert mode)

R                   enter Insert mode, replacing characters rather than inserting

J                   join line below to the current one

cc                  change (replace) an entire line

cw                  change (replace) to the end of word

C                   change (replace) to the end of line

s                   delete character at cursor and substitute text

S                   delete line at cursor and substitute text (same as cc)

xp                  transpose two letters (delete and paste, technically)

u                   undo

CTRL-r              redo

.                   repeat last command

~                   switch case

g~iw                switch case of current word

gUiw                make current word uppercase

guiw                make current word lowercase

gU$                 make uppercase until end of line

gu$                 make lowercase until end of line

\>>                  indent line one column to right

\<<                  indent line one column to left

==                  auto-indent current line

ddp                 swap current line with next

ddkp                swap current line with previous

:%retab             fix spaces / tabs issues in whole file

:r [name]           insert the file [name] below the cursor.

:r !{cmd}           execute {cmd} and insert its standard output below the cursor.

# DELETING TEXT

x                   delete current character

X                   delete previous character

dw                  delete the current word

dd                  delete (cut) a line

D                   delete from cursor to end of line

:[range]d           delete [range] lines

# COPYING AND MOVING TEXT

yw                  yank word

yy                  yank (copy) a line

2yy                 yank 2 lines

y$                  yank to end of line

p                   put (paste) the clipboard after cursor/current line

P                   put (paste) before cursor/current line

:set paste          avoid unexpected effects in pasting

:registers          display the contents of all registers

"xyw                yank word into register x

"xyy                yank line into register x

:[range]y x         yank [range] lines into register x

"xp                 put the text from register x after the cursor

"xP                 put the text from register x before the cursor

"xgp                just like "p", but leave the cursor just after the new text

"xgP                just like "P", but leave the cursor just after the new text

:[line]put x        put the text from register x after [line]

# MACROS

qa                  start recording macro 'a'

q                   end recording macro

@a                  replay macro 'a'

@:                  replay last command

# VISUAL MODE

v                   start visual mode, mark lines, then do command (such as y-yank)

V                   start linewise visual mode

o                   move to other end of marked area

U                   upper case of marked area

CTRL-v              start visual block mode

O                   move to other corner of block

aw                  mark a word

ab                  a () block (with braces)

ab                  a {} block (with brackets)

ib                  inner () block

ib                  inner {} block

Esc                 exit visual mode

# VISUAL MODE COMMANDS

\>                   shift right

\<                   shift left

c                   change (replace) marked text

y                   yank (copy) marked text

d                   delete marked text

~                   switch case

# VISUAL MODE SHORTCUTS

v%                  selects matching parenthesis

vi{                 selects matching curly brace

vi\"                 selects text between double quotes

vi\'                 selects text between single quotes



# SPELLING

]s                  next misspelled word

[s                  previous misspelled word

zg                  add word to wordlist

zug                 undo last add word

z=                  suggest word

# EXITING

:q                  quit Vim. This fails when changes have been made.

:q!                 quit without writing.

:cq                 quit always, without writing.

:wq                 write the current file and exit.

:wq!                write the current file and exit always.

:wq {file}          write to {file}. Exit if not editing the last

:wq! {file}         write to {file} and exit always.

:[range]wq[!]       same as above, but only write the lines in [range].

ZZ                  write current file, if modified, and exit.

ZQ                  quit current file and exit (same as ":q!").

# SEARCH/REPLACE

/pattern                    search for pattern

?pattern                    search backward for pattern

n                           repeat search in same direction

N                           repeat search in opposite direction

\*                           search forward, word under cursor

\#                           search backward, word under cursor

set ic                      ignore case: turn on

set noic                    ignore case: turn off

:%s/old/new/g               replace all old with new throughout file

:%s/old/new/gc              replace all old with new throughout file with confirmation

:argdo %s/old/new/gc | wq   open multiple files and run this command to replace old with new in every file with confirmation, save and quit

# MULTIPLE FILES

:e filename         edit a file in a new buffer

:tabe filename      edit a file in a new tab (Vim7, gVim)

:ls                 list all buffers

:bn                 go to next buffer

:bp                 go to previous buffer

:bd                 delete a buffer (close a file)

:b1                 show buffer 1

:b vimrc            show buffer whose filename begins with "vimrc"

:bufdo <command>    run 'command(s)' in all buffers

:[range]bufdo <command> run 'command(s)' for buffers in 'range'

# WINDOWS

:sp f               split open f

:vsp f              vsplit open f

CTRL-w s            split windows

CTRL-w w            switch between windows

CTRL-w q            quit a window

CTRL-w v            split windows vertically

CTRL-w x            swap windows

CTRL-w h            left window

CTRL-w j            down window

CTRL-w k            up window

CTRL-w l            right window

CTRL-w +            increase window height

CTRL-w -            decrease window height

CTRL-w <            increase window width

CTRL-w >            decrease window width

CTRL-w =            equal window

CTRL-w o            close other windows

# QUICKFIX WINDOW

copen               open quickfix window

cclose              close quickfix window

cc [nr]             display error [nr]

cfirst              display the first error

clast               display the last error

[count]cn           display [count] next error

[count]cp           display [count] previous error

# PROGRAMMING

%                   show matching brace, bracket, or parenthese

gf                  edit the file whose name is under or after the cursor

gd                  when the cursor is on a local variable or function, jump to its declaration

''                  return to the line where the cursor was before the latest jump

gi                  return to insert mode where you inserted text the last time

CTRL-o              move to previous position you were at

CTRL-i              move to more recent position you were at

## REFS

- https://raw.githubusercontent.com/rtorr/vim-cheat-sheet/master/lang/pt_br/index.html

- https://www.thegeekstuff.com/2009/03/8-essential-vim-editor-navigation-fundamentals/

- http://vimdoc.sourceforge.net/htmldoc/help.html

- http://www.vim.org/

- https://vim.sourceforge.io/docs.php

