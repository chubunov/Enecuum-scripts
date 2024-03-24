#!/bin/bash

clear
sudo docker stop pulse_pos
sudo docker cp cpu_mods/n5105/addon.node  pulse_pos:app/node_modules/node-randomx

