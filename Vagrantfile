Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.name = "Vagrant-OpenVAS"
    v.cpus = 4
    v.memory = "4096"
  end
  config.vm.box = "debian/bullseye64"
  config.vm.hostname = "Vagrant-OpenVAS"
  config.vm.network "public_network", ip: "10.200.4.254", netmask: "255.255.0.0", bridge: "eno1"
  config.vm.provision "file", source: "./docker-compose.yaml", destination: "$HOME/docker-compose.yaml"
  config.vm.provision "shell", path: "./shell.sh"
end
