{
  plugins = {
    trouble.enable = true;
    gitsigns = {
      enable = true;
      settings = {
        trouble = true;
        currentLineBlame = true;
        signs = {
          add = {
            text = "│";
          };
          change = {
            text = "│";
          };
          delete = {
            text = "_";
          };
          topdelete = {
            text = "‾";
          };
          changedelete = {
            text = "~";
          };
          untracked = {
            text = "│";
          };
        };
      };
    };
  };
}
