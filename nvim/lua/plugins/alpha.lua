return {
  "goolord/alpha-nvim",
  config = function()
	local alpha = require('alpha')
	local dashboard = require('alpha.themes.dashboard')	
    local logo = [[
		                                                                       
		                                                                       
		                                                                     
		       ████ ██████           █████      ██                     
		      ███████████             █████                             
		      █████████ ███████████████████ ███   ███████████   
		     █████████  ███    █████████████ █████ ██████████████   
		    █████████ ██████████ █████████ █████ █████ ████ █████   
		  ███████████ ███    ███ █████████ █████ █████ ████ █████  
		 ██████  █████████████████████ ████ █████ █████ ████ ██████ 
		                                                                       
		                        [ @gambhir_sharma]                        
		                                                                       
    ]]
    dashboard.section.header.val = vim.split(logo, "\n", { trimempty = true })
	alpha.setup(dashboard.opts)	
  end,
}

