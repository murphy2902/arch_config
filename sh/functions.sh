#!/bin/bash

connect() { 
	[[ ! -n $WIFI_DEVICE ]] \
		&& echo "ERROR: WIFI_DEVICE not set!" \
		&& return
	sudo wpa_supplicant -B -i ${WIFI_DEVICE} -c /etc/wpa_supplicant/wpa_supplicant.conf \
	&& sudo dhcpcd ${WIFI_DEVICE} 
}

alert() {
	notify-send $1 -a $APP_TERMINAL -u critical
}

gocd() {
	asdf=(`echo -n $1 | sed -e 's/\// /g'`)
	[[ ! -n ${asdf[2]} ]] \
		&& echo "gocd takes two directories, the author and the project separated by a '/', as it appears in your GOPATH" \
		&& return
	[[ ! -n ${asdf[1]} ]] \
		&& echo "gocd takes two directories, the author and the project separated by a '/', as it appears in your GOPATH" \
		&& return
	target=`find $GOPATH/src -type d -name ${asdf[2]} | grep "$1$" | grep -v -m 1 "_output"`
	[[ ! -n $target ]] \
		&& echo "Could not find $1 in GOPATH/src" \
		&& return
	cd $target \
		&& echo $PWD
}

cdl() {
	cd $1 \
		&& echo $PWD \
		&& ls
}

gocdl() {
	gocd $1 \
		&& ls
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
		notify-send "ding" -a "Alarm" -u critical
	done
}

update() {
	manager=whichManager
	sudo ${manager}
}

whichManager() {
	[[ -e /usr/bin/dnf ]] && \
		return "dnf update"
	[[ -e /usr/bin/pacman ]] && \
		return "pacman -Syyu"
}
