#!/bin/bash

sudo docker logs pulse_pos | grep n: | tail
