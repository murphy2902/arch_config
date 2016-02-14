# Follow functions
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
cpf() { cp "$@" && goto "$_"; }
mvf() { mv "$@" && goto "$_"; }
cdl() { cd $@ && pwd && ls -1; }

connect() { sudo ip link set ${WIFI_DEVICE} \
	&& sudo wpa_supplicant -B -i ${WIFI_DEVICE} -c /etc/wpa_supplicant/wpa_supplicant.conf \
	&& sudo dhcpcd ${WIFI_DEVICE} }
