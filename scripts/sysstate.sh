#! /bin/bash

mem(){
	mem="$(free | awk '/^Mem/ { print int(($3/$2)*100) }' | sed s/$/%/)"
	echo -e " : $mem"
}

cpuusg(){
	cpuusg="$(top -bn1 | grep Cpu | awk '{print int($2)}' | sed s/$/%/)"
	echo -e "﬙ : $cpuusg"
}

cputmp(){
	cputmp="$(sensors | awk '/^Tctl:/ {print int($2)}' | sed s/+// | sed s/$/C/)"
	echo -e " : $cputmp"
}

gpuusg(){
	gpuusg="$(nvidia-smi | grep Default | awk '{print $13}')"
	echo -e " : $gpuusg"
}
gputmp(){
	gputmp="$(nvidia-smi | grep Default | awk '{print $3}')"
	echo -e " : $gputmp"
}

traffic(){
    logfile="${XDG_CACHE_HOME:-$HOME/.cache}/netlog"
    prevdata="$(cat "$logfile")"

    rxcurrent="$(($(cat /sys/class/net/*/statistics/rx_bytes | paste -sd '+')))"
    txcurrent="$(($(cat /sys/class/net/*/statistics/tx_bytes | paste -sd '+')))"

    printf " %sKiB  %sKiB\\n" "$(((rxcurrent-${prevdata%% *})/1024))" "$(((txcurrent-${prevdata##* })/1024))"

    echo "$rxcurrent $txcurrent" > "$logfile"
}

echo "[ $(traffic) ] [ $(mem) ] [ $(cpuusg) $(cputmp) ] [ $(gpuusg) $(gputmp) ] "
