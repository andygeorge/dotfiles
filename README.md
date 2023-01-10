# Andy's dotfiles

Managed using [`chezmoi`](https://www.chezmoi.io).

### Prerequisites

- `clang`

- [`vim-plug`](https://github.com/junegunn/vim-plug#unix-linux):
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Install `chezmoi` and dotfiles:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply andygeorge && ln -s ~/bin/chezmoi ~/bin/cm
```

```sh
sudo rm -rf /usr/bin/vi && sudo ln -s /usr/bin/nvim /usr/bin/vi
```

### Helpful `chezmoi` commands:

```sh
cm update
cm apply
cm edit
cm managed
cm cd
```
