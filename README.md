## Screenshots

![Screenshot of alpha.lua](https://github.com/aaronkoichi/nvim/blob/master/Images/Screenshot_4.png?raw=true)
![Screenshot of Neovim](https://github.com/aaronkoichi/nvim/blob/master/Images/Screenshot_5.png?raw=true)

## Prerequisites

- Oh My Posh setup with tokyo theme for Powershell(initial setup), command prompt and WSL.
- Rose Pine themed Windows Terminal at windowsterminalthemes.dev
- Font config CaskaydiaCove Nerd Font.
- Terminal font 14px (100% screen), 1.1 line height


- # Oh My Posh Configs

##### Windows config:

`oh-my-posh init pwsh --config 'C:\Users\[USER FOLDER]\AppData\Local\Programs\oh-my-posh\themes\catppuccin_mocha.omp.json' | Invoke-Expression`

##### CMD config with Cline:

`load(io.popen('oh-my-posh init cmd --config C:/Users/[USER FOLDER]/AppData/Local/Programs/oh-my-posh/themes/catppuccin_mocha.omp.json'):read("*a"))()`

##### WSL bash config:

`eval "$(oh-my-posh init bash --config /mnt/c/Users/[USER FOLDER]/AppData/Local/Programs/oh-my-posh/themes/catppuccin_mocha.omp.json)"`

## NEOVIM configs

- :MasonInstall the languages you need
- configure none-ls for the lsp linting.
- Note: Setup the languages you require on lsp-config.lua. TreeSitter automatically installs the required language but it is okay to config treesitter.lua as well.
