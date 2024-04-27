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
      key = "<C-s>";
      action = "<CMD>w<CR>";
      options = {
        desc = "Save file";
      };
    }
    {
      mode = "n";
      key = "<leader>qq";
      action = "<CMD>quitall<CR>";
      options = {
        desc = "Quit all";
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
    {
      mode = "n";
      key = "<ESC>";
      action = "<CMD>nohlsearch<CR>";
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
      action = "<CMD>bdelete<CR>";
      options = {
        desc = "Delete buffer";
      };
    }

    # Move text up and down
    {
      mode = "n";
      key = "<A-k>";
      action = "<CMD>m .-2<CR>==";
      options = {
        desc = "Move text up";
      };
    }
    {
      mode = "n";
      key = "<A-j>";
      action = "<CMD>m .+1<CR>==";
      options = {
        desc = "Move text down";
      };
    }
    {
      mode = ["v" "x"];
      key = "<A-k>";
      action = "<CMD>m '<-2<CR>gv=gv";
      options = {
        desc = "Move text up";
      };
    }
    {
      mode = ["v" "x"];
      key = "<A-j>";
      action = "<CMD>m '>+1<CR>gv=gv";
      options = {
        desc = "Move text down";
      };
    }
    {
      mode = "x";
      key = "K";
      action = "<CMD>m '<-2<CR>gv=gv";
      options = {
        desc = "Move text up";
      };
    }
    {
      mode = "x";
      key = "J";
      action = "<CMD>m '>+1<CR>gv=gv";
      options = {
        desc = "Move text down";
      };
    }
  ];
}
