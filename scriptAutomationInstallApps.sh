#!/bin/bash

directory=/home/melqui/melqui/.dotfiles/packages

apt_install() {
  apt_packages="$directory/packagesApt.txt"

  while read line; do 
    sudo apt install  $line -y
  done < "$apt_packages"

  exit
}

snap_install() {
  while read line; do 
    sudo snap install  $line
  done < "$snap_packages"

  apt_install
}

# download_zsh() {
#   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#   clone_repos
# }

clone_repos() {
  git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm

  exit
}

start() {
  while :
    do 
     
      snap_packages="$directory/packagesSnap.txt"
      snap_install

  done  

  exit
}

start