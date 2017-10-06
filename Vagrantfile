# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
config.vm.box_check_update = false

	config.vm.define "server" do |server|
		server.vm.box = "ubuntu/trusty64"
		server.vm.network "public_network"
		server.vm.hostname = "kamyshevchefsolo"
		#server.vm.network "forwarded_port", guest: 80, host: 8080
		server.vm.provider "virtualbox" do |vb|
		vb.memory = "2048"
		vb.cpus = "2"
		vb.name = "chef-solo"
		end
		server.vm.provision "shell", path: "chefserver.sh", privileged: true

	end
	
	
	
	
	
end
