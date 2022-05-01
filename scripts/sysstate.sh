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

echo " [$(mem)][$(cpuusg)$(cputmp)][$(gpuusg)$(gputmp)] "
