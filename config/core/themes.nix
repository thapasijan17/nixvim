{
    colorschemes.catppuccin = {
        enable = true;
        flavour = "macchiato";
        background = {
            light = "macchiato";
            dark = "mocha";
        };
        terminalColors = true;
        transparentBackground = false;
        integrations = {
            cmp = true;
            noice = true;
            notify = true;
            neotree = true;
            harpoon = true;
            gitsigns = true;
            which_key = true;
            illuminate = {
                enabled = true;
            };
            treesitter = true;
            treesitter_context = true;
            telescope.enabled = true;
            indent_blankline.enabled = true;
            mini.enabled = true;
            native_lsp = {
                enabled = true;
                inlay_hints = {
                    background = true;
                };
                underlines = {
                    errors = [ "underline" ];
                    hints = [ "underline" ];
                    information = [ "underline" ];
                    warnings = [ "underline" ];
                };
            };
        };
    };
  # Radium theme
  colorschemes.base16 = {
      enable = false;
      # colorscheme = "material-darker";
      colorscheme = {
          base00 = "#101317";
          base01 = "#1a1d21";
          base02 = "#23262a";
          base03 = "#2b2e32";
          base04 = "#323539";
          base05 = "#c5c5c6";
          base06 = "#cbcbcc";
          base07 = "#d4d4d5";
          base08 = "#37d99e";
          base09 = "#f0a988";
          base0A = "#e5d487";
          base0B = "#e87979";
          base0C = "#37d99e";
          base0D = "#5fb0fc";
          base0E = "#c397d8";
          base0F = "#e87979";
      };
  };
}
