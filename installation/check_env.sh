#!/bin/bash

if [[ $SUDO_USER != "" ]]
then
	echo "This script is incompatible with being run sudo'ed."
	exit 1
fi

if [[ `whoami` == "root" ]]
then
	echo "You should not run this as root."
	exit 1
fi
