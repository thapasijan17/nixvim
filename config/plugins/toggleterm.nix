{
  keymaps = [
    {
      mode = "n";
      key = "<M-f>";
      action = "<CMD>lua require('toggleterm').toggle()<CR>";
      options = {
        desc = "Open";
      };
    }
    {
      mode = "t";
      key = "<M-f>";
      action = "<C-\\><C-n><CMD>lua require('toggleterm').toggle()<CR>";
      options = {
        desc = "Close";
      };
    }
  ];
  plugins = {
    toggleterm = {
      enable = true;
      direction = "float";
      startInInsert = true;
      size = 12;
      onOpen = ''
        function()
          vim.cmd("startinsert!")
        end
      '';
      floatOpts = {
        border = "rounded";
        width = 155;
        height = 35;
      };
    };
  };
}
