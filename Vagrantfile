# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.ssh.insert_key = false
  config.vm.define "vagrant1" do |vagrant1|
      config.vm.box = "centos/8"
      #config.vm.hostname = "buildServer"
      config.vm.network :private_network, ip: "192.168.100.11"
      config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
      config.vm.provider "virtualbox" do |v|
          v.memory = 2048
          v.cpus = 2
      end
      config.disksize.size = "20GB"
      config.vm.provision "shell", inline: $script
  end
  config.vm.define "vagrant2" do |vagrant2|
      config.vm.box = "centos/8"
      #config.vm.hostname = "buildServer"
      config.vm.network :private_network, ip: "192.168.100.12"
      config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
      config.vm.provider "virtualbox" do |v|
          v.memory = 1024
          v.cpus = 1
      end
      config.disksize.size = "20GB"
      config.vm.provision "shell", inline: $script
  end
  config.vm.define "vagrant3" do |vagrant3|
      config.vm.box = "centos/8"
      #config.vm.hostname = "buildServer"
      config.vm.network :private_network, ip: "192.168.100.13"
      config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
      config.vm.provider "virtualbox" do |v|
          v.memory = 1024
          v.cpus = 1
      end
      config.disksize.size = "20GB"
      config.vm.provision "shell", inline: $script
  end
end

$script = <<SCRIPT
  yum -y install epel-release
  yum -y install git
  #resize disk tool
  yum -y install cloud-utils-growpart
  yum -y install xfsprogs
SCRIPT

