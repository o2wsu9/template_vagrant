#!/usr/bin/env bash

if ! [ `which ansible` ]; then
  yum localinstall http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm  
  yum -y install ansible libselinux-python
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/site.yml
