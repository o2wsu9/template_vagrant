#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    rpm -Uvh http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    rpm -Uvh http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/ius-release-1.0-11.ius.centos6.noarch.rpm
    yum -y install ansible libselinux-python
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/site.yml

