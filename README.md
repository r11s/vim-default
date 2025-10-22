# Vim Default (Port + 6-Color + Dark Variants)

A faithful recreation of Vim’s built-in **“default”** colorscheme — available in four authentic variants:

* **Vim Default (Port)** – a pure minimalist translation of Vim’s `default.vim`
  → defines no explicit colors, deferring entirely to the editor or terminal palette.

* **Vim Default (Port) Dark** – mirrors Vim’s `:set background=dark` behavior
  → identical syntax colors with inverted base (white-on-black), minimalist and faithful to gVim.

* **Vim Default (6-Color)** – a classic interpretation of Vim’s built-in syntax highlighting
  → blue for keywords and comments, green for strings, magenta for constants, red for errors — just like early gVim.

* **Vim Default (6-Color) Dark** – the nostalgic 6-color palette with a dark background
  → same color relationships, optimized for low-light use.

---

## 🧩 Installation

You can install **Vim Default (Port + 6-Color)** in two ways:

### 1️⃣ From the VS Code Marketplace

Search directly inside VS Code:

> **Vim Default (Port + 6-Color)** by **r11s**

or visit the Marketplace page:
🔗 [https://marketplace.visualstudio.com/items?itemName=r11s.vim-default](https://marketplace.visualstudio.com/items?itemName=r11s.vim-default)

Once installed, open the **Command Palette → Preferences: Color Theme** and choose one of:

* `Vim Default (Port)`
* `Vim Default (Port) Dark`
* `Vim Default (6-Color)`
* `Vim Default (6-Color) Dark`

### 2️⃣ Manual Installation (Local VSIX)

If you built or downloaded the `.vsix` file manually:

1. Open the **Command Palette** (`Ctrl+Shift+P` / `Cmd+Shift+P` on macOS).
2. Run **“Extensions: Install from VSIX...”**
3. Select your `vim-default-<version>.vsix` file.
4. Restart VS Code — done ✅

---

## 🎨 Theme Philosophy

Vim’s original `default.vim` doesn’t actually assign colors — it simply clears existing highlights, resets syntax, and leaves color decisions to your environment (`syncolor.vim`, terminal, or GUI).

This port embraces that minimalism but adapts it to the world of VS Code.

### ✳️ Why a 1 : 1 mapping isn’t possible

Vim and VS Code use **different syntax engines**:

| In Vim                                              | In VS Code                                                         |
| --------------------------------------------------- | ------------------------------------------------------------------ |
| Regex-based `syntax/*.vim` files                    | TextMate grammars (scopes)                                         |
| Highlight groups like `Statement`, `String`, `Type` | Scopes like `keyword.control`, `string.quoted`, `entity.name.type` |

Because those structures don’t align perfectly, an *exact* one-to-one mapping of every token is impossible.
However, this theme reproduces the **visual intent** of Vim’s default palette — so that the code *feels* the same even when scope names differ.

---

## 🎨 The 6-Color Variant

| Group                 | Color                           | Example                  |
| --------------------- | ------------------------------- | ------------------------ |
| **Comment / Keyword** | Blue (`#0000FF`)                | `if`, `for`, `# comment` |
| **String**            | Green (`#008000`)               | `"Hello, world!"`        |
| **Constant / Number** | Magenta (`#FF00FF`)             | `42`, `PI`               |
| **Error**             | White on Red                    | syntax errors            |
| **Normal Text**       | Black on White / White on Black | depends on variant       |

The goal isn’t to imitate Vim pixel-for-pixel, but to recreate the **same visual feeling and focus cues** that longtime Vim users intuitively recognize.

---

## 🌒 About “Vim Default (Port) Dark”

Vim itself never shipped with a true *“default dark”* colorscheme.
When you start Vim or gVim and run:

```vim
:set background=dark
:colorscheme default
```

Vim simply reuses the same highlighting logic — it only swaps the **Normal** colors:

* **foreground** → white
* **background** → black

All syntax groups (blue, green, magenta, cyan, red) stay identical.

> “keep the colors, only invert the background.”

This dark variant preserves the **authentic gVim behavior**,
so it feels natural to anyone accustomed to `:set background=dark` in classic Vim.

---

## ⚙️ Recommended Settings

To match Vim’s clean, distraction-free look:

```jsonc
{
  "editor.semanticHighlighting.enabled": false,
  "editor.bracketPairColorization.enabled": false,
  "editor.guides.bracketPairs": false,
  "editor.renderWhitespace": "none",
  "editor.cursorBlinking": "solid"
}
```

These settings remove additional semantic layers and restore the simplicity that defines Vim’s visual style.

> 💡 Note: These settings are not applied automatically.
> To achieve the authentic Vim look, copy them into your
> VS Code `settings.json` (Preferences → Settings → Open JSON).

---

## ⚖️ License

Licensed under the [Vim License](https://github.com/vim/vim/blob/master/LICENSE).
All trademarks and copyrights remain with their respective owners.

---

## 🛠 Maintainers

* **Ported by:** Rainer S. (@r11s)
* **Original Vim authors:** Bram Moolenaar and the Vim Project
* **Inspiration:** The timeless simplicity of Vim’s `default.vim`
