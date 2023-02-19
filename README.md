# raspi_fancontrol
Docker Compose Fan Control for Rasbberry Pi with Python

## Overview
Current settings (run-fan.py):
```
pin = 14  # The pin ID, edit here to change it
maxTMP = 65  # The maximum temperature in Celsius after which we trigger the fan
stopTMP = maxTMP - 10
SLEEP_INTERVAL = 5 # Read the temperature every 5 sec, increase or decrease this limit if you want
```
Fan is connected to GPIO14 on the Raspberry Pi. In this setup a transistor switches the fan on and off (Fan does not have PWM constrol)
Uses vcgencmd to read the temp of the Pi.

## How to use
```
git clone
cd raspi_fancontrol
docker compose up
```
