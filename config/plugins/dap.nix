{pkgs, ...}:
{
  plugins.dap = {
    enable = true;
    extensions = {
      dap-ui.enable = true;
      dap-virtual-text.enable = true;
      dap-go.enable = true;
      dap-python.enable = true;
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    nvim-gdb
  ];
  # STILL TESTING
  # keymaps = [
  #   {
  #     mode = [ "n" "i" "v" "x" "t" ];
  #     action = ":lua require('dap').continue()<CR>";
  #     key = "<F5>";
  #     options = {
  #       silent = true;
  #     };
  #   }
  #   {
  #     mode = [ "n" "i" "v" "x" ];
  #     action = ":lua require('dap').terminate()<CR>";
  #     key = "<S-F5>";
  #     options = {
  #       silent = true;
  #     };
  #   }
  #   {
  #     mode = [ "n" "i" "v" "x" ];
  #     action = ":lua require('dap').terminate()<CR>";
  #     key = "<F17>";
  #     options = {
  #       silent = true;
  #     };
  #   }
  # ];
  extraConfigLua = ''
       local dap, dapui = require("dap"), require("dapui")
       dap.listeners.before.attach.dapui_config = function()
       	dapui.open()
        dap.repl.close()
       end
       dap.listeners.before.launch.dapui_config = function()
       	dapui.open()
        dap.repl.close()
       end
       dap.listeners.before.event_terminated.dapui_config = function()
       	dapui.close()
       end
       dap.listeners.before.event_exited.dapui_config = function()
       	dapui.close()
       end

      local dap = require('dap')
      dap.set_log_level('DEBUG')

      vim.keymap.set({'n', 'i', 'v', 'x'}, '<F17>', function()
        vim.cmd('stopinsert')
        dap.terminate()
      end)

      vim.keymap.set({'n', 'i', 'v', 'x'}, '<S-F5>', function()
        vim.cmd('stopinsert')
        dap.terminate()
      end)
    
      -- vim.keymap.set('n', '<C-b>', build_project)
      vim.keymap.set({'n', 'i', 'v', 'x', 't'}, '<F5>', function()
        if vim.fn.empty(vim.fn.glob("CMakeLists.txt")) == 0 then
          local job = require('cmake').configure()
          if job then
            job:after(vim.schedule_wrap(
              function(_, exit_code)
                if exit_code == 0 then
                  vim.cmd("CMake select_target")
                  -- require('FTerm').close()
                  require("nvim-tree.api").tree.close()
                  if vim.fn.has("toggleterm") then
                    local terms = require("toggleterm.terminal")
                    local terminals = terms.get_all()
                    for _, term_num in pairs(terminals) do
                      term_num:close()
                    end
                  elseif vim.fn.has("FTerm") then
                    require('FTerm').close()
                  end
                  vim.cmd('startinsert')
                  vim.cmd("CMake build_and_debug")
                  dap.repl.close()
                else
                  vim.notify("Target debug failed", vim.log.levels.ERROR, { title = 'CMake' })
                end
              end
            ))
          end
        else
          -- require("toggleterm").exec('exit')
          -- require('FTerm').close()
          require("nvim-tree.api").tree.close()

          if vim.fn.has("toggleterm") then
            local terms = require("toggleterm.terminal")
            local terminals = terms.get_all()
            for _, term_num in pairs(terminals) do
              term_num:close()
            end
          elseif vim.fn.has("FTerm") then
            require('FTerm').close()
          end

          vim.cmd('startinsert')
          dap.continue()
        end
      end)

      vim.keymap.set('n', '<Leader>dt', function() dapui.toggle() end)
      vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end)
      vim.keymap.set('n', '<F10>', function() dap.step_over() end)
      vim.keymap.set('n', '<F11>', function() dap.step_into() end)
      vim.keymap.set('n', '<F12>', function() dap.step_out() end)
      vim.keymap.set('i', '<F10>', function() dap.step_over() end)
      vim.keymap.set('i', '<F11>', function() dap.step_into() end)
      vim.keymap.set('i', '<F12>', function() dap.step_out() end)
      vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
      vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)

      dap.adapters.gdb = {
              type = "executable",
              command = "gdb",
              args = { "-q", "-i", "dap" }
      }
      dap.adapters.lldb = {
          type = 'executable',
          command = '${pkgs.lldb_17}/bin/lldb-vscode', -- adjust as needed, must be absolute path
          name = 'lldb'
      }

      dap.adapters.codelldb = {
        type = 'server',
        port = "''${port}",
        executable = {
          command = '${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb',
          args = {"--port", "''${port}"},
      
          -- On windows you may have to uncomment this:
          -- detached = false,
        }
      }

      local dap = require("dap")
      dap.configurations.cpp = {
    	{
    		name = "Launch",
    		type = "gdb",
    		request = "launch",
    		program = function()
    			return vim.fn.input('Path of the executable: ', vim.fn.getcwd() .. '/', 'file')
    		end,
    		cwd = "''${workspaceFolder}",
    	},
      }
      dap.configurations.c = {
    	{
    		name = "Launch",
    		type = "gdb",
    		request = "launch",
    		program = function()
    			return vim.fn.input('Path of the executable: ', vim.fn.getcwd() .. '/', 'file')
    		end,
    		cwd = "''${workspaceFolder}",
    	},
      }

      local dap = require('dap')
      dap.configurations.rust = {
    	{
    		name = 'Launch',
    		type = 'codelldb',
    		request = 'launch',
    		program = function()
                        require("nvim-tree.api").tree.close()
                        vim.cmd('startinsert')
                        return vim.fn.getcwd() .. '/target/debug/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
    			-- return vim.fn.input('Path of the executable: ', vim.fn.getcwd() .. '/', 'file')
    		end,
    		cwd = "''${workspaceFolder}",
    		stopOnEntry = false,
                showDisassembly = "never",
    		args = {},
    	},
    }

    dap.configurations.zig = {
    	{
    		name = 'Launch',
    		type = 'lldb',
    		request = 'launch',
    		program = function()
    			return vim.fn.input('Root path of executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
    		cwd = "''${workspaceFolder}",
    		stopOnEntry = false,
    		args = {},
    	},
    }
  '';
}
