#!/bin/bash

sudo docker stop pulse_pos
sudo docker rm pulse_pos
sudo docker rmi enecuum/pulse_pos
sudo docker stop pulse_db
sudo docker rm pulse_db
