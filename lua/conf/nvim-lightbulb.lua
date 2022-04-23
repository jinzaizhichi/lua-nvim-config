

--https://github.com/kosayoda/nvim-lightbulb

vim.cmd([[autocmd CursorHold, CursorHold * lua require'nvim-lightbulb'.update_lightbulb()]])
