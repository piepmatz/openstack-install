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

# for template instanciation
tools/install_latest_pip_package Jinja2

# for running some os_… Ansible modules
tools/install_latest_pip_package shade
