# Vim Default (Port + 6-Color + Dark Variants)

A faithful recreation of Vim’s built-in **“default”** colorscheme — available in six variants, including two that follow gVim’s real default colors:

* **Vim Default (Port)** – a pure minimalist translation of Vim’s `default.vim`
  → defines no explicit colors, deferring entirely to the editor or terminal palette.

* **Vim Default (Port) Dark** – mirrors Vim’s `:set background=dark` behavior
  → identical syntax colors with inverted base (white-on-black), minimalist and faithful to gVim.

* **Vim Default (6-Color)** – a classic interpretation of Vim’s built-in syntax highlighting
  → blue for keywords and comments, green for strings, magenta for constants, red for errors — just like early gVim.

* **Vim Default (6-Color) Dark** – the nostalgic 6-color palette with a dark background
  → same color relationships, optimized for low-light use.
  
* **Vim Default (6-Color Brown)** 🟤 – the closest match to gVim’s default colorscheme
  → brown keywords, magenta strings and numbers, sea-green types, teal built-in functions. The colors were taken from Vim 9.1 (`:highlight`).

* **Vim Default (6-Color Brown Dark)** 🟤 – the same for `:set background=dark`
  → gVim’s dark palette (yellow keywords, light-green types, light-red constants) on black.


---

## 🧩 Installation

Works with **Visual Studio Code** and **VSCodium** (the latter via Open VSX). You can install **Vim Default (Port + 6-Color)** in two ways:

### 1️⃣ From the Marketplace (VS Code) or Open VSX (VSCodium)

Search directly inside VS Code:

> **Vim Default (Port + 6-Color)** by **r11s**

or visit the Marketplace page (VSCodium has Open VSX built in, search for the same name):
🔗 [https://marketplace.visualstudio.com/items?itemName=r11s.vim-default](https://marketplace.visualstudio.com/items?itemName=r11s.vim-default)

Once installed, open the **Command Palette → Preferences: Color Theme** and choose one of:

* `Vim Default (Port)`
* `Vim Default (Port) Dark`
* `Vim Default (6-Color)`
* `Vim Default (6-Color) Dark`
* `Vim Default (6-Color Brown)`
* `Vim Default (6-Color Brown Dark)`


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

## 🟤 The Brown Variants

These two variants follow the **real colors of gVim’s default colorscheme**, read from Vim 9.1 with `:highlight`. Vim names the groups; the theme maps TextMate scopes onto them.

| Vim group (style)  | Light     | Dark      | Examples                                  |
| ------------------ | --------- | --------- | ----------------------------------------- |
| **Statement** bold | `#a52a2a` | `#ffff60` | `if`, `for`, `func`, `return`             |
| **Constant**       | `#ff00ff` | `#ffa0a0` | strings, numbers, `true`                  |
| **Special**        | `#6a5acd` | `#ffa500` | escapes such as `\t`, placeholders `%d`   |
| **Type** bold      | `#2e8b57` | `#60ff60` | `int`, `float64`, `public`, `static`      |
| **Identifier**     | `#008b8b` | `#40ffff` | built-ins such as `make`, `len`           |
| **PreProc**        | `#6a0dad` | `#ff80ff` | Python `import`, `@Override`, `#include`  |
| **Comment**        | `#0000ff` | `#80a0ff` | comments                                  |

Normal text is black on white (light) and white on black (dark). Operators, function names and brackets stay plain, as in Vim. The current line uses Vim’s `CursorLine` colors (`#e5e5e5` light, `#666666` dark), like gVim with `:set cursorline`.

### Differences from gVim

Go, Java and Python were compared token by token with gVim; Go matches completely. What remains different:

* Java: Vim colors the first sentence of a Javadoc comment like a special (`#6a5acd`). Unicode escapes such as `\u00e9` are only partly recognized by the TextMate grammar.
* Python: Vim colors a few names such as `None` in a function signature differently.
* JavaScript: Vim paints curly braces teal. This theme keeps them plain.
* C, JavaScript and Ruby were checked only roughly. Ruby follows the generic rules and differs from Vim in several places (for example `def` and `end`).
* There are no italics, no indent guides and no colored bracket pairs, as in Vim.

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

The two **Brown** variants already switch off colored bracket pairs, indent guides and word highlighting. They need no extra settings.

For **Port** and **6-Color** add these to match Vim’s clean look:

```jsonc
"editor.bracketPairColorization.enabled": false,
"editor.guides.indentation": false,
"editor.occurrencesHighlight": "off"
```

> 💡 Note: These settings are not applied automatically, and VS Code cannot limit them to one theme. They apply to every theme you use. Copy them into your `settings.json` (Preferences → Settings → Open JSON) between the existing braces.

---

## 🎛 Customizing

Every color can be changed without editing the theme. Example for the light Brown variant:

```jsonc
"editor.tokenColorCustomizations": {
  "[Vim Default (6-Color Brown)]": {
    "comments": "#0000cc",
    "strings": "#cc00cc"
  }
},
"workbench.colorCustomizations": {
  "[Vim Default (6-Color Brown)]": {
    "editor.background": "#fafaf5"
  }
}
```

In the Command Palette, **Developer: Inspect Editor Tokens and Scopes** shows which scope or color applies to the text under the cursor.

---

## 🧪 Test files

The repository contains short sample files in `tests/` (about 40 lines each) so you can check the themes in your own languages: Java, Go, Python, Ruby, C, C++, JavaScript, Kotlin, Pascal, COBOL, HTML (with CSS and JavaScript) and XML. Each file uses the same elements: comments, numbers, strings with escapes, type and function declarations, control flow and constants.

* To see only the TextMate colors that everyone gets, set `"editor.semanticHighlighting.enabled": false`. These themes define no semantic colors, so a language server does not change them.
* VS Code has no built-in grammar for Kotlin, Pascal and COBOL. Install an extension that provides one, otherwise these files show as plain text:

  | Language | Extension ID              | Provides                              |
  | -------- | ------------------------- | ------------------------------------- |
  | Kotlin   | `mathiasfrohlich.Kotlin`  | syntax highlighting only              |
  | Kotlin   | `JetBrains.kotlin-server` | language server (Kotlin by JetBrains) |
  | Pascal   | `alefragnani.pascal`      | syntax highlighting                   |
  | COBOL    | `bitlang.cobol`           | syntax highlighting                   |

  The colors in these languages depend on the scopes the extension’s grammar provides. On VSCodium the extensions are available only if they are published on Open VSX.

---

## ⚖️ License

Licensed under the [Vim License](https://github.com/vim/vim/blob/master/LICENSE).
All trademarks and copyrights remain with their respective owners.

---

## 🛠 Maintainers

* **Ported by:** Rainer S. (@r11s)
* **Original Vim authors:** Bram Moolenaar and the Vim Project
* **Inspiration:** The timeless simplicity of Vim’s `default.vim`
