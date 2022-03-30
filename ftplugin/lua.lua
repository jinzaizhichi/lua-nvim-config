--lua缩进配置
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
--取消自动注释，当前行是-- 注释时，按下CR 或者 o 默认会自动注释下一行，这里取消
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"c","r","o"}
