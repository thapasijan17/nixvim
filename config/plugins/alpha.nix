{
  plugins = {
    alpha = {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 4;
        }
        {
          type = "text";
          val = [
            "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
            "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ];
          opts = {
            position = "center";
            hl = "Type";
          };
        }
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "AlphaButtons";
            position = "center";
            spacing = 1;
          };
          type = "group";
          val = let
            mkButton = shortcut: cmd: val: {
              type = "button";
              inherit val;
              on_press.raw = cmd;
              opts = {
                keymap = [
                  "n"
                  "<leader>${shortcut}"
                  cmd
                  # {}
                  {
                    noremap = true;
                    silent = true;
                    nowait = true;
                    desc = val;
                  }
                ];
                shortcut = "SPC ${shortcut}";
                position = "center";
                cursor = 3;
                width = 40;
                align_shortcut = "right";
                # hl = "AlphaButtons";
                hl_shortcut = "Keyword";
              };
            };
          in [
            (
              mkButton
              "ff"
              "<CMD>lua require('telescope.builtin').find_files()<CR>"
              "󰈞  Find file"
            )
            (
              mkButton
              "fn"
              ":ene <BAR> startinsert<CR>"
              "  New file"
            )
            (
              mkButton
              "fr"
              "<CMD>lua require('telescope.builtin').oldfiles()<CR>"
              "󰊄  Recently used files"
            )
            (
              mkButton
              "fg"
              "<CMD>lua require('telescope.builtin').live_grep()<CR>"
              "󰈬  Live grep"
            )
            (
              mkButton
              "cf"
              "<CMD>e ~/NixOS/<CR>"
              "  Configuration"
            )
            # (
            #   mkButton
            #   "rs"
            #   "<CMD>lua require('persistence').load()<CR>"
            #   "  Restore Session"
            # )
            (
              mkButton
              "qn"
              "<CMD>qa<CR>"
              "  Quit Neovim"
              # "󰅚  Quit Neovim"
            )
          ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = "Better than neovim.";
          opts = {
            position = "center";
            # hl = "Keyword";
            hl = "AlphaButtons";
          };
        }
      ];
    };
  };
}
