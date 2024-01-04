return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set('n', '<C-p>', vim.cmd.UndotreeToggle)
	end  

}
