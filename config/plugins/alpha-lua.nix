{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "alpha-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "goolord";
        repo = "alpha-nvim";
        rev = "41283fb402713fc8b327e60907f74e46166f4cfd";
        hash = "sha256-kTVPKZ/e1us/uHfSwFwR38lFYN8EotJq2jKz6xm/eqg=";
      };
    })
  ];
  extraConfigLua = ''
    local status_ok, alpha = pcall(require, "alpha")
        if not status_ok then
            return
        end

        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.buttons.val = {
            dashboard.button("ff", "󰈞  Find file", ":Telescope find_files <CR>"),
            dashboard.button("fn", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("fr", "󰊄  Recently used files", ":Telescope oldfiles <CR>"),
            dashboard.button("fg", "󰈬  Live grep", ":Telescope live_grep <CR>"),
            dashboard.button("cf", "  Configuration", ":e /etc/nixos/flake.nix<CR>"),
            dashboard.button("qn", "󰅚  Quit Neovim", ":qa<CR>"),
        }

        -- define startup ascii art here.
        --dashboard.section.header.val = {  }

        alpha.setup(dashboard.opts)
  '';
}
