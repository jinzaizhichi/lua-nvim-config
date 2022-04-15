

--https://github.com/mbbill/undotree


vim.cmd(
    [[
if has("persistent_undo")
   "在config.lua中定义好undotree_dir全局变量
   let target_path = expand(undotree_dir)
   if !isdirectory(target_path)
     call madir(target_path,"p",0700)
   endif
   let &undodir = target_path
   set undofile
    ]]
)


--按键绑定查看undotree
vim.keybinds.gmap("n", "<leader>3", ":UndotreeToggle<CR>", vim.keybinds.opts)
