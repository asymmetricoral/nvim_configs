local M = {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function ()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")
      local actions = require("telescope.actions")
      local fb_actions = require("telescope").extensions.file_browser.actions
      
      vim.keymap.set("n", "ø", ":Telescope file_browser<CR>")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })

      telescope.setup({
          extensions = {
          file_browser = {
            mappings = {
              ["i"] = {
                ["<C-c>"] = fb_actions.create,
                ["<C-h>"] = fb_actions.toggle_hidden,
              },
              ["n"] = {
                ["ç∑∂"] = fb_actions.goto_cwd,
                ["ç∂"] = fb_actions.change_cwd,
                ["®"] = fb_actions.rename,
                ["≥"] = fb_actions.open,
                ["®µ"] = fb_actions.remove
              },
            },
          },
        }
      })

      telescope.load_extension("file_browser")
    end
}

return { M }
