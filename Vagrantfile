# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'jhcook/macos-sierra'
  config.vm.synced_folder '.', '/vagrant', type: 'rsync', owner: 'vagrant', group: 'staff'
  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.cpus = 2
    vb.linked_clone = true
    vb.name = 'OS X Setup test'
    vb.memory = '3072'
    vb.customize [
      'modifyvm', :id,
      '--vram', '128',
      '--ioapic', 'on',
      '--usb', 'on',
      '--usbehci', 'on',
      '--accelerate3d', 'on',
    ]
    if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
      vb.customize [
        'modifyvm', :id,
        '--audio', 'dsound',
        '--audiocontroller', 'ac97'
      ]
    elsif (/darwin/ =~ RUBY_PLATFORM) != nil
      vb.customize [
        'modifyvm', :id,
        '--audio', 'coreaudio',
        '--audiocontroller', 'ac97'
      ]
    end
  end
  config.vm.provision :shell, privileged: false, :path => 'install-ansible.sh'
  config.vm.provision 'ansible_local' do |ansible|
    ansible.playbook = 'playbook.yml'
    ansible.verbose = true
    ansible.install = false
  end
end
