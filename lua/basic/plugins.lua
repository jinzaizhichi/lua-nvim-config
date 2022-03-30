

--@diagnostic disable: undifinde-global
--http://github.com/wbthomason/packer.nvim


local packer = require("packer")
packer.startup(
    {
        --所有插件的安装都写在function中
        function()
            --包管理器
            use {
                "wbthomason/packer.nvim"
            }


            --安装其他插件
            
            --中文文档
            use {
                "yianwillis/vimcdoc",
            }


        end,
        --使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            }
        }


    }
)

--实时生效配置
vim.cmd(
    [[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | packerCompile
    augroup end

    ]]
)
