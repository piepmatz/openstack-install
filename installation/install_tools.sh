#!/bin/bash

packages=""

# for the filename command
packages+=" wcstools"

# for the realpath command
packages+=" realpath"

# for virtual machine creation
# see the tutorial http://serverascode.com/2014/03/17/trusty-libvirt.html
packages+=" bzr"

# for the virtual machine manager
packages+=" virt-manager"

# for pip
packages+=" python-pip"

tools/install_latest_package $packages

# install Jinja2 for template instanciation
if ! python -c "import jinja2"
then
	sudo pip install --upgrade Jinja2
fi
