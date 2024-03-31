{
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
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
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
      extraOptions = {
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
      keymaps = {
        "<leader><space>" = {
          action = "find_files, {}";
          desc = "Find project files";
        };
        "<leader>/" = {
          action = "live_grep";
          desc = "Grep (root dir)";
        };
        "<leader>:" = {
          action = "command_history, {}";
          desc = "Command History";
        };
        "<leader>ff" = {
          action = "find_files, {}";
          desc = "Find project files";
        };
        "<leader>fr" = {
          action = "oldfiles, {}";
          desc = "Find text";
        };
        "<leader>fR" = {
          action = "resume, {}";
          desc = "Resume";
        };
        "<leader>fg" = {
          action = "live_grep, {}";
          desc = "Recent";
        };
        "<leader>fb" = {
          action = "buffers, {}";
          desc = "Buffers";
        };
        "<C-p>" = {
          action = "git_files, {}";
          desc = "Search git files";
        };
        "<leader>gc" = {
          action = "git_commits, {}";
          desc = "Commits";
        };
        "<leader>gs" = {
          action = "git_status, {}";
          desc = "Status";
        };
        "<leader>sa" = {
          action = "autocommands, {}";
          desc = "Auto Commands";
        };
        "<leader>sb" = {
          action = "current_buffer_fuzzy_find, {}";
          desc = "Buffer";
        };
        "<leader>sc" = {
          action = "command_history, {}";
          desc = "Command History";
        };
        "<leader>sC" = {
          action = "commands, {}";
          desc = "Commands";
        };
        "<leader>sD" = {
          action = "diagnostics, {}";
          desc = "Workspace diagnostics";
        };
        "<leader>sh" = {
          action = "help_tags, {}";
          desc = "Help pages";
        };
        "<leader>sH" = {
          action = "highlights, {}";
          desc = "Search Highlight Groups";
        };
        "<leader>sk" = {
          action = "keymaps, {}";
          desc = "Keymaps";
        };
        "<leader>sM" = {
          action = "man_pages, {}";
          desc = "Man pages";
        };
        "<leader>sm" = {
          action = "marks, {}";
          desc = "Jump to Mark";
        };
        "<leader>so" = {
          action = "vim_options, {}";
          desc = "Options";
        };
        "<leader>sR" = {
          action = "resume, {}";
          desc = "Resume";
        };
        "<leader>cs" = {
          action = "colorscheme, {}";
          desc = "Colorscheme preview";
        };
      };
    };
  };
}
