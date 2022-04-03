

--http://github.com/akinsho/bufferline.nvim

require("bufferline").setup(
     {
       options = {
         --为每一个buffer都配置一个序数o
         numbers = "ordinal",
         --使用内置Lsp进行诊断
         diagnostics = "nvim_lsp",
         --不建议更改图标
         indiator_icon = "▎",
         buffer_close_icon = "",
         modified_icon = "●",
         close_icon = "",
         left_trunc_marker = "",
         right_trunc_marker = "",
         -- 分割符样式："slant" | "thick" | "thin"
         -- 如果是透明背景，不推荐使用 slant
         separator_style = "thin",
          -- 左侧让出 nvim-tree 的位置
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              text_align = "left"
            }
          },

          --显示LSP报错信息
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = ""
            for e, n in pairs(diagnostics_dict) do
                 local sym = e == "error" and " " or (e == "warning" and " " or "")
                 s = s .. n .. sym

             end
             return s

          end
       }
     }
)

--关闭当期buffer，由bufdelete插件所提供的方法
vim.keybinds.gmap("n","<C-q>","<cmd>bdelete!<CR>",vim.keybinds.opts)
--切换上一个缓冲区
vim.keybinds.gmap("n","<C-h>","<cmd>BufferLineCyclePrev<CR>",vim.keybinds.opts)
--切换到下一个缓冲区
vim.keybinds.gmap("n","<C-l>","<cmd>BufferLineCycleNext<CR>",vim.keybinds.opts)
--关闭左缓冲区
vim.keybinds.gmap("n","<leader>bh","<cmd>BufferLineCloseLeft<CR>",vim.keybinds.opts)
--关闭右缓冲区
vim.keybinds.gmap("n","<leader>bl","<cmd>BufferLineCloseRight<CR>",vim.keybinds.opts)

