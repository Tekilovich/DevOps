#!/bin/bash

if [ -f /etc/debian_version ]; then
	sudo apt update
	sudo apt install -y apache2

elif [ -f /etc/redhat-release ] then
	sudo dnf check-update
	sudo dnf install -y httpd
else
	echo "Unknown OS"
fi
