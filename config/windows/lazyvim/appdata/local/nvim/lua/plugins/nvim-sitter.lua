return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      ensure_installed = { "html", "javascript", "glimmer" }, -- Add 'hbs' or 'handlebars'
      -- Add other configurations as needed
    })
  end,
}
