{pkgs, ...}: {
  keymaps = [
    {
      mode = "n";
      key = "<leader><space>";
      action = "<CMD>lua require('telescope.builtin').find_files()<CR>";
      options.desc = "Find project files";
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "<CMD>lua require('telescope.builtin').live_grep";
      options.desc = "Grep (root dir)";
    }
    {
      mode = "n";
      key = "<leader>:";
      action = "<CMD>lua require('telescope.builtin').command_history()<CR>";
      options.desc = "Command History";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<CMD>lua require('telescope.builtin').find_files()<CR>";
      options.desc = "Find project files";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<CMD>lua require('telescope.builtin').oldfiles()<CR>";
      options.desc = "Find text";
    }
    {
      mode = "n";
      key = "<leader>fR";
      action = "<CMD>lua require('telescope.builtin').resume()<CR>";
      options.desc = "Resume";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<CMD>lua require('telescope.builtin').live_grep()<CR>";
      options.desc = "Recent";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<CMD>lua require('telescope.builtin').buffers()<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<C-p>";
      action = "<CMD>lua require('telescope.builtin').git_files()<CR>";
      options.desc = "Search git files";
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = "<CMD>lua require('telescope.builtin').git_commits()<CR>";
      options.desc = "Commits";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<CMD>lua require('telescope.builtin').git_status()<CR>";
      options.desc = "Status";
    }
    {
      mode = "n";
      key = "<leader>sa";
      action = "<CMD>lua require('telescope.builtin').autocommands()<CR>";
      options.desc = "Auto Commands";
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = "<CMD>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>";
      options.desc = "Buffer";
    }
    {
      mode = "n";
      key = "<leader>sc";
      action = "<CMD>lua require('telescope.builtin').command_history()<CR>";
      options.desc = "Command History";
    }
    {
      mode = "n";
      key = "<leader>sC";
      action = "<CMD>lua require('telescope.builtin').commands()<CR>";
      options.desc = "Commands";
    }
    {
      mode = "n";
      key = "<leader>sD";
      action = "<CMD>lua require('telescope.builtin').diagnostics()<CR>";
      options.desc = "Workspace diagnostics";
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = "<CMD>lua require('telescope.builtin').help_tags()<CR>";
      options.desc = "Help pages";
    }
    {
      mode = "n";
      key = "<leader>sH";
      action = "<CMD>lua require('telescope.builtin').highlights()<CR>";
      options.desc = "Search Highlight Groups";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = "<CMD>lua require('telescope.builtin').  keymaps()<CR>";
      options.desc = "  keymaps";
    }
    {
      mode = "n";
      key = "<leader>sM";
      action = "<CMD>lua require('telescope.builtin').man_pages()<CR>";
      options.desc = "Man pages";
    }
    {
      mode = "n";
      key = "<leader>sm";
      action = "<CMD>lua require('telescope.builtin').marks()<CR>";
      options.desc = "Jump to Mark";
    }
    {
      mode = "n";
      key = "<leader>so";
      action = "<CMD>lua require('telescope.builtin').vim_options()<CR>";
      options.desc = "Options";
    }
    {
      mode = "n";
      key = "<leader>sR";
      action = "<CMD>lua require('telescope.builtin').resume()<CR>";
      options.desc = "Resume";
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<CMD>lua require('telescope.builtin').colorscheme()<CR>";
      options.desc = "Colorscheme preview";
    }
  ];
  plugins = {
    telescope = {
      enable = true;
      extensions = {
        fzf-native = {
          enable = true;
        };
        ui-select = {
          enable = true;
        };
      };
      settings = {
        defaults = {
          border = {};
          layout_strategy = "horizontal";
          sorting_strategy = "ascending";
          set_env.COLORTERM = "truecolor";
          prompt_prefix = "   ";
          selection_caret = "  ";
          entry_prefix = "  ";
          color_devicons = true;
          layout_config = {
            horizontal = {
              prompt_position = "top";
            };
          };
          file_ignore_patterns = [
            "^node_modules/"
            "^.devenv/"
            "^.direnv/"
            "^.git/"
          ];
          borderchars = [
            "─"
            "│"
            "─"
            "│"
            "╭"
            "╮"
            "╯"
            "╰"
          ];
          vimgrep_arguments = [
            "${pkgs.ripgrep}/bin/rg"
            "-L"
            "--color=never"
            "--no-heading"
            "--with-filename"
            "--line-number"
            "--column"
            "--smart-case"
            "--fixed-strings"
          ];
          mappings = {
            i = {
              "<esc>" = "close";
              "<S-j>" = "move_selection_next";
              "<S-k>" = "move_selection_previous";
              "<C-j>" = "move_selection_next";
              "<C-k>" = "move_selection_previous";
            };
          };
        };
        pickers = {
          buffers = {
            # sort_lastused = true;
            previewer = false;

            layout_config = {
              width = 0.3;
              height = 0.4;
            };
            mappings = {
              "i" = {
                "<C-D>" = "delete_buffer";
              };
              "n" = {
                "dd" = "delete_buffer";
              };
            };
          };
        };
      };
    };
  };
}
