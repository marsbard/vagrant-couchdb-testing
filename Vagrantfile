# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|


  config.vm.box = "trusty64"

  config.vm.define "couchdb" do |couchdb|

    #couchdb.vm.provider :virtualbox do |vb|
    #  vb.customize ["modifyvm", :id, "--memory", "3072"]
    #  vb.customize ["modifyvm", :id, "--cpus", "2"]   
    #end  


    couchdb.vm.provision :puppet do |puppet|
      puppet.module_path = ["modules"]
      puppet.options = ["--verbose", "--debug"]
    end

    couchdb.vm.network "forwarded_port", guest: 5984, host: 5984

  end


end
