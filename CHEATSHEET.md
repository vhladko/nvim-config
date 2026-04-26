# Neovim Cheatsheet

Leader key: `<Space>`

---

## Core Keymaps

| Key | Action |
|---|---|
| `<C-d>` / `<C-u>` | Half-page down/up (auto-centers cursor) |
| `j` / `k` | Down/up (respects wrapped lines) |
| `<leader>x` | `chmod +x` current file |
| `[d` / `]d` | Previous / next diagnostic |
| `<leader>e` | Show diagnostic in floating window |
| `<leader>q` | Send diagnostics to location list |

---

## Telescope — Fuzzy Finder

| Key | Action |
|---|---|
| `<leader>sf` | Search files |
| `<leader>sg` | Live grep (search by content) |
| `<leader>sw` | Search current word under cursor |
| `<leader>sh` | Search help tags |
| `<leader>sd` | Search diagnostics |
| `<leader>?` | Recently opened files |
| `<leader><space>` | Open buffers |
| `<leader>/` | Fuzzy find in current buffer |

Inside Telescope: `<C-n>` / `<C-p>` navigate, `<CR>` open, `<C-x>` split, `<C-v>` vsplit, `<C-t>` new tab.

---

## LSP (active in supported files)

| Key | Action |
|---|---|
| `gd` | Goto definition |
| `gD` | Goto declaration |
| `gr` | References (via Telescope) |
| `gI` | Goto implementation |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>D` | Type definition |
| `<leader>ds` | Document symbols |
| `<leader>ws` | Workspace symbols |
| `:Format` | Format with LSP |

**Installed servers:** `rust_analyzer`, `ts_ls`, `lua_ls`, `zls`, `gdscript`
Manage more via `:Mason`.

---

## Completion

- Menu opens automatically while typing (nvim-cmp).
- `<Tab>` — next item / expand snippet / accept Supermaven AI suggestion
- `<S-Tab>` — previous item / jump back in snippet
- `<CR>` — confirm selection
- `<C-Space>` — trigger completion manually
- `<C-f>` / `<C-d>` — scroll docs
- `<C-]>` — clear Supermaven suggestion
- `<C-j>` — accept one word of Supermaven suggestion

---

## Formatting (conform.nvim)

| Key | Action |
|---|---|
| `<leader>f` | Format buffer (async) |

**Auto-prettier filetypes:** js, ts, jsx, tsx, json, css, scss, less, html, yaml, markdown, graphql
Other filetypes fall back to LSP formatting.

---

## Git

**Gitsigns (visual hunks in sign column):** `+` add, `~` change, `_` delete

**Fugitive commands:**
- `:Git` — status
- `:Git blame`
- `:Gdiffsplit` — diff against index
- `:Gwrite` / `:Gread` — stage / checkout
- `:GBrowse` — open file on GitHub (via rhubarb)

---

## File Navigation — oil.nvim

| Key | Action |
|---|---|
| `-` | Open parent directory as a buffer |

Inside Oil: edit the buffer like text to create/rename/delete files, then `:w` to apply.

---

## Treesitter Textobjects

**Select** (in visual/operator-pending):
| Key | Selects |
|---|---|
| `af` / `if` | Function (outer/inner) |
| `ac` / `ic` | Class (outer/inner) |
| `aa` / `ia` | Parameter (outer/inner) |

**Jump:**
| Key | Target |
|---|---|
| `]m` / `[m` | Next / prev function start |
| `]M` / `[M` | Next / prev function end |
| `]]` / `[[` | Next / prev class start |
| `][` / `[]` | Next / prev class end |

**Swap parameters:**
| Key | Action |
|---|---|
| `<leader>a` | Swap with next parameter |
| `<leader>A` | Swap with previous parameter |

---

## Editing Helpers

**Comment.nvim:**
- `gcc` — toggle line comment
- `gc` — toggle in visual mode
- `gcap` — comment a paragraph

**mini.surround:**
- `sa{motion}{char}` — add surround (e.g. `saiw"` wraps word in quotes)
- `sd{char}` — delete surround
- `sr{old}{new}` — replace surround

**nvim-autopairs:** auto-closes `()`, `[]`, `{}`, quotes.

**which-key:** start typing `<leader>` and wait — a popup shows available bindings.

---

## UI

- **Theme:** tokyonight
- **Statusline:** lualine (bottom)
- **Indent guides:** `┊` in indented blocks

---

## Plugin Manager — lazy.nvim

| Command | Action |
|---|---|
| `:Lazy` | Plugin dashboard |
| `:Lazy sync` | Install + update + clean |
| `:Lazy update` | Update plugins |
| `:Lazy clean` | Remove unused |
| `:Lazy profile` | Startup profiling |

---

## LSP Server Manager — Mason

| Command | Action |
|---|---|
| `:Mason` | Open Mason UI |
| `:MasonInstall <name>` | Install a server/tool |
| `:MasonUpdate` | Update registry |

---

## Treesitter

| Command | Action |
|---|---|
| `:TSInstall <lang>` | Install parser |
| `:TSUpdate` | Update parsers |
| `:TSPlaygroundToggle` | (if installed) inspect tree |
