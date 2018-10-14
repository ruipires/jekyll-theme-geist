# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.network "forwarded_port", guest: 4000, host: 4001 # http port
  config.vm.hostname = "jasper2"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "jasper2 - jekyll theme"
    vb.memory = "512"
    vb.cpus = 1
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "*** apt-get update"
    apt-get update

    echo "*** Installing build-essential"
    apt-get install -y build-essential

    echo "*** Installing ruby"
    apt-get install -y ruby

    echo "*** Installing ruby-dev"
    apt-get install -y ruby-dev

    echo "*** Installing jekyll"
    gem install jekyll

    echo "*** Installing bundler"
    gem install bundler

    echo "*** Installing fish (shell)"
    apt-get install -y fish

  SHELL
end