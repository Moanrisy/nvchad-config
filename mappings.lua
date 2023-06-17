local M = {}

M.myown = {
  n = {
    ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "Find files"},
  }
}

M.possession = {
  plugin = true,
  n = {
    ["<leader>pp"] = {
      function ()
        require('telescope').extensions.possession.list();
      end,
      "List projects"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
