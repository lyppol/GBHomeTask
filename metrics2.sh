#! /bin/bash

#	echo virtual total 	$(top -b -n1 -i | awk ' NR==4 {print $4}')
#	echo virtual used  	$(top -b -n1 -i | awk ' NR==4 {print $8}')
#	echo virtual free 	$(top -b -n1 -i | awk ' NR==4 {print $6}')
#	echo virtual shared 	$(top -b -n1 -i | awk ' NR==4 {print $1}')
#	echo swap total 	$(top -b -n1 -i | awk ' NR==5 {print $3}')
#	echo swap used 		$(top -b -n1 -i | awk ' NR==5 {print $7}')
#	echo swap free 		$(top -b -n1 -i | awk ' NR==5 {print $5}')


echo virtual total      $(free | awk 'NR==2{print $2}')
        echo virtual used       $(free | awk 'NR==2{print $3}')
        echo virtual free       $(free | awk 'NR==2{print $4}')
        echo virtual shared     $(free | awk 'NR==2{print $5}')
        echo swap total         $(free | awk 'NR==3{print $2}')
        echo swap used          $(free | awk 'NR==3{print $3}')
        echo swap free          $(free | awk 'NR==3{print $4}')
