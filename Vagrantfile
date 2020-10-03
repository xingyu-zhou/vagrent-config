# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/8"
  config.vm.hostname = "buildServer"
  config.vm.network :private_network, ip: "192.168.100.100"
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
  config.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
  end
  config.disksize.size = "20GB"
  config.vm.provision "shell", inline: $script
end

$script = <<SCRIPT
  yum -y install epel-release
  yum -y install git
  yum -y install ansible
  #resize disk tool
  yum -y install cloud-utils-growpart
  yum -y install xfsprogs
SCRIPT

