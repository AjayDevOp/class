# -*- mode:ruby -*-
#vi: set ft=ruby :
Vagrant.configure(2) do |config|
config.vm.define "web01" do |web01|
   web01.vm.box = "ubuntu/trusty64"
   web01.vm.hostname = "web01"
   web01.vm.network " private_network" , ip: "10.1.1.11" , netmask:"24"
   web01.vm.network "forward_port" , guest:80, host:8080
end
config.vm.define "web01" do |db01|
   db01.vm.box = "ubuntu/trusty64"
   db01.vm.hostname = "db01
   db01.vm.network " private_network" , ip: "10.1.1.21" ,netmask : "24"
   db01.vm.network " private_network" , ip: "10.1.1.11"
end
end
