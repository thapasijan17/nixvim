{pkgs, ...}: {
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
  #extraPlugins = [
  #  (pkgs.vimUtils.buildVimPlugin {
  #    name = "nixvim-plenary";
  #    src = pkgs.fetchFromGitHub {
  #      owner = "nvim-lua";
  #      repo = "plenary.nvim";
  #      rev = "f7adfc4b3f4f91aab6caebf42b3682945fbc35be";
  #      hash = "sha256-/ltkFqa5MTAI9z8oLv7+5SJ/Qq9l1kkuKGD955NbLi8=";
  #    };
  #  })
  #];
  extraPackages = with pkgs; [
    ripgrep
    tmux-sessionizer
    # Formatters
    alejandra
    asmfmt
    astyle
    black
    cmake-format
    gofumpt
    golines
    gotools
    isort
    nodePackages.prettier
    prettierd
    rustfmt
    shfmt
    stylua
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
    # Linters
    commitlint
    eslint_d
    golangci-lint
    hadolint
    html-tidy
    luajitPackages.luacheck
    markdownlint-cli
    nodePackages.jsonlint
    pylint
    ruff
    shellcheck
    vale
    yamllint
  ];
}
