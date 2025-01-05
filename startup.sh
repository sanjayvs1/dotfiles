#!/bin/bash
echo 60 | sudo tee /sys/class/power_supply/BAT?/charge_control_end_threshold 
sudo cpupower frequency-set -g powersave -d 0.8G -u 2.8G 
