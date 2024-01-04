## Screenshots
![Screenshot of alpha.lua]( https://github.com/aaronkoichi/nvim/blob/master/Images/alpha.png?raw=true)
![Screenshot of Neovim](https://github.com/aaronkoichi/nvim/blob/master/Images/main.png?raw=true)
## Prerequisites
 - Rose Pine themed Windows Terminal at windowsterminalthemes.dev 
 - Oh My Posh setup with tokyo theme for Powershell(initial setup), command prompt and WSL.

## Oh My Posh Configs 
##### Windows config:

 ` oh-my-posh init pwsh --config 'C:\Users\[USER FOLDER]\AppData\Local\Programs\oh-my-posh\themes\tokyo.omp.json' | Invoke-Expression `

##### CMD config with Cline:

`load(io.popen('oh-my-posh init cmd --config C:/Users/[USER FOLDER]/AppData/Local/Programs/oh-my-posh/themes/tokyo.omp.json'):read("*a"))()`

##### WSL bash config:

`eval "$(oh-my-posh init bash --config /mnt/c/Users/[USER FOLDER]/AppData/Local/Programs/oh-my-posh/themes/tokyo.omp.json)"`




## NEOVIM configs 
- :MasonInstall the languages you need
- configure none-ls for the lsp linting.
- Note: Setup the languages you require on lsp-config.lua. TreeSitter automatically installs the required language but it is okay to config treesitter.lua as well.



## Keybinds and Features  
- [space]fg --> opens telescope
- [space]gf --> formats the code
- [space]n --> opens filetree
- Shift + k --> shows code info
- [space]ca -->code actions


### Auto-save
- [space]as --> Toggle auto-save on or off 

### fugitive 
- [space]gs --> View Git repo


### neotree
- Ctrl + n --> Toggle neotree


### Harpoon
- Ctrl + e --> Opens harpoon menu (Does not work with autosave enabled)
- [space]a --> Adds file into harpoon
- Ctrl + h --> Goes into Harpoon 1  
- Ctrl + t --> Goes into Harpoon 2  
- Ctrl + n --> Goes into Harpoon 3  
- Ctrl + b --> Goes into Harpoon 4 


### none-ls 
- [space]gf --> Formats document  

### toggleterm  
- Ctrl + \ --> Opens terminal   


### undotree  
- Ctrl + P --> Opens undotree




