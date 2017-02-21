 #!/bin/bash
clear
sudo apt-get update

#Install Apache2
sudo apt-get install -y apache2
sudo a2enmod rewrite

#Setup Firewall for authorize our connection
sudo ufw allow in "Apache Full"

#Install MySQL server
sudo apt-get install -y mysql-server
sudo mysql_secure_installation

#Install PHP
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo echo '<?php phpinfo(); ?>' | sudo tee /var/www/html/info.php

#Install Sublime Text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

clear
