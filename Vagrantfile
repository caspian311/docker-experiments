VAGRANTFILE_API_VERSION = "2"
NAMED_NETWORK = 'en0: Wi-Fi (AirPort)'

machine_name = 'docker-stuff'
ip = '192.168.33.14'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |configure|
  configure.vm.network :public_network, bridge: NAMED_NETWORK
  configure.vm.define machine_name do |individual_config|
    individual_config.vm.box = "ubuntu/trusty64"
    individual_config.vm.box_url = "http://files.vagrantup.com/precise32.box"
    individual_config.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.cpus = 2
      vb.memory = 2048
      vb.name = machine_name
    end
    individual_config.vm.network :private_network, ip: ip
    individual_config.vm.network :forwarded_port, guest: 22, host: 2203
  end
end
