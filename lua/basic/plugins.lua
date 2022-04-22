

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
            --use {
            --    "windwp/windline.nvim",
            --    config = function()
            --        --插件加载完成后自动运行lua/conf/windline.lua文件中的代码
            --        require("conf.windline")
            --    end
            --}
           -- staline状态栏插件
             use {
                  "tamton-aquib/staline.nvim",
                  config = function()
                      require("conf.staline")
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
                tag = "*",
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
            --包裹修改
            use {
              "ur4ltz/surround.nvim",
              config = function()
                 require("conf.surround")
              end
            }
            --显示光标下相同词汇
            use {
              "RRethy/vim-illuminate",
              config = function ()
                 require("conf.vim-illuminate")
              end
            }


            --拼写检查器
            use {
              "lewis6991/spellsitter.nvim",
                config = function()
                    require("conf.spellsitter")
                end
            }
            --自动保存
            use {
                "Pocco81/AutoSave.nvim",
                config = function()
                  require("conf.AutoSave")
                end
            }
            --自动恢复光标位置
            use {
                "ethanholz/nvim-lastplace",
                 config = function()
                  require("conf.nvim-lastplace")
              end
            }
            --自动会话管理
            use {
                  "rmagatti/auto-session",
                  config = function()
                      require("conf.auto-session")
                  end
            }

            --全局替换
            use {
                  "nvim-pack/nvim-spectre",
                  requires = {
                    "nvim-lua/plenary.nvim",  --lua开发模块
                    "BurntSushi/ripgrep"    --文字查找
                  },
                  config = function()
                      require("conf.nvim-spectre")
                  end
            }
            --多光标模式
            use {
              "terryma/vim-multiple-cursors",
              config = function()
                  require("conf.vim-multiple-cursors")
              end
            }
          --显示滚动条
             use {
                  "petertriho/nvim-scrollbar",
                  config = function()
                      require("conf.nvim-scrollbar")
                  end
             }
             --显示网页色
             use {
                  "norcalli/nvim-colorizer.lua",
                  config = function()
                   require("conf.nvim-colorizer")
                  end
             }
             --lazygit
             use {
                  "kdheepak/lazygit.nvim"
             }
             --内置终端
             use {
                  "akinsho/toggleterm.nvim",
                  config = function()
                      require("conf.toggleterm")
                  end
             }
             --undo tree
             use {
               "mbbill/undotree",
               config = function()
                   require("conf.undotree")
               end
             }
             --git copilot自动补全
             use {
               "github/copilot.vim",
               config = function()
                   require("conf.copilot")
               end
             }
             --键位绑定器
             use {
               "folke/which-key.nvim",
               config = function()
                  require("conf.which-key")
               end
             }
             --模糊查找
             use {
               "nvim-telescope/telescope.nvim",
               requires = {
                  "nvim-lua/plenary.nvim", --lua开发的模块
                  "BurntSushi/ripgrep", --文字查找
                  "sharkdp/fd"   --文件查找
                },
               config = function()
                   require("conf.telescope")
               end
             }
             --nordtheme
             use {
               "arcticicestudio/nord-vim",
               branch = 'develop'
             }
             --notify精美通知
             use {
               "rcarriga/nvim-notify",
               config = function()
                   require("conf.nvim-notify")
               end
             }
             --TODO tree
             use {
               "folke/todo-comments.nvim",
               config = function()
                  require("conf.todo-comments")
               end
             }
             --LSP基础服务
             use {
                   "neovim/nvim-lspconfig",
                   config = function()
                       require("conf.nvim-lspconfig")
                   end
             }
             --自动安装 LSP
             use {
                   "williamboman/nvim-lsp-installer",
                   config = function()
                       require("conf.nvim-lsp-installer")
                   end
             }
             --LSP UI 美化
             use {
                  "tami5/lspsaga.nvim",
                  config = function()
                      require("conf.lspsaga")
                  end
             }
             --lsp进度提示
             use {
                   "j-hui/fidget.nvim",
                   config = function()
                      require("conf.fidget")
                   end
             }
             --语法高亮
             use {
                   "nvim-treesitter/nvim-treesitter",
                   run = {":TSupdate"},
                   requires = {
                        "p00f/nvim-ts-rainbow"  --彩虹括号
                   },
                   config = function()
                      require("conf.nvim-treesitter")
                   end
             }
             --插入模式获得函数签名
             use {
                  "ray-x/lsp_signature.nvim",
                  config = function()
                      require("conf.lsp_signature")
                  end
             }
             --灯泡提示代码行为
             use {
                  "kosayoda/nvim-lightbulb",
                  config = function ()
                     require("conf.nvim-lightbulb")
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
