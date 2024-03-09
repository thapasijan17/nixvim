{
  # Import all your configuration modules here
  imports = [
    ./core/options.nix
    ./core/keymaps.nix
    ./core/themes.nix
    ./plugins
  ];
  viAlias = true;
  vimAlias = true;
  clipboard.register = "unnamedplus";
  globals.mapleader = " ";

  # Misc plugins
  plugins = {
    nvim-autopairs.enable = true;
    which-key = {
      enable = true;
      showKeys = true;
    };
    markdown-preview = {
      enable = true;
    };
  };
}
