#! /bin/bash
if [ $1 = cpu ]
then 
	echo system.cpu.idle    $(top -b -n1 -i | awk ' NR==3 {print $6}')
	echo system.cpu.user    $(top -b -n1 -i | awk ' NR==3 {print $2}')
	echo system.cpu.guest   $(top -b -n1 -i | awk ' NR==3 {print $1}')
	echo system.cpu.iowait  $(top -b -n1 -i | awk ' NR==3 {print $10}')
	echo system.cpu.stolen  $(top -b -n1 -i | awk ' NR==3 {print $16}')
	echo system.cpu.system  $(top -b -n1 -i | awk ' NR==3 {print $4}')
fi
if [ $1 = mem ]
then
	echo virtual total 	$(top -b -n1 -i | awk ' NR==4 {print $4}')
	echo virtual used  	$(top -b -n1 -i | awk ' NR==4 {print $8}')
	echo virtual free 	$(top -b -n1 -i | awk ' NR==4 {print $6}')
	echo virtual shared 	$(top -b -n1 -i | awk ' NR==4 {print $1}')
	echo swap total 	$(top -b -n1 -i | awk ' NR==5 {print $3}')
	echo swap used 		$(top -b -n1 -i | awk ' NR==5 {print $7}')
	echo swap free 		$(top -b -n1 -i | awk ' NR==5 {print $5}')
fi
