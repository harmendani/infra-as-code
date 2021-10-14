# -*- mode: ruby -*-
# vi: set ft=ruby :

# Database Configuration
mysql_root_password  = "root"   # We'll assume user "root"
mysql_version = "latest"    # Latest version or specific version 
mysql_enable_remote = "true"  # remote access enabled when true


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.ssh.forward_agent = true
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
	vb.memory = 784
	vb.cpus = 2
  end
  # PATH for Windows 10
  config.vm.synced_folder "data\\", "/home/data/"
  config.vm.provision "shell", path: "data\\script.sh",args: [mysql_root_password, mysql_version, mysql_enable_remote]     
end





