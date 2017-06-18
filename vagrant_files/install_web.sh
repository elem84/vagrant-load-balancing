sudo apt-get update
sudo apt-get install -y nginx
sudo service nginx stop
sudo cp /vagrant/vagrant_files/nginx-web /etc/nginx/sites-enabled/default
sudo service nginx start
sudo echo $1 >> /var/www/html/index.html