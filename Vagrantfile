# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu-trusty-64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end

  #configure ssh forward agent
  `key_file=~/.ssh/id_rsa && [[ -z $(ssh-add -L | grep $key_file) ]] && ssh-add $key_file`
  config.ssh.forward_agent = true

  config.vm.define :dev_machine, primary: true do |node|
    node.vm.provision :shell, :path => "bootstrap.sh"
    node.vm.provision :copy_my_conf do |copy_conf|
      copy_conf.git
      copy_conf.vim
    end

    node.vm.provider "virtualbox" do |vb|
      vb.name = "achecker_dev"
    end
  end
end
