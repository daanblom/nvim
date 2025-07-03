# Neovim Configuration

A modern, well-structured Neovim configuration built with Lua. 

## 🚀 Features

- **Plugin Management**: Uses Lazy.nvim for fast and efficient plugin loading
- **Startup Screen**: Alpha-nvim for a beautiful startup dashboard
- **Beautiful UI**: db.nvim colorscheme with transparent background support
- **Status Line**: Lualine.nvim for a beautiful and informative status bar
- **Fuzzy Finding**: Telescope integration for file searching and navigation
- **Command Palette**: Wilder.nvim for enhanced command-line completion
- **Git Integration**: LazyGit integration through Snacks.nvim and GitGutter for change indicators
- **Note Taking**: Obsidian.nvim integration for markdown note management
- **Auto-completion**: Enhanced nvim-cmp with snippets, LSP integration, and Tailwind support
- **Language Server**: Comprehensive LSP setup with Mason for multiple languages
- **Smart Keymaps**: Intuitive keybindings optimized for productivity
- **File Browser**: Integrated telescope file browser with hidden file support
- **Mini File Explorer**: Mini.files for lightweight file navigation
- **Focus Mode**: Focus.nvim for distraction-free editing
- **Color Highlighting**: Nvim-colorizer for enhanced color display
- **Syntax Highlighting**: Treesitter for advanced syntax parsing
- **Key Display**: Showkeys for displaying pressed keys
- **Code Utilities**: Mini suite for comments, surround, whitespace, and split/join operations
- **Code Formatting**: Conform.nvim for automatic code formatting
- **Diagnostics**: Trouble.nvim for better diagnostic display
- **Enhanced UI**: Noice.nvim for improved command line and popup interfaces
- **HTML/CSS**: Emmet support for rapid HTML/CSS development

## 📁 Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lazy-lock.json          # Plugin lock file
└── lua/
    ├── core/
    │   ├── init.lua        # Core initialization
    │   ├── keymaps.lua     # Key mappings
    │   └── options.lua     # Neovim options
    ├── plugins/
    │   ├── alphanvim.lua   # Startup screen configuration
    │   ├── autopairs.lua   # Auto-pairs configuration
    │   ├── colorscheme.lua # db.nvim colorscheme
    │   ├── colorhighlight.lua # Nvim-colorizer
    │   ├── emmet.lua       # Emmet HTML/CSS abbreviations
    │   ├── focus.lua       # Focus.nvim configuration
    │   ├── formatting.lua  # Code formatting configuration
    │   ├── gitgutter.lua   # Git change indicators
    │   ├── lualine.lua     # Status line configuration
    │   ├── lush.lua        # Colorscheme development
    │   ├── mini.lua        # Mini.nvim suite configuration
    │   ├── nvim-cmp.lua    # Enhanced completion configuration
    │   ├── noice.lua       # Enhanced UI configuration
    │   ├── obsidian.lua    # Obsidian integration
    │   ├── prettier.lua    # Prettier formatting
    │   ├── showkeys.lua    # Key display configuration
    │   ├── snacks.lua      # Snacks.nvim configuration
    │   ├── telescope.lua   # Telescope fuzzy finder
    │   ├── treesitter.lua  # Treesitter configuration
    │   ├── transparent.lua # Transparent background
    │   ├── trouble.lua     # Diagnostics display
    │   └── wilder.lua      # Command palette configuration
    └── lsp/
        ├── mason.lua       # LSP package manager
        ├── lsp.lua         # LSP server configurations
        └── lsp-format.lua  # LSP formatting configuration
    ├── current-theme.lua   # Current theme tracking
    └── lazySetup.lua       # Lazy.nvim setup
```

## 🎨 Appearance

- **Startup Screen**: Alpha-nvim with file icons and recent files
- **Colorscheme**: [db.nvim](https://github.com/daanblom/db.nvim) - A beautiful dark theme 
- **Status Line**: Lualine.nvim with git integration and lazy updates
- **Icons**: Nvim-web-devicons for file type icons
- **Transparency**: Optional transparent background support
- **Dark Mode**: Optimized for dark backgrounds
- **Color Highlighting**: Enhanced color display with nvim-colorizer
- **Enhanced UI**: Noice.nvim for improved command line and popup interfaces

## 🔧 Core Configuration

### Editor Options
- Line numbers with relative numbering
- 2-space indentation with smart indenting
- True color support
- Mouse support enabled
- Clipboard integration with system clipboard
- Undo file persistence
- Smart case-insensitive search

### Key Mappings

#### Leader Key
- `<Space>` - Main leader key
- `<Space>` - Local leader key

#### Navigation
- `e` - Open file browser (Telescope)
- `<leader>pr` - Find recent files
- `<leader>pf` - Find files (Snacks)
- `<leader>ps` - Search in files (Snacks)
- `<leader>pws` - Search for word under cursor (Snacks)

#### File Browser (Telescope)
- `e` - Open file browser
- `<C-v>` - Open in vertical split
- `<C-s>` - Open in horizontal split
- `<C-t>` - Open in new tab
- `N` - Create new file/folder
- `h` - Go to parent directory
- `/` - Start filtering
- `<Esc>` - Close file browser

#### Mini File Explorer
- `<leader>ee` - Toggle mini file explorer
- `<leader>ef` - Open explorer at current file location
- `<CR>` or `L` - Enter directory or open file
- `-` or `H` - Go to parent directory

#### Tab Management
- `<leader>t` - Open new tab
- `<leader>x` - Close current tab
- `<leader>l` - Next tab
- `<leader>h` - Previous tab

#### Git Integration
- `<leader>lg` - Open LazyGit
- `<leader>gl` - Open LazyGit log
- GitGutter indicators for file changes

#### LSP (Language Server Protocol)
- `gd` - Go to definition (Telescope)
- `gD` - Go to declaration
- `gi` - Go to implementation (Telescope)
- `gt` - Go to type definition (Telescope)
- `gR` - Show references (Telescope)
- `K` - Show hover documentation
- `<leader>rn` - Smart rename
- `<leader>vca` - Code actions
- `<leader>d` - Show line diagnostics
- `<leader>D` - Show buffer diagnostics (Telescope)
- `<leader>rs` - Restart LSP
- `<C-h>` - Signature help (insert mode)

#### Diagnostics & Formatting
- `<leader>xw` - Open workspace diagnostics (Trouble)
- `<leader>xd` - Open document diagnostics (Trouble)
- `<leader>xq` - Open quickfix list (Trouble)
- `<leader>xl` - Open location list (Trouble)
- `<leader>xt` - Open todos (Trouble)
- `<leader>mp` - Format file or range (Conform)
- `<leader>xe` - Wrap with Emmet abbreviation

#### Theme Management
- `<leader>ths` - Theme switcher

#### Focus Mode
- `:Focus` - Toggle focus mode
- `:Zen` - Enter zen mode
- `:Narrow` - Narrow view

#### Code Utilities
- `<leader>cw` - Erase trailing whitespace
- `sa` - Add surrounding (normal/visual mode)
- `ds` - Delete surrounding
- `sf` - Find surrounding (right)
- `sF` - Find surrounding (left)
- `sh` - Highlight surrounding
- `sr` - Replace surrounding
- `sj` - Join arguments
- `sk` - Split arguments
- `<C-space>` - Incremental selection (treesitter)

#### Utility
- `<leader>y` - Copy to system clipboard
- `<leader>d` - Delete without yanking
- `<leader>f` - Format code
- `<leader>s` - Search and replace word under cursor
- `<leader>yf` - Copy filepath to clipboard
- `<leader>yn` - Copy filename to clipboard
- `<leader>ye` - Copy file extension to clipboard

#### Insert Mode
- `jj` - Exit insert mode

## 📦 Plugins

### Core Plugins
- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** - Plugin manager
- **[Alpha-nvim](https://github.com/goolord/alpha-nvim)** - Startup screen
- **[Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[Snacks.nvim](https://github.com/folke/snacks.nvim)** - Enhanced picker and utilities
- **[Nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto-pair brackets and quotes

### Appearance
- **[db.nvim](https://github.com/daanblom/db.nvim)** - Colorscheme
- **[Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Status line
- **[Nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)** - File icons
- **[Transparent.nvim](https://github.com/xiyaowong/transparent.nvim)** - Transparent background
- **[Nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)** - Color highlighting
- **[Noice.nvim](https://github.com/folke/noice.nvim)** - Enhanced UI for command line and popups
- **[Lush.nvim](https://github.com/rktjmp/lush.nvim)** - Colorscheme development

### Productivity
- **[Obsidian.nvim](https://github.com/epwalsh/obsidian.nvim)** - Obsidian integration
- **[Focus.nvim](https://github.com/cdmill/focus.nvim)** - Focus mode and zen editing
- **[Wilder.nvim](https://github.com/gelguy/wilder.nvim)** - Enhanced command palette
- **[Showkeys](https://github.com/nvzone/showkeys)** - Display pressed keys

### Git Integration
- **[Vim-gitgutter](https://github.com/airblade/vim-gitgutter)** - Git change indicators

### Language Server Protocol
- **[Mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP package manager
- **[Mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)** - Mason LSP integration
- **[Mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)** - Auto-install tools
- **[Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configurations
- **[Nvim-lsp-file-operations](https://github.com/antosha417/nvim-lsp-file-operations)** - LSP file operations

### Enhanced Completion
- **[Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Completion engine
- **[Cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)** - LSP completion source
- **[Cmp-buffer](https://github.com/hrsh7th/cmp-buffer)** - Buffer completion source
- **[Cmp-path](https://github.com/hrsh7th/cmp-path)** - Path completion source
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine
- **[Cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip)** - LuaSnip completion
- **[Friendly-snippets](https://github.com/rafamadriz/friendly-snippets)** - VSCode-style snippets
- **[Lspkind.nvim](https://github.com/onsails/lspkind.nvim)** - VSCode pictograms
- **[Tailwindcss-colorizer-cmp](https://github.com/roobert/tailwindcss-colorizer-cmp.nvim)** - Tailwind color support

### Code Enhancement
- **[Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting and parsing
- **[Nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)** - Auto-close tags for JSX/TSX/HTML
- **[Mini.nvim](https://github.com/echasnovski/mini.nvim)** - Lightweight plugin suite
  - **mini.comment** - Comment operations with context awareness
  - **mini.files** - Lightweight file explorer
  - **mini.surround** - Surround text objects
  - **mini.trailspace** - Trailing whitespace management
  - **mini.splitjoin** - Split and join code structures

### Code Formatting & Diagnostics
- **[Conform.nvim](https://github.com/stevearc/conform.nvim)** - Code formatting
- **[Trouble.nvim](https://github.com/folke/trouble.nvim)** - Better diagnostics display
- **[Prettier.nvim](https://github.com/MunifTanjim/prettier.nvim)** - Prettier integration
- **[Neoformat](https://github.com/sbdchd/neoformat)** - Code formatter
- **[Nvim-emmet](https://github.com/olrtg/nvim-emmet)** - Emmet HTML/CSS abbreviations

### Telescope Extensions
- **telescope-fzf-native** - FZF integration
- **telescope-file-browser** - File browser
- **telescope-themes** - Theme switcher

## 🛠️ Installation

1. **Prerequisites**
   - Neovim 0.8.0 or higher
   - Git
   - A Nerd Font (recommended for icons)

2. **Clone the configuration**
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

3. **Install dependencies**
   ```bash
   # Install ripgrep for telescope live grep (optional but recommended)
   # Arch Linux
   sudo pacman -S ripgrep
   
   # Ubuntu/Debian
   sudo apt install ripgrep
   ```

4. **Start Neovim**
   ```bash
   nvim
   ```

   Lazy.nvim will automatically install all plugins on first run.

## 🔄 Updating

To update plugins:
```vim
:Lazy sync
```

To update the configuration:
```bash
cd ~/.config/nvim
git pull
```

## 🎨 Customization

### Adding New Plugins
Add new plugin configurations in `lua/plugins/` directory. Each file should return a plugin specification table.

### Modifying Keymaps
Edit `lua/core/keymaps.lua` to customize keybindings.

### Changing Options
Modify `lua/core/options.lua` to adjust Neovim settings.

## 📝 Notes

- The configuration uses Lazy.nvim for fast plugin loading
- All plugins are configured with lazy loading for optimal performance
- Git integration is available through LazyGit and GitGutter
- Focus mode available for distraction-free reading or editing
- Treesitter provides advanced syntax highlighting for multiple languages
- Mini.nvim suite offers lightweight alternatives to larger plugins
- Wilder.nvim enhances command-line completion with fuzzy matching
- Comprehensive LSP setup supports multiple languages including Lua, TypeScript, Go, HTML, CSS, and more
- Enhanced completion with snippets, LSP integration, and Tailwind CSS support
- Mason automatically manages LSP servers and development tools
- Conform.nvim provides automatic code formatting with language-specific formatters
- Trouble.nvim offers a better interface for viewing diagnostics and quickfix lists
- Noice.nvim enhances the UI with improved command line and popup interfaces
- Emmet support for rapid HTML/CSS development with abbreviation expansion

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

This configuration is open source and available under the [MIT License](LICENSE). 