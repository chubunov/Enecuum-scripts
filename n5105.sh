sudo docker stop pulse_pos
sudo docker cp cpu_mods/n5101/addon.node  pulse_pos:app/node_modules/node-randomx
sudo docker start pulse_pos