# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'allabolag'
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = 'packer_virtualbox-iso_virtualbox'
  config.vm.box_url = 'https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.3.0-amd64_virtualbox.box'
  config.vm.provision 'shell', path: 'script/vagrant.sh'

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '1024']
  end

  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 3307, host: 4407
end
