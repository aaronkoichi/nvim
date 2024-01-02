-- Tree sitter setup
return {"nvim-treesitter/nvim-treesitter", 
build = ":TSUpdate",
config = function()
	-- treesitter function
	local configs = require("nvim-treesitter.configs")
	configs.setup({
		ensure_installed = {"vim", "vimdoc", "cmake", "lua", "javascript", "java", "c", "c_sharp", "cpp", "html", "css"},
		auto_install = true, -- installs any new language everytime TS has encountered. 	
		highlight = {enable = true},
		indent = {enable = true},
	})
end
}
