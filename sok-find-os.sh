#!/bin/bash
############################################################
# Find OS
# Author: Yujin Boby
# Email: info@tramvm.in
# Github: https://github.com/tramvm/proxy/
# Web: https://workspace.tramvm.com
############################################################
# For Linux Server Management, contact
# https://tramvm.in/contact
############################################################

if cat /etc/os-release | grep PRETTY_NAME | grep "Ubuntu 22.04" > /dev/null; then
    echo "ubuntu2204"
elif cat /etc/os-release | grep PRETTY_NAME | grep "Ubuntu 20.04" > /dev/null; then
    echo "ubuntu2004"
elif cat /etc/os-release | grep PRETTY_NAME | grep "Ubuntu 18.04" > /dev/null; then
    echo "ubuntu1804"
elif cat /etc/os-release | grep PRETTY_NAME | grep "Ubuntu 16.04" > /dev/null; then
    echo "ubuntu1604"
elif cat /etc/*release | grep DISTRIB_DESCRIPTION | grep "Ubuntu 14.04" > /dev/null; then
    echo "ubuntu1404"
elif cat /etc/os-release | grep PRETTY_NAME | grep "jessie" > /dev/null; then
    echo "debian8"
elif cat /etc/os-release | grep PRETTY_NAME | grep "stretch" > /dev/null; then
    echo "debian9"
elif cat /etc/os-release | grep PRETTY_NAME | grep "buster" > /dev/null; then
    echo "debian10"
elif cat /etc/os-release | grep PRETTY_NAME | grep "CentOS Linux 7" > /dev/null; then
    echo "centos7"
elif cat /etc/os-release | grep PRETTY_NAME | grep "CentOS Linux 8" > /dev/null; then
    echo "centos8"
else
    echo "OS NOT SUPPORTED.\n"
    echo "Contact https://tramvm.in/contact to add support for your os."
    exit 1;
fi
