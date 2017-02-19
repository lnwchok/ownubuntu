 #!/bin/bash
clear
apt-get update

#Install Apache2
apt-get install -y apache2
a2enmod rewrite

#Setup Firewall for authorize our connection
ufw allow in "Apache Full"

#Install MySQL server
apt-get install -y mysql-server
mysql_secure_installation

#Install PHP
apt-get install php libapache2-mod-php php-mcrypt php-mysql
echo '<?php phpinfo(); ?>' | sudo tee /var/www/html/info.php

#Install Sublime Text 3
add-apt-repository ppa:webupd8team/sublime-text-3
apt-get update
apt-get install -y sublime-text-installer

clear
