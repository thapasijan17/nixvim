{
  keymaps = [
    # Useful keymaps
    {
      mode = "n";
      key = "<leader>sr";
      action = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>";
      options = {
        desc = "Rename symbol with regex";
      };
    }
    {
      mode = "n";
      key = "<leader>fy";
      action = "<CMD> %y <CR>";
      options = {
        desc = "Yank file contents";
      };
    }
    {
      mode = "n";
      key = "<leader>fp";
      action = "<CMD> %d_<CR>Vp";
      options = {
        desc = "Paste file contents";
      };
    }

    # Window navigation
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w><C-k>";
      options = {
        desc = "Cycle to top window";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w><C-j><CMD>startinsert<CR>";
      options = {
        desc = "Cycle to bottom window";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w><C-l>";
      options = {
        desc = "Cycle to right window";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w><C-h>";
      options = {
        desc = "Cycle to left window";
      };
    }

    # Buffer
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Delete buffer";
      };
    }
  ];
}
