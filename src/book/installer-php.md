## Installer PHP

Depuis le terninal, entrez la commande suivante :

    sudo apt-get install libapache2-mod-php5

## Tester PHP

Pour cela, nous allons créer un fichier **phpinfo.php** dans le répertoire **/var/www/html**.
Dans celui-ci nous allons insérer la ligne suivante :

<?php phpinfo(); ?>

Ensuite à partir de notre navigateur nous allons taper l'adresse suivante:

    http://localhost/phpinfo.php

Si tout c'est bien déroulé nous devrions avoir une page regroupant toutes les inforamations sur l'installation du serveur et des modules php qui sont installés.
