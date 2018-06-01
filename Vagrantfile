# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.box_version = "201803.24.0"
  # config.vm.box_url = "https://app.vagrantup.com/ubuntu/boxes/xenial64"
  # config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  config.vm.provider "virtualbox" do |v|
    v.memory = 256
    v.name = "carapana"
  end

  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.network "public_network", bridge: "en1: Wi-Fi (AirPort)"

  # ActiveMQ Openwire ports
  config.vm.network "forwarded_port", guest: 61616, host: 61616
  config.vm.network "forwarded_port", guest: 61626, host: 61626
  config.vm.network "forwarded_port", guest: 61636, host: 61636

  # ActiveMQ HTTP ports
  config.vm.network "forwarded_port", guest: 8161, host: 8161
  config.vm.network "forwarded_port", guest: 9161, host: 9161
  config.vm.network "forwarded_port", guest: 10161, host: 10161

  # ActiveMQ AMQP ports
  config.vm.network "forwarded_port", guest: 5672, host: 5672
  config.vm.network "forwarded_port", guest: 5682, host: 5682
  config.vm.network "forwarded_port", guest: 5692, host: 5692

  # ActiveMQ MQTT ports

end
