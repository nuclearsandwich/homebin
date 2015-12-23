#!/bin/sh

BAT0_STATUS=$(cat /sys/class/power_supply/BAT0/status | cut -c1)
BAT1_STATUS=$(cat /sys/class/power_supply/BAT1/status | cut -c1)

BAT0_ENERGY_NOW=$(cat /sys/class/power_supply/BAT0/energy_now)
BAT1_ENERGY_NOW=$(cat /sys/class/power_supply/BAT1/energy_now)

BAT0_ENERGY_FULL=$(cat /sys/class/power_supply/BAT0/energy_full_design)
BAT1_ENERGY_FULL=$(cat /sys/class/power_supply/BAT1/energy_full_design)

BAT0_PERCENT=$(echo "scale = 2; $BAT0_ENERGY_NOW / $BAT0_ENERGY_FULL * 100" | bc | cut -d'.' -f 1)
BAT1_PERCENT=$(echo "scale = 2; $BAT1_ENERGY_NOW / $BAT1_ENERGY_FULL * 100" | bc | cut -d'.' -f 1)


echo $BAT0_STATUS $BAT0_PERCENT $BAT1_STATUS $BAT1_PERCENT
