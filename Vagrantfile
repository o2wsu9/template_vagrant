# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos6.5"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  config.vm.network "private_network", ip: "192.168.6.6"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
  config.vm.provision "shell", :path => "ansible/provision.sh"
end
