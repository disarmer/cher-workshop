# -*- mode: ruby -*-
# vi: set ft=ruby :

# read vm and chef configurations from JSON files
nodes_config = (JSON.parse(File.read("vagrant_nodes.json")))['nodes']

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "deshene/precise64-2.0.0-11.10.4"

  nodes_config.each do |node|
    node_name   = node[0] # name of node
    node_values = node[1] # content of node

    config.vm.define node_name do |config|
      config.vm.hostname = node_values['node']
      config.vm.network :private_network, ip: node_values['ip']

      config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", node_values['memory']]
        vb.customize ["modifyvm", :id, "--name", node_values['node']]
      end

      config.vm.provision :chef_solo do |chef|
        chef.log_level = :debug
        chef.cookbooks_path = ["cookbooks"]
        chef.roles_path = "roles"
        chef.data_bags_path = "data_bags"
        node_values['recipes'].each do |recipe|
          chef.add_recipe recipe
        end
        node_values['roles'].each do |role|
          chef.add_role role
        end
      end

    end
  end
end
