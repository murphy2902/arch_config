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