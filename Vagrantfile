Vagrant.configure(2) do |config|
  config.vm.define "docker" do |docker| 
    docker.vm.box = "ubuntu/trusty64"
    docker.vm.network "private_network", ip: "192.168.0.249"
    docker.vm.provider "virtualbox" do |dockerv|
      dockerv.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      dockerv.memory = 4096
    end
    docker.vm.provision "shell", path: "dockerinstall.sh"
    docker.vm.hostname = "docker.puneet.com"
  end
end
