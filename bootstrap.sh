apt-get install -y apache2 apache2-doc apache2-utils
apt-get update
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1234'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1234'
apt-get install -y mysql-server
apt-get update
apt-get install -y python-software-properties
apt-get update
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y php5-cli
apt-get update
apt-get install -y php7.0
apt-get update
apt-get upgrade -y
if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant /var/www
fi