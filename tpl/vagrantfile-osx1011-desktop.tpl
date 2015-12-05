# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.provider :virtualbox do |v, override|
      v.gui = true
      v.customize ["modifyvm", :id, "--audiocontroller", "hda"]
      v.customize ["modifyvm", :id, "--boot1", "dvd"]
      v.customize ["modifyvm", :id, "--boot2", "disk"]
      v.customize ["modifyvm", :id, "--chipset", "ich9"]
      v.customize ["modifyvm", :id, "--firmware", "efi"]
      v.customize ["modifyvm", :id, "--hpet", "on"]
      v.customize ["modifyvm", :id, "--keyboard", "usb"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.customize ["modifyvm", :id, "--mouse", "usbtablet"]
      v.customize ["modifyvm", :id, "--usbehci", "on"]
      v.customize ["modifyvm", :id, "--vram", "16"]
      v.customize ["modifyvm", :id, "--name", "IDE Controller", "--remove"]
    end
end
