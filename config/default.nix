{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [
    ./core/autocmd.nix
    ./core/options.nix
    ./core/keymaps.nix
    ./core/themes.nix
    ./plugins
  ];
  viAlias = true;
  vimAlias = true;
  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy.enable = true;
      xclip.enable = true;
    };
  };
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
  extraPackages = with pkgs; [
    ripgrep
    tmux-sessionizer
    # Debuggers / misc deps
    asm-lsp
    bashdb
    clang-tools
    delve
    fd
    gdb
    go
    lldb_17
    llvmPackages_17.bintools-unwrapped
    marksman
  ];
}
