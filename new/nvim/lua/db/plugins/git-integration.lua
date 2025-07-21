return {
    {
        "tpope/vim-fugitive"
    },
    {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add          = { text = '+' },
      change       = { text = '~' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      local map = vim.keymap.set
      map('n', ']c', gs.next_hunk, {buffer = bufnr})
      map('n', '[c', gs.prev_hunk, {buffer = bufnr})
      map('n', '<leader>ph', gs.preview_hunk, {buffer = bufnr})
      map('n', '<leader>hs', gs.stage_hunk, {buffer = bufnr})
    end
  }
}

}
