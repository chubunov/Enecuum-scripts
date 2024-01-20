#!/bin/bash
clear
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-ce-cli
sudo rm -r /var/lib/docker/
