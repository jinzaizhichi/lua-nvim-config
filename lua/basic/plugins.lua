

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
            --nvim-tree
            use {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    --依赖一个图标插件
                    "kyazdani42/nvim-web-devicons"
                },
                config = function()
                    --插件加载完成后自动运行lua/con/nivm-tree.lua
                    require("conf.nvim-tree")
                end
            }
            --set:.editconfig
            use {
                "editorconfig/editorconfig-vim"
            }
            --优秀的暗色主题
            use {
                "catppuccin/nvim",
                --改个别名，应为他的名字是nvim,可能会冲突
                as = "catppuccin",
                config = function()
                   --插件加载后自动运行lua/conf/catppuccin.lua文件中的代码
                   require("conf.catppuccin")
                end
            }
            --炫酷的状态栏插件
            use {
                "windwp/windline.nvim",
                config = function()
                    --插件加载完成后自动运行lua/conf/windline.lua文件中的代码
                    require("conf.windline")
                end
            }


            --为了让状态栏显示git状态，所以这个插件是必须的
            use {
                "lewis6991/gitsigns.nvim",
                requires = {
                    --依赖此插件（一款lua开发使用的插件）
                    "nvim-lua/plenary.nvim"

                },
                config = function()
                    require("gitsigns").setup()
                end
            }
            --支持LSP状态的buffer栏
            use {
                "akinsho/bufferline.nvim",
                require = {
                    "famiu/bufdelete.nvim"
              },
                config = function()
                require("conf.bufferline")

              end
            }
            --搜索文档
            use {
                  "kevinhwang91/nvim-hlslens",
                  config = function ()
                      require("conf.nvim-hlslens")

                  end
            }
            --自动计时插件
            use {
              "wakatime/vim-wakatime"
            }
            --显示缩进线
            use {
                  "lukas-reineke/indent-blankline.nvim",
                   config = function()
                      require("conf.indent-blankline")
                  end

            }
            --自动匹配括号
            use {
              "windwp/nvim-autopairs",
               config = function()
                  require("conf.nvim-autopairs")
                end
            }
            --快速更改单词
            use {
              "AndrewRadev/switch.vim",
              config = function()
                require("conf.switch")
              end
            }
            --快速跳转
            use {
              "phaazon/hop.nvim",
              config = function()
                  require("conf.hop")
              end
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
