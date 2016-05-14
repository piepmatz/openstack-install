#!/bin/sh

# instantly fail if any command fails
set -e

# we do not check if ansible is already installed so we
# get the latest version

sudo apt-add-repository -y ppa:ansible/ansible 2> /dev/null
sudo apt-get -y update > /dev/null
tools/install_latest_package software-properties-common ansible

