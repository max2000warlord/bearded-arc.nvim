# 🎨 Bearded Arc

A dark colorscheme for Neovim, ported from the [Bearded Theme](https://github.com/BeardedBear/bearded-theme) Arc variant.

## ✨ Features

- Supports TreeSitter syntax highlighting
- LSP diagnostics support
- Git signs integration
- Popular plugin support (Telescope, Neo-tree, etc.)
- LazyVim compatible

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "max2000warlord/bearded-arc.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme bearded-arc]])
  end,
}
```

### LazyVim

```lua
-- lua/plugins/colorscheme.lua
return {
  { "max2000warlord/bearded-arc.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "bearded-arc",
    },
  },
}
```

## 🚀 Usage

```vim
colorscheme bearded-arc
```

Or in Lua:

```lua
vim.cmd([[colorscheme bearded-arc]])
```

## 📸 Screenshots

(Add your screenshots here)

## 🙏 Credits

- Original theme: [Bearded Theme](https://github.com/BeardedBear/bearded-theme)
```

**`LICENSE`:**

```
MIT License

Copyright (c) 2024 [Your Name]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
