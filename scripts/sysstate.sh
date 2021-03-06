#! /bin/bash

mem(){
	mem="$(free | awk '/^Mem/ { print int(($3/$2)*100) }' | sed s/$/%/)"
	echo -e " :$mem"
}

cpuusg(){
	cpuusg="$(top -bn1 | grep Cpu | awk '{print int($2)}' | sed s/$/%/)"
	echo -e "﬙ :$cpuusg"
}

cputmp(){
	cputmp="$(sensors | awk '/^Package/ {print int($4)}' | sed s/+// | sed s/$/C/)"
	echo -e " :$cputmp"
}

bat(){
	batterystatus
}

nettraf(){
    nettraffic
    }

wifi(){
    wifi="$(nmcli connection show | grep wlp4s0 | awk '{print $1}')"
    echo  "  $wifi"
}

echo " [$(nettraf)] [$(wifi)] [$(mem)] [$(cpuusg) $(cputmp)] [$(bat)] "
