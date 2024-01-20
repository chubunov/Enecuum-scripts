#!/bin/bash
clear
  echo "Выберите какие логи удалить:"
  echo "1. Очистите логи приложения PoS узла"
  echo "2. Очистите логи Docker-контейнеров"
  echo "3. Отмена"

  read choice

  case $choice in
    1)
      sudo docker exec pulse_pos pm2 flush
      ;;
    2)
      sudo truncate -s 0 /var/lib/docker/containers/*/*-json.log;
      ;;
    0) exit ;;
   
  esac
