#!/usr/bin/bash
# cpu performance mode for steam
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

steam -silent
