#!/bin/bash

# Clone Ethernet Mac Address

ifconfig enp5s0 down

macchanger -m ac:86:74:06:bd:99 enp5s0

ifconfig enp5s0 up

echo Changed

exit 0
