# This a script which prints basic information about your OS to console
# The script accept a single parameter to specify which metrics set to print:
# $ ./metrics cpu
# $ ./metrics mem

#! /bin/bash

# this part prints CPU metrics
if [ $1 = cpu ]
then 
	echo system.cpu.idle    $(top -b -n1 -i | awk ' NR==3 {print $6}')
	echo system.cpu.user    $(top -b -n1 -i | awk ' NR==3 {print $2}')
	echo system.cpu.guest   $(cat /proc/stat| awk ' NR==2 {printf "%.1f", $10}')
	echo system.cpu.iowait  $(top -b -n1 -i | awk ' NR==3 {print $10}')
	echo system.cpu.stolen  $(top -b -n1 -i | awk ' NR==3 {print $16}')
	echo system.cpu.system  $(top -b -n1 -i | awk ' NR==3 {print $4}')
fi

# this part prints RAM metrics
if [ $1 = mem ]
then
	echo virtual total      $(free | awk 'NR==2{print $2}')
        echo virtual used       $(free | awk 'NR==2{print $3}')
        echo virtual free       $(free | awk 'NR==2{print $4}')
        echo virtual shared     $(free | awk 'NR==2{print $5}')
        echo swap total         $(free | awk 'NR==3{print $2}')
        echo swap used          $(free | awk 'NR==3{print $3}')
        echo swap free          $(free | awk 'NR==3{print $4}')
fi
