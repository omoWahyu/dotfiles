#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Mimosa/Mimosa.conf &> /dev/null &
