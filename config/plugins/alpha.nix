{
  plugins = {
    alpha = {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 2;
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
          val = 
            let
            mkButton = shortcut: cmd: val: {
              type = "button";
              inherit val;
              opts = {
                keymap = [
                  "n"
                    shortcut
                    cmd
                    { }
                ];
                shortcut = shortcut;
                position = "center";
                cursor = 3;
                width = 40;
                align_shortcut = "right";
                hl = "AlphaButtons";
              };
            };
          in
          [
            (
              mkButton
              "ff"
              ":Telescope find_files <CR>"
              "󰈞  Find file"
            )
            (
              mkButton
              "fn"
              ":ene <BAR> startinsert <CR>"
              "  New file"
            )
            (
              mkButton
              "fr"
              ":Telescope oldfiles <CR>"
              "󰊄  Recently used files"
            )
            (
              mkButton
              "fg"
              ":Telescope live_grep <CR>"
              "󰈬  Live grep"
            )
            (
              mkButton
              "cf"
              ":e ~/NixOS/home/programs/nixvim/defaul.nix<CR>"
              "  Configuration"
            )
            (
              mkButton
              "qn"
              ":qa<CR>"
              "󰅚  Quit Neovim"
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
            hl = "Keyword";
          };
        }
      ];
    };
  };
}
