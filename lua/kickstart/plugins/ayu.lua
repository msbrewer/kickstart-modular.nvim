return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'Shatur/neovim-ayu',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('ayu').setup {
        overrides = {
          comments = { italic = false }, -- Disable italics in comments
          Normal = { bg = 'None' },
          NormalFloat = { bg = 'none' },
          ColorColumn = { bg = 'None' },
          SignColumn = { bg = 'None' },
          Folded = { bg = 'None' },
          FoldColumn = { bg = 'None' },
          CursorLine = { bg = 'None' },
          CursorColumn = { bg = 'None' },
          VertSplit = { bg = 'None' },
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'ayu'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
