# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
  config.vm.define "windows10" do |node|
      node.vm.box = "chusiang/win10-x64-ansible"
      node.vm.communicator = "winrm"
      node.winrm.username = "IEUser"
      node.winrm.password = "Passw0rd!"
      node.vm.network "forwarded_port", guest: 3389, host: 3389

      node.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.memory = "2048"
        vb.cpus = "2"
      end
  end

  #config.vm.define "2012R2" do |node|
  #    node.vm.box = "mwrock/Windows2012R2"
  #    node.vm.communicator = "winrm"
  #    node.vm.network "forwarded_port", guest: 3389, host: 13389

  #    node.vm.provider "virtualbox" do |vb|
  #      vb.gui = true
  #      vb.memory = "2048"
  #      vb.cpus = "2"
  #    end
  #end
end

# vi: set ft=ruby :
