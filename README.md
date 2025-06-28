# Neovim Configuration

A modern, well-structured Neovim configuration built with Lua. 

## 🚀 Features

- **Plugin Management**: Uses Lazy.nvim for fast and efficient plugin loading
- **Beautiful UI**: db.nvim colorscheme with transparent background support
- **Fuzzy Finding**: Telescope integration for file searching and navigation
- **Git Integration**: LazyGit integration through Snacks.nvim
- **Note Taking**: Obsidian.nvim integration for markdown note management
- **Auto-completion**: Nvim-cmp with autopairs for enhanced editing experience
- **Smart Keymaps**: Intuitive keybindings optimized for productivity

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
    │   ├── autopairs.lua   # Auto-pairs configuration
    │   ├── colorscheme.lua # db.nvim colorscheme
    │   ├── obsidian.lua    # Obsidian integration
    │   ├── snacks.lua      # Snacks.nvim configuration
    │   ├── telescope.lua   # Telescope fuzzy finder
    │   └── transparent.lua # Transparent background
    ├── current-theme.lua   # Current theme tracking
    └── lazySetup.lua       # Lazy.nvim setup
```

## 🎨 Appearance

- **Colorscheme**: [db.nvim](https://github.com/daanblom/db.nvim) - A beautiful dark theme 
- **Icons**: Nvim-web-devicons for file type icons
- **Transparency**: Optional transparent background support
- **Dark Mode**: Optimized for dark backgrounds

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

#### Tab Management
- `<leader>t` - Open new tab
- `<leader>x` - Close current tab
- `<leader>l` - Next tab
- `<leader>h` - Previous tab

#### Git Integration
- `<leader>lg` - Open LazyGit
- `<leader>gl` - Open LazyGit log

#### Theme Management
- `<leader>ths` - Theme switcher

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
- **[Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[Snacks.nvim](https://github.com/folke/snacks.nvim)** - Enhanced picker and utilities
- **[Nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto-pair brackets and quotes

### Appearance
- **[db.nvim.nvim](https://github.com/daanblom/db.nvim)** - Colorscheme
- **[Nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)** - File icons
- **[Transparent.nvim](https://github.com/xiyaowong/transparent.nvim)** - Transparent background

### Productivity
- **[Obsidian.nvim](https://github.com/epwalsh/obsidian.nvim)** - Obsidian integration
- **[Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Completion engine

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
- Git integration is available through LazyGit

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

This configuration is open source and available under the [MIT License](LICENSE). 