-- Put as additional config in config.lua inside ~/.config/lvim/
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.wrap = true -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "110"

-- Config for Neovide
vim.opt.guifont = "JetBrainsMono Nerd Font Mono:h9.5"
vim.cmd("let g:neovide_fullscreen= v:true")
vim.cmd("let g:neovide_cursor_vfx_mode= 'torpedo'")
vim.cmd("let g:neovide_cursor_animation_length=0.1")
vim.cmd("let g:neovide_cursor_trail_size=0.8")
vim.cmd("let g:neovide_cursor_vfx_lifetime=1")
vim.cmd("let g:neovide_cursor_vfx_particle_density=50")
vim.cmd("let g:neovide_cursor_vfx_particle_speed=30")
vim.cmd("let g:neovide_cursor_vfx_opacity=150.0")
vim.cmd("let g:neovide_cursor_animate_in_insert_mode= v:true")
vim.cmd("let g:neovide_hide_mouse_when_typing= v:true")
vim.cmd("let g:neovide_no_idle=v:true")
vim.cmd("let g:neovide_refresh_rate=120")
