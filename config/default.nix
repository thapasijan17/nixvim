{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./core
    ./themes
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
    tmux-navigator.enable = true;
    zellij = {
      enable = true;
      settings = {
        vimTmuxNavigatorKeybinds = true;
      };
    };
    nvim-autopairs.enable = true;
    lastplace.enable = true;
    # surround.enable = true;
    # commentary.enable = true;
    which-key = {
      enable = true;
      showKeys = true;
    };
    markdown-preview = {
      enable = true;
    };
  };
  extraPackages = with pkgs; [
    # ripgrep
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
    # eslint_d
    golangci-lint
    hadolint
    html-tidy
    luajitPackages.luacheck
    markdownlint-cli
    nodePackages.jsonlint
    pylint
    ruff
    # shellcheck
    vale
    yamllint
  ];
}
