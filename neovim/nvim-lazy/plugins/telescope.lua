return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  opts = {
    estensions = {
      fzf = {
        fuzxzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mose = "smart_case",
      },
    },
  },
  config = function(opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("fzf")
  end,
  keys = {
    {
      "<leader>tf",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Telescope Find Files",
    },
    {
      "<leader>th",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "Telescope Help",
    },
    {
      "<leader>tb",
      function()
        require("telescope").extensions.file_browser.file_browser({
          path = "%:h:p",
          select_buffer = true,
          sorting_strategy = "ascending",
          grouped = true,
        })
      end,
      desc = "Telescope file browser",
    },
  },
}
