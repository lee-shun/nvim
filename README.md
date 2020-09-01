## <center>📘📘 My Neovim Config </center>
#### <center>🙏🙏Thanks for theniceboy's [neovim video](https://space.bilibili.com/13081489?from=search&seid=9375318644841322836) and [config files](https://github.com/theniceboy/nvim)!!

#### About This Config
* I began to use neovim about 1 year ago(2019), and now it's my **favourate** editor! I keep
learning and tuning neovim in the past one year; </br>

* Due to my study and work in Robotics, I usually code in C/C++ as well as Python. So if you 
  want to use (neo)vim as a lightweight IDE for C++ as well as Python, This config is **JUST FOR YOU!**

* Take whatever you want, but please **DO NOT** just clone it without skimming!</br>
</br>

![screenshot1](./screenshot1.png)

![screenshot](./screenshot.png)


####  Main Features
1. As **LESS remaps** as I can do to keep the original vim keybings;
2. Different moduls are well arranged;
3. Use [coc.nvim](https://github.com/neoclide/coc.nvim) as the main platform;
4. .....

####  Files Tree
    .
    ├── autoload
    │   ├── plug.vim
    │   └── plug.vim.old
    ├── basic.vim
    ├── coc-settings.json
    ├── init.vim
    ├── _machine_specific.vim
    ├── plug
    │   ├── plug_beauty.vim
    │   ├── plug_complete.vim
    │   ├── plug_general_enhance.vim
    │   ├── plug_languages.vim
    │   └── plugs.vim
    ├── plug_config
    │   ├── plug_beauty_settings.vim
    │   ├── plug_coc_settings.vim
    │   ├── plug_complete_settings.vim
    │   ├── plug_general_enhance_settings.vim
    │   ├── plug_languages_settings.vim
    │   └── plugs_settings.vim
    ├── README.md
    ├── tmp
    │   ├── backup
    │   │   └── README.md.swp
    │   ├── sessions
    │   └── undo
    └── Ultisnips
        ├── cpp.snippets
        ├── snippets.snippets
            └── tex.snippets
#### Usage
- [ ] before installing: the followering requirments should be satisfied!!!!
1. nodejs
2. clangd
3. universial-ctags
4. fzf
5. ranger
6. nerdfonts
---
- [ ]   after installing
1. **RUN** `:checkhealth` in neovim to findout the further dependences

#### License
MIT

