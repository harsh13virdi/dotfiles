#! /bin/bash

vol(){
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
}

mic(){
    if [ "$(pulsemixer --id "$(pulsemixer --list-sources | grep RNNoise\ Denoised\ Microphone | awk '{print $3}' | awk -F "," '{print $1}')" --get-mute)" -eq 0 ]; then
        echo ""
    else
        echo ""
    fi
}

music(){
if [ -z "$(pidof mpd)" ] ; then
	echo "ﱙ "
else
    echo ""
fi
}

echo [$(vol)][$(mic)][$(music)]
