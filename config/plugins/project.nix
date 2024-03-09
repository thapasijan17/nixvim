{
  plugins = {
    project-nvim = {
      enable = true;
      detectionMethods = [
        "lsp"
        "pattern"
      ];
      excludeDirs = [
        "~/.local/*"
        "~/.cache/*"
        "~/.cargo/*"
        "~/.node_modules/*"
        "~/.pnpm-store/*"
        "~/.local/share/pnpm/*"
      ];
      patterns = [
        "*.sln"
        ".git"
        ".vs"
        ".vscode"
        ".hg"
        ".bzr"
        ".svn"
        "_darcs"
        "!>home"
        "!=tmp"
        "Cargo.toml"
        "CMakeLists.txt"
        "Makefile"
        "meson.build"
        "PKGBUILD"
        "LICENSE"
        "README.md"
        "package.json"
        "composer.json"
        "lazy-lock.json"
      ];
    };
  };
}
