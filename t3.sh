#!/bin/bash

echo "Introduceti ip:"
read ip

if [[ $ip == "0" || $ip == "" ]] ; then
	echo "Valoarea introdusa nu este buna"
	exit
fi

ping -c 1 $ip;
if [[ $? == "0" ]]; then
	echo "Masina este disponibila"
else
	echo "Masina nu este disponibila"
fi
