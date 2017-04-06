# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'tuupola/osx-mountain-lion-10.8-xcode'
  config.vm.provision :shell, privileged: false, :path => 'setup'
  #config.vm.network :private_network, type: 'dhcp'
  config.vm.synced_folder '.', '/vagrant', type: 'rsync'
  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.cpus = 2
    vb.linked_clone = true
    vb.name = 'OS X Setup test'
    vb.customize [
      "modifyvm", :id,
      "--vram", "128",
      "--ioapic", "on",
      "--usb", "on",
      "--usbehci", "on",
      "--accelerate3d", "on",
    ]
    # Windows / macOS の場合、サウンドを有効にする
    if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
      vb.customize [
        "modifyvm", :id,
        "--audio", "dsound",
        "--audiocontroller", "ac97"
      ]
    elsif (/darwin/ =~ RUBY_PLATFORM) != nil
      vb.customize [
        "modifyvm", :id,
        "--audio", "coreaudio",
        "--audiocontroller", "ac97"
      ]
    end
  end
end
