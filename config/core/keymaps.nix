{
  keymaps = [
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
