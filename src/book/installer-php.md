## Installer PHP

Depuis le terninal, entrez la commande suivante :

    sudo apt-get install libapache2-mod-php5

Nous pouvons aussi installer la version en ligne de commande de php, mais ce n'est pas une obligation.
Pour cela, toujours depuis le terminal nous entrons la commande suivante :

    sudo apt-get install php5-cli

## Tester PHP

Pour cela, nous allons créer un fichier **phpinfo.php** dans le répertoire **/var/www/html**.
Dans celui-ci nous allons insérer la ligne suivante :

<?php phpinfo(); ?>

Ensuite à partir de notre navigateur nous allons taper l'adresse suivante:

    http://localhost/phpinfo.php

Si tout c'est bien déroulé nous devrions avoir une page regroupant toutes les informations sur l'installation du serveur et des modules php qui sont installés.
Si la version en ligne de commande de **PHP** est installée, nous pouvons vérifier si tout fonctionne avec la commande suivante :

    php -v

affichera la version de **PHP** qui est installée, ou :

    php /var/www/html/phpinfo.php

affichera les mêmes informations que celles précedement visualisées dans notre navigateur. 
