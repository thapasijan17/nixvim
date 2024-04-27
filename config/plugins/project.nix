{
  plugins = {
    project-nvim = {
      enable = true;
      enableTelescope = true;
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
        "flake.nix"
        "flake.lock"
        "LICENSE"
        "README.md"
        "CMakeLists.txt"
        "Makefile"
        "meson.build"
        "PKGBUILD"
        "Cargo.toml"
        "package.json"
        "composer.json"
        "lazy-lock.json"
        "!>home"
        "!=tmp"
        ".git"
        "*.sln"
        ".vs"
        ".vscode"
        ".hg"
        ".bzr"
        ".svn"
        "_darcs"
      ];
    };
  };
}
