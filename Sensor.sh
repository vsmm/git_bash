#!/bin/bash

tempsenso=$(grep "t=" /sys/bus/w1/devices/28-00000560a4e2/w1_slave | cut -d\= -f2)
echo "scale=3; $tempsenso/1000" | bc
