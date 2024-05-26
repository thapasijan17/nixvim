{
  plugins = {
    treesitter-context = {enable = false;};
    treesitter = {
      enable = true;
      nixvimInjections = true;
      incrementalSelection.enable = true;
      nixGrammars = true;
      indent = true;
      folding = false;
      ensureInstalled = [
        "bash"
        "c"
        "c_sharp"
        "cmake"
        "cpp"
        "gitcommit"
        "gitignroe"
        "lua"
        "make"
        "markdown"
        "markdown_inline"
        "nix"
        "org"
        "python"
        "regex"
        "rust"
        "toml"
        "vim"
        "yaml"
        "zig"
      ];
    };
  };
}
