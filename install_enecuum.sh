#!/bin/bash
clear
read -p "Введите пароль для MySQL базы: " password
echo
echo
read -p "Введите iD POS контракта: " contract_id
echo
echo
read -p "Введите публичный ключ POS аккаунта: " POS_OWNER_PUB
echo
echo
read -p "Введите приватный ключ POS аккаунта: " POS_OWNER_PRV


db_command="sudo docker run -d --name pulse_db -e MYSQL_ROOT_PASSWORD=${password} enecuum/pulse_db"
pos_command="sudo docker run -ti --name pulse_pos --link pulse_db:dbhost -p8000:8000 -p3000:3000 -p80:80 -e POS_ID=${contract_id} -e PORT=8000 -e DB_PASS=${password} -e PEER='65.109.66.179:8000' -e DB_PORT=3306 -e POS_OWNER_PUB=${POS_OWNER_PUB} -e POS_OWNER_PRV=${POS_OWNER_PRV} -e POA_PORT=3000 -e EXPLORER_PORT=80  -e LAG_INTERVAL=300 -e SYNC_INTERVAL=258  -d enecuum/pulse_pos:latest"

eval "$db_command"
eval "$pos_command"
