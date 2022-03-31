--https://github/kyazdani42/nvim-tree.lua


require("nvim-tree").setup(
    {
        --自动关闭
        auto_close = true,
        --视图
        view = {
            --宽度
            width = 30,
            --高度
            height = 30,
            --隐藏顶部的根目录显示
            hide_root_folder = false,
            --自动调整大小
            auto_resize = true
        },
        diagnostics = {
            --是否启用文件诊断信息
            enable = true,
            icons = {
                hint= "",
                info = "",
                warning = "",
                error = ""
            }
        },
            git = {
                --是否启用git信息
                enable = true,
                ignore = true,
                timeout = 500

            }
        }
)
--默认图标可自行修改
vim.g.nvim_tree_icons = {
    default = " ",
    symlink = " ",
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "",
        deleted = "",
        ignored = ""
    },
    foldr = {
        -- arrow_open = "╰─▸",
        -- arrow_closed = "├─▸",
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = ""
    }

}


--目录上加上反斜杠 ／
vim.g.nvim_add_trailing = 1

--按leader键打开文件树
vim.keybinds.gmap("n","<leader>1","<cmd>NvimTreeToggle<CR>",vim.keybinds.opts)
--按leader fc 在文件树中找到当前文件位置
vim.keybinds.gmap("n","<leader>fc","<cmd>NvimTreeFindFile<CR>",vim.keybinds.opts)


