{
  plugins = {
    treesitter-context = {enable = false;};
    treesitter = {
      enable = true;
      nixvimInjections = true;
      nixGrammars = true;
      folding = false;
      settings = {
        incremental_selection.enable = true;
        indent.enable = true;
        ensure_installed = [
          "bash"
          "c"
          "c_sharp"
          "cmake"
          "cpp"
          "gitcommit"
          "gitignore"
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
  };
}
