#!/bin/bash
clear
# Получение списка запущенных контейнеров
container_list=$(sudo docker ps --format "{{.Names}}")

# Проверка количества запущенных контейнеров
if [[ $(echo "$container_list" | wc -l) -eq 2 ]]; then
  # Если оба контейнера запущены, выводим "Оба работают" зеленым цветом
  echo -e "\e[32mОБА КОНТЕЙНЕРА РАБОТАЮТ\e[0m"
else
  # Проверка, какие контейнеры не работают
  if [[ ! "$container_list" =~ "pulse_db" ]]; then
    # Если контейнер pulse_db не запущен, выводим "pulse_db не работает" красным цветом
    echo -e "\e[31mpulse_db НЕ РАБОТАЕТ\e[0m"
  fi

  if [[ ! "$container_list" =~ "pulse_pos" ]]; then
    # Если контейнер pulse_pos не запущен, выводим "pulse_pos не работает" красным цветом
    echo -e "\e[31mpulse_pos НЕ РАБОТАЕТ\e[0m"
  fi
fi

