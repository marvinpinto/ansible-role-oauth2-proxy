Vagrant.configure(2) do |config|

  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.define "ubuntu" do |ubuntu|

    ubuntu.vm.box = "ubuntu/trusty64"

    ubuntu.vm.provision "shell", path: "provision-ubuntu-vagrant.sh"

    ubuntu.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "tests/test.yml"
      ansible.install = false
    end

  end

  config.vm.define "debian" do |debian|

    debian.vm.box = "debian/jessie64"

    debian.vm.provision "shell", path: "provision-debian-vagrant.sh"

    debian.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "tests/test.yml"
      ansible.install = false
    end

  end

end
