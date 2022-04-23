

--https://github.com/rmagatti/auto-session


--推荐配置

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

require("auto-session").setup(
    {

        --自动加载最后保存的一次会话
        auto_session_enable_last_session = true,
        --保存会话时自动关闭nvim-tree
        --这是因为nvim-tree如果处于开启
        --状态，会破坏会话的保存
        pre_save_cmds = {"tabdo NvimTreeClose"}


    }
)


--在每次退出neovim时自动保存会话
--其实该插件不加这个自动命令也能
--自动保存会话，但总感觉不联想
--所以这里我自己加了自动命令
vim.cmd([[
    autocmd vimLeavePre * silent! :SaveSession
]])
