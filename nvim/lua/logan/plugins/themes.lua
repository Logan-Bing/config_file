return {
	'ThorstenRhau/token',
	lazy = false,      -- charger au démarrage
	priority = 1000,   -- charger avant les autres plugins
	config = function()
	vim.cmd.colorscheme('token')
	end,
}
