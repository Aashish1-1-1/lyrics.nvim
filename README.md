
# 🎶 lyrics.nvim

A Neovim plugin to fetch and display the lyrics of the song you're currently jamming to.

## Why??

Are you listening to a song while writing some... *well, let's call it "creative"* code, and suddenly feel the urge to sing along but have no clue what the lyrics are? Don't worry, **I got you covered**! Presenting **lyrics.nvim**, the plugin that guarantees to fetch lyrics of any song listed on Genius, right in your Neovim.

Stop Googling lyrics in your browser; let the music and the code flow together, all in one place! 🎤🎧

---

## 📦 Installation

Add the following to your Neovim config to start singing along while you code.

### For Lazy.nvim

```lua
{
    "Aashish1-1-1/lyrics.nvim",
    cmd = "Lyrics",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("init")
    end
}
```

### For Packer.nvim

```lua
use {
    "Aashish1-1-1/lyrics.nvim",
    cmd = "Lyrics",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
        require("init")
    end
}
```

---

## 🛠️ Usage

Once installed, just run the following command while you’re coding (or pretending to code):

```vim
:Lyrics Artist(optional) SongName
```
---

## 🎯 Features

- **Instant Lyrics Fetching**: Get lyrics for any song that's currently playing. Genius has a vast collection, so there's a good chance it’s covered.
- **No Distraction**: Stay within Neovim, no need to switch to a browser. Just sing along while you hack.
- **Simple & Lightweight**: No heavy dependencies—just lyrics straight into your workflow.

---

## 🔧 Configuration

You can customize lyrics.nvim to suit your workflow by tweaking some options (if necessary). By default, it’s ready to go!

---

## 🙏 Contributing

Have a feature in mind? Found a bug? Feel free to open an issue or PR! Let's make this plugin the best lyrical assistant for developers!

---

## 💬 Credits

This plugin is inspired by the need to code, vibe, and sing—all at once. Special thanks to Genius for providing the lyrics database.

---

Get coding, get singing! 🎶
