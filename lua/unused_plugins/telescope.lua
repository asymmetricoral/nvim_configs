local filebrowser_actions = require("telescope").extensions.file_browser.actions
local builtin = require("telescope.builtin")

return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      
      vim.keymap.set("n", "<space>cfg", function()
        local opts = require("telescope.themes").get_dropdown({
          cwd = vim.fn.stdpath("config")
        })
        builtin.find_files(opts)
      end)

      extensions = {
        file_browser = {
          mappings = {
            ["n"] = {
              ["ø"] = ":Telescope file_browser<CR>",
              ["ç∂"] = filebrowser_actions.change_cwd
            }
          }
        }
      }
    end,

    
  }
}
