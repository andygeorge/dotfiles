# dotfiles

## Chezmoi

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin init --apply andygeorge && ln -s ~/.local/bin/chezmoi ~/.local/bin/cm
```

----
## Linux Mint onboarding

```sh
sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch
sudo apt update && sudo apt upgrade -y
sudo apt install -y openssh-server fish cockpit rustup fortune-mod fastfetch
sudo systemctl start ssh
rustup default stable
cargo install exa tailspin topgrade
chsh -s /usr/bin/fish
```

----

## Neovim

- `clang`
- [`vim-plug`](https://github.com/junegunn/vim-plug#unix-linux):
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```sh
sudo rm -rf /usr/bin/vi && sudo ln -s /usr/bin/nvim /usr/bin/vi
```

## `chezmoi` commands

```sh
cm update
cm apply
cm edit
cm managed
cm cd
```

## Nerd Fonts

```
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Mononoki/Regular
```

----
Managed using [`chezmoi`](https://www.chezmoi.io).

