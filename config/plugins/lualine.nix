{
  plugins = {
    lualine = {
      enable = true;
      #iconsEnabled = true;
      globalstatus = true;
      extensions = [ "nvim-tree" "nvim-dap-ui" "toggleterm" "quickfix" ];
      disabledFiletypes = {
        statusline = [ "dashboard" "alpha" ];
      };
      sectionSeparators.left = "";
      sectionSeparators.right = "";
      componentSeparators.left = "";
      componentSeparators.right = "";
      sections.lualine_c = ["filename"];
      sections.lualine_x = ["location"];
      tabline = {};
      winbar = {};
      inactiveWinbar = {};
      refresh = {
        statusline = 1000;
        tabline = 1000;
        winbar = 1000;
      };
    };
  };
}
