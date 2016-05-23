#!/bin/bash

connect() { 
	sudo wpa_supplicant -B -i ${WIFI_DEVICE} -c /etc/wpa_supplicant/wpa_supplicant.conf \
	&& sudo dhcpcd ${WIFI_DEVICE} 
}
