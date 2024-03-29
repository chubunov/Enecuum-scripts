#!/bin/bash
clear
read -p "Введите пароль для MySQL базы: " password
echo
echo
read -p "Введите iD POS контракта: " contract_id
echo
echo
db_command="sudo docker run -d --name pulse_db -e MYSQL_ROOT_PASSWORD=${password} enecuum/pulse_db"
pos_command="sudo docker run -ti --name pulse_pos --link pulse_db:dbhost -p8000:8000 -e POS_ID=${contract_id} -e PORT=8000 -e DB_PASS=${password} -e PEER='65.109.66.179:8000' -e DB_PORT=3306 -e LAG_INTERVAL=300 -e SYNC_INTERVAL=258 -d enecuum/pulse_pos"

eval "$db_command"
eval "$pos_command"


