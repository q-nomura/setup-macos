# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'stopiccot/osx-10.9'
  config.vm.provision :shell, :path => "setup"
  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.linked_clone = true
    vb.name = 'OS X Setup test'
  end
end
