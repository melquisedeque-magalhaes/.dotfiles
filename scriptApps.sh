#!/bin/bash

directory=/home/melqui/.dotfiles/

apt_install() {
  while read line; do 
    sudo apt install  $line
  done < "$apt_packages"

  start
}

start() {
  echo 
  echo "Selecione uma opção"
  echo 
  echo "1 - Instalar programas com APT"
  echo "2 - Sair"
  echo

  while :
    do 
      read switch_select
      case $switch_select in 

        1) apt_packages="$directory/packages.txt"
          apt_install;;
        
        2) exit

      esac
  done  
}

start