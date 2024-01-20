#!/bin/bash
clear
sudo docker logs pulse_pos | grep n: | tail
