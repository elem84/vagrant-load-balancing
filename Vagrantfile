Vagrant.configure("2") do |config|

  config.vm.define "lb" do |lb|

    lb.vm.box = "ubuntu/xenial64"
    lb.vm.network "private_network", ip: "192.168.10.100"

    lb.vm.provision "shell", inline: <<-SHELL
        sudo apt-get update
        sudo apt-get install -y nginx
        sudo service nginx stop
        sudo cp /vagrant/vagrant_files/nginx-load-balancing /etc/nginx/sites-enabled/default
        sudo service nginx start
        sudo echo "Load Balancing" >> /var/www/html/index.html
      SHELL
  end

  config.vm.define "web1" do |web1|

    web1.vm.box = "ubuntu/xenial64"
    web1.vm.network "private_network", ip: "192.168.10.101"

    web1.vm.provision  :shell do |shell|
      shell.args = "WEB1"
      shell.path = "vagrant_files/install_web.sh"
    end

  end

  config.vm.define "web2" do |web2|

    web2.vm.box = "ubuntu/xenial64"
    web2.vm.network "private_network", ip: "192.168.10.102"

    web2.vm.provision  :shell do |shell|
      shell.args = "WEB2"
      shell.path = "vagrant_files/install_web.sh"
    end

  end

end