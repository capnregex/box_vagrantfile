
Vagrant.configure("2") do |config|
  config.vm.provision "chef_client" do |chef|
    chef.chef_server_url = "http://mychefserver.com"
    chef.validation_key_path = "validation.pem"
    chef.node_name = 

    # let the server know to clean up the record when you do a vagrant destroy
    chef.delete_node = true
    chef.delete_client = true 

    # Add a recipe
    chef.add_recipe "apache"

    # Or maybe a role
    chef.add_role "web"
    chef.environment = "development"
  end
end

