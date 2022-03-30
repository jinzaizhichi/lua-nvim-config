--是否将tab替换为space
vim.bo.expandtab = false
--换行或>> << 缩进的space数量
vim.bo.shiftwidth = 4
--一个tab占几个space
vim.bo.tabstop = 4
--tab和space的混合，和上面2个设置相同即可
vim.bo.softtabstop = 4
--空格表现为 . ,回车表现为 弯勾
vim.opt.listchars:append("space:.")
vim.opt.listchars:append("eol:↴")
