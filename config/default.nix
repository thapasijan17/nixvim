{
  # Import all your configuration modules here
  imports = [
    ./core/options.nix
    ./core/themes.nix
    ./plugins
  ];
  viAlias = true;
  vimAlias = true;
  clipboard.register = "unnamedplus";
  globals.mapleader = " ";
}
