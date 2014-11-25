# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder '.', '/home/vagrant/waves'
  config.ssh.forward_agent = true
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks']

    chef.add_recipe 'apt'
    chef.add_recipe 'git'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv'
    chef.add_recipe "rbenv::user"
    chef.add_recipe "rbenv::vagrant"

    chef.verbose_logging = true

    chef.json = {
      rbenv: {
        user_installs: [{
          user: 'vagrant',
          rubies: ["2.1.2"],
          global: "2.1.2",
          gems: {
            "2.1.2" => [
              { name: "bundler" }
            ]
          }
        }]
      }
    }
  end

end
