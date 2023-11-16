#!/bin/bash

echo "Хотите установить мод? (y/n)"
read install_mod

if [ "$install_mod" == "y" ]; then
  echo "Выберите мод для установки:"
  echo "1. N5105"

  read mod_choice

  case $mod_choice in
    1)
      ./n5105.sh
      ;;
   
  esac

else
  echo "Установка мода отменена"
fi
