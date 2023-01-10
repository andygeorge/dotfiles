# dotfiles

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin init --apply andygeorge && ln -s ~/.local/bin/chezmoi ~/.local/bin/cm
sudo rm -rf /usr/bin/vi && sudo ln -s /usr/bin/nvim /usr/bin/vi
```

----

## Neovim

- `clang`
- [`vim-plug`](https://github.com/junegunn/vim-plug#unix-linux):
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## `chezmoi`

```sh
cm update
cm apply
cm edit
cm managed
cm cd
```

----
Managed using [`chezmoi`](https://www.chezmoi.io).

