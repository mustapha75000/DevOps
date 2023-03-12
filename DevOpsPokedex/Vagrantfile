Vagrant.configure("2") do |config|

    config.vm.define "ansible" do |ansible|
        config.vm.box = "ubuntu/focal64"
        config.vm.network "private_network", ip: "192.168.33.10"
        config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
        end
    
        config.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbook.yml"
        end
    end

    config.vm.define "client" do |client|
        config.vm.box = "ubuntu/focal64"
        config.vm.network "private_network", ip: "192.168.33.11"
        config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.customize ["modifyvm", :id, "--cableconnected1", "on"]       
    end
    client.vm.provision :shell do |shell|
        shell.path = "cmd_install.sh"
        shell.args = ["node", "192.168.99.10"]
    end 

    config.vm.provision :shell, :inline => "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;", run: "always"

        client.vm.provision "docker" do |docker|
            docker.run "mon-site-web",
              image: "mon-site-web",
              name: "mon-site-web-container",
              publish_all_ports: true
          end
    end

end