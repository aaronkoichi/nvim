## Screenshots
![Screenshot of Neovim](https://github.com/aaronkoichi/nvim/blob/master/Images/main.png?raw=true)
## Prerequisites
 - Rose Pine themed Windows Terminal at windowsterminalthemes.dev 
 - Oh My Posh setup with tokyonight_storm theme for Powershell(initial setup), command prompt and WSL.

## Oh My Posh Configs 
##### Windows config:

 ` oh-my-posh init pwsh --config 'C:\Users\[USER FOLDER]\AppData\Local\Programs\oh-my-posh\themes\tokyonight_storm.omp.json' | Invoke-Expression `

##### CMD config with Cline:

`load(io.popen('oh-my-posh init cmd --config C:/Users/[USER FOLDER]/AppData/Local/Programs/oh-my-posh/themes/tokyonight_storm.omp.json'):read("*a"))()`

##### WSL bash config:

`eval "$(oh-my-posh init bash --config /mnt/c/Users/[USER FOLDER]/AppData/Local/Programs/oh-my-posh/themes/tokyo.omp.json)"`




## NEOVIM configs 


- :MasonInstall the languages you need
- configure none-ls for the lsp linting.
- Note: Setup the languages you require on lsp-config.lua. TreeSitter automatically installs the required language but it is okay to config treesitter.lua as well.
## Keybinds
- [space]fg --> opens telescope
- [space]gf --> formats the code
- [space]n --> opens filetree
- Shift + k --> shows code info
- [space]ca -->code actions
