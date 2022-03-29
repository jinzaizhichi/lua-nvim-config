

--leader 键设置为空格
vim.g.mapleader = " "


--默认的按键设置函数太长了，所以这里把它们重新引用一下
vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true,silent = true}
}



--插入模式下，jj退出插入模式
vim.keybinds.gmap("i","jj","<Esc>",vim.keybinds.opts)


--用 H 和 L 代替  ^ 与 $
vim.keybinds.gmap("n","H","^",vim.keybinds.opts)
vim.keybinds.gmap("v","H","^",vim.keybinds.opts)
vim.keybinds.gmap("n","L","$",vim.keybinds.opts)
vim.keybinds.gmap("v","L","$",vim.keybinds.opts)


--C-u和 C-d 调整为上下滑动10行而不是半页
vim.keybinds.gmap("n","<C-u>","10k",vim.keybinds.opts)
vim.keybinds.gmap("n","<C-d>","10j",vim.keybinds.opts)
