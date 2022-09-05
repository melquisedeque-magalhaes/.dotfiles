# My Dot files:

## Automate this
```sh
### Instalando Todos os programas no linux
chmod +x scriptAutomationInstallApps.sh
./scriptAutomationInstallApps.sh

### Setup dot dotfiles
git clone --recurse-submodules https://github.com/melquisedeque-magalhaes/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.hyper.js ~/.hyper.js
