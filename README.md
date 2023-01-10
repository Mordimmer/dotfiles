# My dotfiles
## Neovim
Neovim require [Plug](https://github.com/junegunn/vim-plug)
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## ZSH

**zsh** and [oh my zsh](https://github.com/ohmyzsh/ohmyzsh) instalation. ZSH should by already installed.
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
zsh theme: [powerlevel10k](https://github.com/romkatv/powerlevel10k)
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
zsh plugins:
1. [zsh-z](https://github.com/agkozak/zsh-z)
2. [zsh-autosugestion](https://github.com/zsh-users/zsh-autosuggestions)
3. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
4. [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode)
```bash
git clone https://github.com/jeffreytse/zsh-vi-mode \
$ZSH_CUSTOM/plugins/zsh-vi-mode
```
