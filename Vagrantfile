# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box     = "CentOS-6.4-x86_64-minimal"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"

  config.vm.network :private_network, ip: "192.168.33.5"
  config.vm.synced_folder "./", "/vagrant", mount_options: ['dmode=775', 'fmode=664']

  config.vm.provider :virtualbox do |vb|
    vb.name = "PlayAnsible Server"
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "256"]
  end
end
