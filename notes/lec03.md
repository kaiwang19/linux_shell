## Editors (Vim)

check lecture here: https://missing.csail.mit.edu/2020/editors/  
check video here: https://www.youtube.com/watch?v=a6Q8Na575qc&list=PLyzOVJj3bHQuloKGG59rS43e29ro7I57J&index=3  

---



### [insert mode]
:quit  
:help :w  

### [normal mode] - shift window
:e filename      // open another file  
:sp              // Horizontally create a window below of the same file   
:sp  filename    // Horizontally open another file at the top   
:vsplit          // Vertically create a window  
:vsplit filename // open another file at the top  
:bn              // shift to next file  
:bp              // shift to preview file  
:ls              // list all the files  
:b1~n            // shift to a specific file  
ctrl+ww          // shift to the next window  

### [normal mode] - move
h // move left  
j // move dowm  
k // move up  
l // move right  
w // move to the next word  
b // move to the beginning of former word  
e // move to the end of the current word
ctrl+d // scroll down with a big step  
ctrl+u // scroll up with a big step  
G      // move all the way down
gg     // move all the way up
0  // beginning of line  
^  // first non-blank character  
$  // end of line  
H  // top of screen  
M  // middle of screen  
L  // bottom of screen  
3w // move 3 words forward  
5j // move 5 lines down  
7dw // delete 7 words  
:set number  
:set nonumber  
Line numbers: :{number}<CR> or {number}G (line {number})  
Misc: % (corresponding item)  
Find: f{character}, t{character}, F{character}, T{character}  
find/to forward/backward {character} on the current line  
, / ; for navigating matches  
Search: /{regex}, n / N for navigating matches  

### Edits
i enter insert mode  
o insert line below  
O insert line above   
- d{motion} delete {motion}  [normal mode]  
dw is delete word  
d$ is delete to end of line  
d0 is delete to beginning of line  
- c{motion} change {motion}  [insert mode]  
cw is change word, like d{motion} followed by i  
x delete character (equal do dl)  
s substitute character (equal to xi)  
u to undo, <C-r> to redo  
- v enter [visual mode], select contents  
y to copy / “yank” (some other commands like d also copy)  
p to paste  

### Modifiers
ci( change the contents inside the current pair of parentheses
ci[ change the contents inside the current pair of square brackets
da' delete a single-quoted string, including the surrounding single quotes

### personal setting
vim ~/.vimrc
syntax on
set number