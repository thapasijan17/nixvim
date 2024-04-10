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
      settings = {
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
          options.desc = "Find project files";
        };
        "<leader>/" = {
          action = "live_grep";
          options.desc = "Grep (root dir)";
        };
        "<leader>:" = {
          action = "command_history, {}";
          options.desc = "Command History";
        };
        "<leader>ff" = {
          action = "find_files, {}";
          options.desc = "Find project files";
        };
        "<leader>fr" = {
          action = "oldfiles, {}";
          options.desc = "Find text";
        };
        "<leader>fR" = {
          action = "resume, {}";
          options.desc = "Resume";
        };
        "<leader>fg" = {
          action = "live_grep, {}";
          options.desc = "Recent";
        };
        "<leader>fb" = {
          action = "buffers, {}";
          options.desc = "Buffers";
        };
        "<C-p>" = {
          action = "git_files, {}";
          options.desc = "Search git files";
        };
        "<leader>gc" = {
          action = "git_commits, {}";
          options.desc = "Commits";
        };
        "<leader>gs" = {
          action = "git_status, {}";
          options.desc = "Status";
        };
        "<leader>sa" = {
          action = "autocommands, {}";
          options.desc = "Auto Commands";
        };
        "<leader>sb" = {
          action = "current_buffer_fuzzy_find, {}";
          options.desc = "Buffer";
        };
        "<leader>sc" = {
          action = "command_history, {}";
          options.desc = "Command History";
        };
        "<leader>sC" = {
          action = "commands, {}";
          options.desc = "Commands";
        };
        "<leader>sD" = {
          action = "diagnostics, {}";
          options.desc = "Workspace diagnostics";
        };
        "<leader>sh" = {
          action = "help_tags, {}";
          options.desc = "Help pages";
        };
        "<leader>sH" = {
          action = "highlights, {}";
          options.desc = "Search Highlight Groups";
        };
        "<leader>sk" = {
          action = "keymaps, {}";
          options.desc = "Keymaps";
        };
        "<leader>sM" = {
          action = "man_pages, {}";
          options.desc = "Man pages";
        };
        "<leader>sm" = {
          action = "marks, {}";
          options.desc = "Jump to Mark";
        };
        "<leader>so" = {
          action = "vim_options, {}";
          options.desc = "Options";
        };
        "<leader>sR" = {
          action = "resume, {}";
          options.desc = "Resume";
        };
        "<leader>cs" = {
          action = "colorscheme, {}";
          options.desc = "Colorscheme preview";
        };
      };
    };
  };
}
