# -*- mode: ruby -*-
# vi: set ft=ruby :

require_relative 'lib/proxy.rb'
require_relative 'lib/chef_paths.rb'
require_relative 'lib/virtualbox.rb'

Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-16.04"

  config.vm.provision "chef_zero", run: :always do |chef|
    set_paths(chef)
    set_chef_proxy(chef)
    chef.product = 'chefdk'

    chef.add_recipe "box"
  end
end
