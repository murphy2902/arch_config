#!/bin/bash

connect() { 
	[[ ! -n $WIFI_DEVICE ]] \
		&& echo "ERROR: WIFI_DEVICE not set!" \
		&& exit
	sudo wpa_supplicant -B -i ${WIFI_DEVICE} -c /etc/wpa_supplicant/wpa_supplicant.conf \
	&& sudo dhcpcd ${WIFI_DEVICE} 
}

alert() {
	notify-send $1 -u critical
}

update() {
	echo "TODO:"
}

timer() {
	date1=`date +%s`
	while true; do 
		echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
	done
}

alarm() { 
	[[ -n $1 ]] \
		|| echo "Error: alarm takes one argument"; return 1

	sleep $1
	while true; do
		sleep 30m
		alert "ping"
	done
}
