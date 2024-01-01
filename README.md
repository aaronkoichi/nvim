## NEOVIM configs 

- :MasonInstall the languages you need
- configure none-ls for the lsp linting.
- Note: Setup the languages you require on lsp-config.lua. TreeSitter automatically installs the required language but it is okay to config treesitter.lua as well.
## Keybinds
- [space]fg --> opens telescope
- [space]n --> opens filetree
- Shift + k --> shows code info
- [space]ca -->code actions


## VIM CHEAT SHEET 

##### . = repeats a command
##### i - insert mode 
##### I = insert from the front
##### a = insert from the next character
##### o = insert by creating another line from below
##### O = insert by creating another line above

##### 0 = go in front of the line
##### $ = go back of the line

##### w / W = jump forward between words
##### b / B = jump backward between words

##### [num]gg / [num]G = jumps to the specified line

##### v = visual mode
##### V = visual line mode
##### ctrl+alt+v = visual block mode

##### u = undo
##### ctrl+r = redo

##### r = character replace
##### yy = copy
##### dd = delete (cut)
##### p = paste

##### ciw = change a word
##### c[number]w = change number of words
##### ci" = change a word inside the ""

##### diw = delete a word
##### d[number]w = delete number of words
##### di" = delete a word inside the ""

##### = = formats the indentation (make sure to select using visual mode)


##### t[char] = jumps to in front of the specified character
##### dt[char] = deletes stuff in front of the specified character 
##### T = same thing as above, but in behind of the character

##### zz = centers the line 



##### >> = indent
##### << = un-indent

##### /[words] = search (press n to jump forward, N to jump backward)

##### :%s/[words]/[replace] = replace all words
##### :s/[words]/[replace] = replace words selected by the visual mode.
##### :reg = see the log/registers

##### m[char] = marks the line with a character
##### '[char] = jumps to the line that was marked with the specified character.

##### q[char] = records the macro
##### q = quit recording
##### @[char] = initiate the macro

##### :w = save file
##### :q = quit file
##### :wq = save and quit file
##### :q! = quit file without saving
