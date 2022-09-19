#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Mimosa/Mimosa-light.conf &> /dev/null &
