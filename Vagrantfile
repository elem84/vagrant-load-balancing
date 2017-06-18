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

end