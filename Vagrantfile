# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/8"
  config.vm.hostname = "buildServer"
  config.vm.network :private_network, ip: "192.168.100.200"
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
  config.vm.provision "shell", inline: $script
  config.disksize.size = '50GB'
end

$script = <<SCRIPT
  yum -y install epel-release
  yum -y install git
  yum -y install ansible
SCRIPT

