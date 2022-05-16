-- User todos:
-- 1. install rust analyzer
-- 2. install nerd font
-- 3. install pyright
-- 4. install ctags
-- 5. install haskell lsp

-- Packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    
    use 'ackyshake/Spacegray.vim'
    use 'jacoborus/tender.vim'
    use 'nanotech/jellybeans.vim'
    use 'arcticicestudio/nord-vim'
    use 'aonemd/kuroi.vim'
    use 'NLKNguyen/papercolor-theme'
    use 'cocopon/iceberg.vim'
    use 'morhetz/gruvbox'
    use 'RRethy/nvim-base16'
    --[[ Based 16 presets
        base16-3024
        base16-apathy
        base16-ashes
        base16-atelier-cave-light
        base16-atelier-cave
        base16-atelier-dune-light
        base16-atelier-dune
        base16-atelier-estuary-light
        base16-atelier-estuary
        base16-atelier-forest-light
        base16-atelier-forest
        base16-atelier-heath-light
        base16-atelier-heath
        base16-atelier-lakeside-light
        base16-atelier-lakeside
        base16-atelier-plateau-light
        base16-atelier-plateau
        base16-atelier-savanna-light
        base16-atelier-savanna
        base16-atelier-seaside-light
        base16-atelier-seaside
        base16-atelier-sulphurpool-light
        base16-atelier-sulphurpool
        base16-atlas
        base16-bespin
        base16-black-metal-bathory
        base16-black-metal-burzum
        base16-black-metal-dark-funeral
        base16-black-metal-gorgoroth
        base16-black-metal-immortal
        base16-black-metal-khold
        base16-black-metal-marduk
        base16-black-metal-mayhem
        base16-black-metal-nile
        base16-black-metal-venom
        base16-black-metal
        base16-brewer
        base16-bright
        base16-brogrammer
        base16-brogrammer2.0
        base16-brushtrees-dark
        base16-brushtrees
        base16-chalk
        base16-circus
        base16-classic-dark
        base16-classic-light
        base16-codeschool
        base16-cupcake
        base16-cupertino
        base16-darktooth
        base16-default-dark
        base16-default-light
        base16-darcula
        base16-dracula
        base16-eighties
        base16-embers
        base16-flat
        base16-fruit-soda
        base16-github
        base16-google-dark
        base16-google-light
        base16-grayscale-dark
        base16-grayscale-light
        base16-greenscreen
        base16-gruvbox-dark-hard
        base16-gruvbox-dark-medium
        base16-gruvbox-dark-pale
        base16-gruvbox-dark-soft
        base16-gruvbox-light-hard
        base16-gruvbox-light-medium
        base16-gruvbox-light-soft
        base16-harmonic-dark
        base16-harmonic-light
        base16-heetch-light
        base16-heetch
        base16-helios
        base16-hopscotch
        base16-horizon-dark
        base16-ia-dark
        base16-ia-light
        base16-icy
        base16-irblack
        base16-isotope
        base16-macintosh
        base16-marrakesh
        base16-materia
        base16-material-darker
        base16-material-lighter
        base16-material-palenight
        base16-material-vivid
        base16-material
        base16-mellow-purple
        base16-mexico-light
        base16-mocha
        base16-monokai
        base16-nord
        base16-ocean
        base16-oceanicnext
        base16-one-light
        base16-onedark
        base16-outrun-dark
        base16-papercolor-dark
        base16-papercolor-light
        base16-paraiso
        base16-phd
        base16-pico
        base16-pop
        base16-porple
        base16-railscasts
        base16-rebecca
        base16-schemer-dark
        base16-schemer-medium
        base16-seti
        base16-shapeshifter
        base16-snazzy
        base16-solarflare
        base16-solarized-dark
        base16-solarized-light
        base16-spacemacs
        base16-summerfruit-dark
        base16-summerfruit-light
        base16-synth-midnight-dark
        base16-tomorrow-night-eighties
        base16-tomorrow-night
        base16-tomorrow
        base16-tube
        base16-twilight
        base16-unikitty-dark
        base16-unikitty-light
        base16-woodland
        base16-xcode-dusk
        base16-zenburn
    --]]
    --[[ Based 16 custom table
        require('base16-colorscheme').setup({
            base00 = '#16161D', base01 = '#2c313c', base02 = '#3e4451', base03 = '#6c7891',
            base04 = '#565c64', base05 = '#abb2bf', base06 = '#9a9bb3', base07 = '#c5c8e6',
            base08 = '#e06c75', base09 = '#d19a66', base0A = '#e5c07b', base0B = '#98c379',
            base0C = '#56b6c2', base0D = '#0184bc', base0E = '#c678dd', base0F = '#a06949',
        })
    --]]
    use 'github/copilot.vim'
    use 'kyazdani42/nvim-web-devicons' 

    use 'neovim/nvim-lspconfig'
    use 'ms-jpq/coq_nvim'
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    use {'ms-jpq/coq.thirdparty', branch = '3p'}
    use 'nvim-treesitter/nvim-treesitter'
    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-lsputils'
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    }

    use 'simrat39/rust-tools.nvim'
    use {'cespare/vim-toml', branch = 'main'}
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-ui-select.nvim'
    use 'mfussenegger/nvim-dap'

    use {
        'hoob3rt/lualine.nvim',
        requires = { 'ryanoasis/vim-devicons', opt = true }
    }
     
    use 'lukas-reineke/indent-blankline.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'windwp/nvim-autopairs' 

    use 'ziglang/zig.vim'
end)

-- Cosmetic
vim.cmd('colorscheme base16-chalk')

vim.o.wrap = false
vim.wo.wrap = false
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.laststatus = 2
vim.wo.number = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.cursorline = true
vim.o.colorcolumn = '100'

vim.opt.list = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    show_trailing_blankline_indent = false,
}

vim.api.nvim_exec(
    [[
    augroup Terminal
        autocmd!
        au TermOpen * set nonu
    augroup end
    ]],
    false
)

vim.api.nvim_exec(
    [[
    augroup Terminal
        autocmd!
        au TermOpen * set nonu
    augroup end
    ]],
    false
)

vim.g.termguicolors = true

    -- lsp 
    local lsp = require'lspconfig';
    vim.g.coq_settings = {
        ['auto_start'] = 'shut-up',
        ['keymap.pre_select'] = true
    }
    local coq = require "coq";

    -- Setup lspconfig.
    lsp.pyright.setup(coq.lsp_ensure_capabilities())
    require('lspconfig')['clangd'].setup {
        capabilities = capabilities
    }
    require('lspconfig')['hls'].setup {
        capabilities = capabilities
    }
    require('lspconfig')['rust_analyzer'].setup{
        capabilities = capabilities
    }

    require'nvim-treesitter.configs'.setup {
        ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        ignore_install = { "javascript" }, -- List of parsers to ignore installing
        highlight = {
            enable = false,              -- false will disable the whole extension
            disable = {},  -- list of language that will be disabled
            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = true,
        },
    }

    vim.lsp.protocol.CompletionItemKind = {
        "   (Text) ",
        "   (Method)",
        "   (Function)",
        "   (Constructor)",
        " ﴲ  (Field)",
        "[] (Variable)",
        "   (Class)",
        " ﰮ  (Interface)",
        "   (Module)",
        " 襁 (Property)",
        "   (Unit)",
        "   (Value)",
        " 練 (Enum)",
        "   (Keyword)",
        "   (Snippet)",
        "   (Color)",
        "   (File)",
        "   (Reference)",
        "   (Folder)",
        "   (EnumMember)",
        " ﲀ  (Constant)",
        " ﳤ  (Struct)",
        "   (Event)",
        "   (Operator)",
        "   (TypeParameter)",
    } 
    
    vim.fn.sign_define(
        "LspDiagnosticsSignError",
        { texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError" }
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignWarning",
        { texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning" }
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignHint",
        { texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint" }
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignInformation",
        { texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation" }
    )

    vim.o.updatetime = 150
    vim.cmd [[autocmd CursorHold, * lua vim.diagnostic.open_float({focusable=false})]]
    vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
    })

    -- lsputlis
    -- yoinked evil lualine
        local lualine = require 'lualine'

        -- Color table for highlights
        local colors = {
          bg = '#202328',
          fg = '#bbc2cf',
          yellow = '#ECBE7B',
          cyan = '#008080',
          darkblue = '#081633',
          green = '#98be65',
          orange = '#FF8800',
          violet = '#a9a1e1',
          magenta = '#c678dd',
          blue = '#51afef',
          red = '#ec5f67'
        }

        local conditions = {
          buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
          hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
          check_git_workspace = function()
            local filepath = vim.fn.expand('%:p:h')
            local gitdir = vim.fn.finddir('.git', filepath .. ';')
            return gitdir and #gitdir > 0 and #gitdir < #filepath
          end
        }

        -- Config
        local config = {
          options = {
            -- Disable sections and component separators
            component_separators = "",
            section_separators = "",
            theme = {
              -- We are going to use lualine_c an lualine_x as left and
              -- right section. Both are highlighted by c theme .  So we
              -- are just setting default looks o statusline
              normal = {c = {fg = colors.fg, bg = colors.bg}},
              inactive = {c = {fg = colors.fg, bg = colors.bg}}
            }
          },
          sections = {
            -- these are to remove the defaults
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},
            -- These will be filled later
            lualine_c = {},
            lualine_x = {}
          },
          inactive_sections = {
            -- these are to remove the defaults
            lualine_a = {},
            lualine_v = {},
            lualine_y = {},
            lualine_z = {},
            lualine_c = {},
            lualine_x = {}
          }
        }

        -- Inserts a component in lualine_c at left section
        local function ins_left(component)
          table.insert(config.sections.lualine_c, component)
        end

        -- Inserts a component in lualine_x ot right section
        local function ins_right(component)
          table.insert(config.sections.lualine_x, component)
        end

        ins_left {
          function() return '▊' end,
          color = {fg = colors.blue}, -- Sets highlighting of component
          left_padding = 0 -- We don't need space before this
        }

        ins_left {
          -- mode component
          function()
            -- auto change color according to neovims mode
            local mode_color = {
              n = colors.red,
              i = colors.green,
              v = colors.blue,
              [''] = colors.blue,
              V = colors.blue,
              c = colors.magenta,
              no = colors.red,
              s = colors.orange,
              S = colors.orange,
              [''] = colors.orange,
              ic = colors.yellow,
              R = colors.violet,
              Rv = colors.violet,
              cv = colors.red,
              ce = colors.red,
              r = colors.cyan,
              rm = colors.cyan,
              ['r?'] = colors.cyan,
              ['!'] = colors.red,
              t = colors.red
            }
            vim.api.nvim_command(
                'hi! LualineMode guifg=' .. mode_color[vim.fn.mode()] .. " guibg=" ..
                    colors.bg)
            return ''
          end,
          color = "LualineMode",
          left_padding = 0
        }

        ins_left {
          -- filesize component
          function()
            local function format_file_size(file)
              local size = vim.fn.getfsize(file)
              if size <= 0 then return '' end
              local sufixes = {'b', 'k', 'm', 'g'}
              local i = 1
              while size > 1024 do
                size = size / 1024
                i = i + 1
              end
              return string.format('%.1f%s', size, sufixes[i])
            end
            local file = vim.fn.expand('%:p')
            if string.len(file) == 0 then return '' end
            return format_file_size(file)
          end,
          condition = conditions.buffer_not_empty
        }

        ins_left {
          'filename',
          condition = conditions.buffer_not_empty,
          color = {fg = colors.magenta, gui = 'bold'}
        }

        ins_left {'location'}

        ins_left {'progress', color = {fg = colors.fg, gui = 'bold'}}

        ins_left {
          'diagnostics',
          sources = {'nvim_diagnostic'},
          symbols = {error = ' ', warn = ' ', info = ' '},
          color_error = colors.red,
          color_warn = colors.yellow,
          color_info = colors.cyan
        }

        -- Insert mid section. You can make any number of sections in neovim :)
        -- for lualine it's any number greater then 2
        ins_left {function() return '%=' end}

        ins_left {
          -- Lsp server name .
          function()
            local msg = 'No Active Lsp'
            local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
            local clients = vim.lsp.get_active_clients()
            if next(clients) == nil then return msg end
            for _, client in ipairs(clients) do
              local filetypes = client.config.filetypes
              if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
              end
            end
            return msg
          end,
          icon = ' LSP:',
          color = {fg = '#ffffff', gui = 'bold'}
        }

        -- Add components to right sections
        ins_right {
          'o:encoding', -- option component same as &encoding in viml
          upper = true, -- I'm not sure why it's upper case either ;)
          condition = conditions.hide_in_width,
          color = {fg = colors.green, gui = 'bold'}
        }

        ins_right {
          'fileformat',
          upper = true,
          icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
          color = {fg = colors.green, gui = 'bold'}
        }

        ins_right {
          'branch',
          icon = '',
          condition = conditions.check_git_workspace,
          color = {fg = colors.violet, gui = 'bold'}
        }

        ins_right {
          'diff',
          -- Is it me or the symbol for modified us really weird
          symbols = {added = ' ', modified = '柳 ', removed = ' '},
          color_added = colors.green,
          color_modified = colors.orange,
          color_removed = colors.red,
          condition = conditions.hide_in_width
        }

        ins_right {
          function() return '▊' end,
          color = {fg = colors.blue},
          right_padding = 0
        }

        lualine.setup(config)

-- telescope
-- This is your opts table
local telescope = require("telescope")
telescope.setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension("ui-select")

-- rust tools
local opts = {
	tools = { -- rust-tools options
		-- automatically set inlay hints (type hints)
		-- There is an issue due to which the hints are not applied on the first
		-- opened file. For now, write to the file to trigger a reapplication of
		-- the hints or just run :RustSetInlayHints.
		-- default: true
		autoSetHints = true,

		-- whether to show hover actions inside the hover window
		-- this overrides the default hover handler so something like lspsaga.nvim's hover would be overriden by this
		-- default: true
		hover_with_actions = true,

		-- how to execute terminal commands
		-- options right now: termopen / quickfix
		executor = require("rust-tools/executors").termopen,

		-- callback to execute once rust-analyzer is done initializing the workspace
		-- The callback receives one parameter indicating the `health` of the server: "ok" | "warning" | "error"
		on_initialized = nil,

		-- These apply to the default RustSetInlayHints command
		inlay_hints = {

			-- Only show inlay hints for the current line
			only_current_line = false,

			-- Event which triggers a refersh of the inlay hints.
			-- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
			-- not that this may cause higher CPU usage.
			-- This option is only respected when only_current_line and
			-- autoSetHints both are true.
			only_current_line_autocmd = "CursorHold",

			-- whether to show parameter hints with the inlay hints or not
			-- default: true
			show_parameter_hints = true,

			-- whether to show variable name before type hints with the inlay hints or not
			-- default: false
			show_variable_name = false,

			-- prefix for parameter hints
			-- default: "<-"
			parameter_hints_prefix = "<- ",

			-- prefix for all the other hints (type, chaining)
			-- default: "=>"
			other_hints_prefix = "=> ",

			-- whether to align to the lenght of the longest line in the file
			max_len_align = false,

			-- padding from the left if max_len_align is true
			max_len_align_padding = 1,

			-- whether to align to the extreme right or not
			right_align = false,

			-- padding from the right if right_align is true
			right_align_padding = 7,

			-- The color of the hints
			highlight = "Comment",
		},

		-- options same as lsp hover / vim.lsp.util.open_floating_preview()
		hover_actions = {
			-- the border that is used for the hover window
			-- see vim.api.nvim_open_win()
			border = {
				{ "╭", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "╮", "FloatBorder" },
				{ "│", "FloatBorder" },
				{ "╯", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "╰", "FloatBorder" },
				{ "│", "FloatBorder" },
			},

			-- whether the hover action window gets automatically focused
			-- default: false
			auto_focus = true,
		},

		-- settings for showing the crate graph based on graphviz and the dot
		-- command
		crate_graph = {
			-- Backend used for displaying the graph
			-- see: https://graphviz.org/docs/outputs/
			-- default: x11
			backend = "x11",
			-- where to store the output, nil for no output stored (relative
			-- path from pwd)
			-- default: nil
			output = nil,
			-- true for all crates.io and external crates, false only the local
			-- crates
			-- default: true
			full = true,

			-- List of backends found on: https://graphviz.org/docs/outputs/
			-- Is used for input validation and autocompletion
			-- Last updated: 2021-08-26
			enabled_graphviz_backends = {
				"bmp",
				"cgimage",
				"canon",
				"dot",
				"gv",
				"xdot",
				"xdot1.2",
				"xdot1.4",
				"eps",
				"exr",
				"fig",
				"gd",
				"gd2",
				"gif",
				"gtk",
				"ico",
				"cmap",
				"ismap",
				"imap",
				"cmapx",
				"imap_np",
				"cmapx_np",
				"jpg",
				"jpeg",
				"jpe",
				"jp2",
				"json",
				"json0",
				"dot_json",
				"xdot_json",
				"pdf",
				"pic",
				"pct",
				"pict",
				"plain",
				"plain-ext",
				"png",
				"pov",
				"ps",
				"ps2",
				"psd",
				"sgi",
				"svg",
				"svgz",
				"tga",
				"tiff",
				"tif",
				"tk",
				"vml",
				"vmlz",
				"wbmp",
				"webp",
				"xlib",
				"x11",
			},
		},
	},

	-- all the opts to send to nvim-lspconfig
	-- these override the defaults set by rust-tools.nvim
	-- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
	server = {
		-- standalone file support
		-- setting it to false may improve startup time
		standalone = true,
	}, -- rust-analyer options

	-- debugging stuff
	dap = {
		adapter = {
			type = "executable",
			command = "lldb-vscode",
			name = "rt_lldb",
		},
	},
}

require("trouble").setup {
    position = "left", -- position of the list can be: bottom, top, left, right
    width = 100, -- width of the list when position is left or right
    icons = true, -- use devicons for filenames
    mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
    fold_open = "", -- icon used for open folds
    fold_closed = "", -- icon used for closed folds
    group = true, -- group results by file
    padding = true, -- add an extra new line on top of the list
    action_keys = { -- key mappings for actions in the trouble list
        -- map to {} to remove a mapping, for example:
        -- close = {},
        close = "q", -- close the list
        cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
        refresh = "r", -- manually refresh
        jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
        open_split = { "<c-x>" }, -- open buffer in new split
        open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
        open_tab = { "<c-t>" }, -- open buffer in new tab
        jump_close = {"o"}, -- jump to the diagnostic and close the list
        toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
        toggle_preview = "P", -- toggle auto_preview
        hover = "K", -- opens a small popup with the full multiline message
        preview = "p", -- preview the diagnostic location
        close_folds = {"zM", "zm"}, -- close all folds
        open_folds = {"zR", "zr"}, -- open all folds
        toggle_fold = {"zA", "za"}, -- toggle fold of current file
        previous = "k", -- preview item
        next = "j" -- next item
    },
    indent_lines = true, -- add an indent guide below the fold icons
    auto_open = true, -- automatically open the list when you have diagnostics
    auto_close = false, -- automatically close the list when you have no diagnostics
    auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
    auto_fold = false, -- automatically fold a file trouble list at creation
    auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
    signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    }
}

require('rust-tools').setup(opts)
require('nvim-tree').setup()

-- Utility
vim.o.completeopt = 'menuone,noselect'
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
require('nvim-autopairs').setup()

vim.o.undodir = os.getenv('HOME') .. '/.config/nvim/undodir'
vim.o.undofile = true
vim.bo.undofile = true
vim.opt.clipboard = "unnamedplus"

-- Override fixes
vim.g.coq_settings = {
    ['keymap.jump_to_mark'] = '<C-F>'
}

-- Key mappings
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('t', '<Esc>', [[<c-\><c-n>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>t', [[:below new term://zsh<CR>:resize 10<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', [[:q<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', [[:vs<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', [[:sp<CR>]], { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>e', [[:NvimTreeToggle<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', [[:NvimTreeRefresh<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>c', [[:Copilot enable<CR>]], { noremap = true })
vim.api.nvim_set_keymap('i', '<C-j>', [[copilot#Accept("\<CR>")]], { silent = true, expr = true, script = true })

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})

vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -1<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +1<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -1<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +1<CR>', {noremap = true})

vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true})

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)
