#!/bin/bash

grep -vP 'Device|Linux|^$' stat > stat_b
awk '{print $2}' stat_b > tps
awk '{print $3}' stat_b > kB_read
awk '{print $4}' stat_b > kB_write
./gnup.sh
