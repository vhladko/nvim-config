# Neovim Config

Modular config built on [lazy.nvim](https://github.com/folke/lazy.nvim). Auto-bootstraps on a fresh machine — just clone and run `nvim`.

## File Layout

| File | Purpose |
|------|---------|
| `init.lua` | Set leader, load core modules, bootstrap lazy.nvim |
| `lua/options.lua` | Editor options (2-space indent, relative numbers, Ukrainian langmap) |
| `lua/keymaps.lua` | Core keybindings |
| `lua/autocmds.lua` | Yank highlight, `.templ` filetype |
| `lua/plugins/ui.lua` | Colorscheme, statusline, indent guides |
| `lua/plugins/editor.lua` | Comments, surround, autopairs, which-key, Oil file explorer |
| `lua/plugins/telescope.lua` | Fuzzy finder |
| `lua/plugins/lsp.lua` | LSP config, Mason auto-install |
| `lua/plugins/completion.lua` | nvim-cmp + Supermaven AI |
| `lua/plugins/treesitter.lua` | Syntax highlighting, text objects, movement |
| `lua/plugins/formatting.lua` | Conform (Prettier) |
| `lua/plugins/git.lua` | Fugitive, gitsigns |

## Hotkeys

Leader = **Space**

### Search (Telescope)

| Key | Action |
|-----|--------|
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>/` | Fuzzy search in current buffer |
| `<leader>?` | Recent files |
| `<leader><space>` | Open buffers |
| `<leader>sh` | Search help tags |
| `<leader>sw` | Grep current word |
| `<leader>sd` | Search diagnostics |

### LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | References (Telescope) |
| `gI` | Go to implementation |
| `gD` | Go to declaration |
| `K` | Hover docs |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>D` | Type definition |
| `<leader>ds` | Document symbols |
| `<leader>ws` | Workspace symbols |
| `:Format` | Format buffer via LSP |

### Code Navigation (Treesitter)

| Key | Action |
|-----|--------|
| `]m` / `[m` | Next / prev function start |
| `]]` / `[[` | Next / prev class start |
| `]M` / `[M` | Next / prev function end |
| `af` / `if` | Select outer / inner function |
| `ac` / `ic` | Select outer / inner class |
| `aa` / `ia` | Select outer / inner parameter |
| `<leader>a` | Swap parameter forward |
| `<leader>A` | Swap parameter backward |

### Completion (Insert Mode)

| Key | Action |
|-----|--------|
| `<Tab>` | Next item / expand snippet / accept Supermaven |
| `<S-Tab>` | Previous item / jump snippet back |
| `<C-Space>` | Open completion menu |
| `<CR>` | Confirm selection |
| `<C-j>` | Accept word (Supermaven) |
| `<C-]>` | Clear AI suggestion |
| `<C-d>` / `<C-f>` | Scroll docs up / down |

### Editor

| Key | Action |
|-----|--------|
| `-` | File explorer (Oil) |
| `<leader>f` | Format buffer (Conform) |
| `<leader>x` | `chmod +x` current file |
| `<leader>e` | Diagnostic float |
| `<leader>q` | Diagnostic list |
| `[d` / `]d` | Prev / next diagnostic |
| `<C-d>` / `<C-u>` | Half-page scroll + center |

## Plugins

### UI
- **tokyonight.nvim** — colorscheme
- **lualine.nvim** — statusline
- **indent-blankline.nvim** — indent guides

### Editor
- **oil.nvim** — file explorer (edit filesystem like a buffer)
- **Comment.nvim** — toggle comments (`gc`)
- **mini.surround** — add/change/delete surrounding pairs
- **nvim-autopairs** — auto-close brackets/quotes
- **vim-sleuth** — auto-detect indent settings
- **which-key.nvim** — keybinding hints popup

### Search
- **telescope.nvim** — fuzzy finder for files, grep, symbols
- **telescope-fzf-native.nvim** — native FZF sorter

### LSP
- **nvim-lspconfig** — LSP client configuration
- **mason.nvim** / **mason-lspconfig.nvim** — auto-install LSP servers
- **fidget.nvim** — LSP progress indicator
- **lazydev.nvim** — Lua LSP enhancements

### Completion
- **nvim-cmp** — completion engine
- **LuaSnip** — snippet engine
- **supermaven-nvim** — AI code completion

### Syntax
- **nvim-treesitter** — syntax highlighting & parser management
- **nvim-treesitter-textobjects** — code-aware text objects & movement

### Formatting
- **conform.nvim** — formatter runner (auto-formats on save)

### Git
- **vim-fugitive** — Git commands (`:G`)
- **vim-rhubarb** — GitHub integration for fugitive
- **gitsigns.nvim** — git change indicators in sign column

## LSP Servers & Formatters

**Auto-installed via Mason:** `rust_analyzer`, `ts_ls`, `zls`, `lua_ls`
**Manually enabled:** `gdscript`

**Prettier** formats: CSS, GraphQL, HTML, JavaScript, JSX, JSON, Less, Markdown, SCSS, TypeScript, TSX, YAML

## Setup

```sh
git clone <repo-url> ~/.config/nvim
nvim
# lazy.nvim bootstraps itself, then installs all plugins, LSP servers, and parsers
```
