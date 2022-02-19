#! /bin/bash

if   [ $(pulsemixer --get-mute) -eq 1 ]; 
	then
	echo "ﱝ"
else
	if [ $(pulsemixer --get-volume | awk '{print $1}') -ge 100 ];
	then
	echo " :$(pulsemixer --get-volume | awk '{print $1}')%"
	elif [ $(pulsemixer --get-volume | awk '{print $1}') -ge  50 ];
	then
	echo "墳 :$(pulsemixer --get-volume | awk '{print $1}')%"
	elif [ $(pulsemixer --get-volume | awk '{print $1}') -ge  25 ];
        then
        echo "奔 :$(pulsemixer --get-volume | awk '{print $1}')%"
	else
	echo "奄 :$(pulsemixer --get-volume | awk '{print $1}')%"
	fi
fi
