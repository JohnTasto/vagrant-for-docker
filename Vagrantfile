# A dummy plugin for Barge to set hostname and network correctly at the very first `vagrant up`
module VagrantPlugins
  module GuestLinux
    class Plugin < Vagrant.plugin("2")
      guest_capability("linux", "change_host_name") { Cap::ChangeHostName }
      guest_capability("linux", "configure_networks") { Cap::ConfigureNetworks }
    end
  end
end

Vagrant.configure(2) do |config|
  config.vm.define "barge"

  config.vm.box = "ailispaw/barge"

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/bargee/vagrant"

  # Port for Django, add more lines as necessary
  config.vm.network :forwarded_port, guest: 8000, host: 8000

  config.vm.provision :shell, path: "provision.sh"

end
