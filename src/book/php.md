# PHP

**PHP** est un langage de programmation interprété, libre et multiplateforme. C'est aussi un langage orienté objet. Il est principalement utilisé dans le développement web, mais pas seulement.

## Installer PHP

Pour notre serveur **LAMP**, Nous allons installer le module **Apache** de **PHP**, ainsi que l'interpréteur en ligne de commande (cli) de **PHP**. Ce dernier est utilisé par de nombreux framework **PHP**.

### Installer le module d'Apache

Depuis le terminal, entrez la commande suivante :

    sudo apt-get install libapache2-mod-php5

### Installer l'interpréteur de ligne de commande

Depuis le terminal entrez la commande suivante :

    sudo apt-get install php5-cli

## Tester l'installation de PHP

Pour cela, nous allons créer un fichier **phpinfo.php** dans le répertoire **/var/www/html**.

Dans celui-ci nous allons insérer la ligne suivante :

<?php phpinfo(); ?>

### Tester le module d'Apache

Depuis notre terminal, demarrons notre navigateur avec l'adresse http://localhost/phpinfo.php.

    firefox http://localhost/phpinfo.php &

Si tout c'est bien déroulé nous devrions avoir une page regroupant toutes les informations sur l'installation du serveur et des modules **PHP** qui sont installés.

### Tester l'interpréteur de ligne de commande

Nous pouvons vérifier si l'interpréteur fonctionne avec la commande suivante :

    php -v

affichera la version de **PHP** qui est installée, ou :

    php /var/www/html/phpinfo.php

affichera les mêmes informations que celles précédemment visualisées dans notre navigateur, pour vérifier le module d'**Apache**.

## Configurer PHP pour un environnement de développement

La configuration du langage **PHP** se fait à travers un fichier de configuration : *php.ini*.
Celui-ci se trouve dans le répertoire */etc/php5/apache2/php.ini*.

Nous allons changer 2 valeurs de configuration dans notre fichier, *error_reporting* et *display_errors*. *error_reporting* définit quel est le type d'erreur que nous voulons que **PHP** nous signale, nous réglerons donc cette valleur à *E_ALL*. Puis nous réglerons *display_errors* à *on* pour que **PHP** nous affiche les erreurs.

Pour résumer nous éditons le fichier de configuration de php avec l'éditeur de notre choix:

    sudo vim /etc/php5/apache2/php.ini

Nous recherchons la ligne qui commence par *display_errors*. Nous modifions celle-ci comme ceci:

    display_errors = On

Puis la ligne qui commence par *error_reporting*, et la modifions de cette manière :

    error_reporting = E_ALL

Nous enregistrons nos modifications et quittons notre éditeur. La configuration de base de **PHP** est maintenant terminé. À noter qu'il est possible de configurer certains paramètres de **PHP** de différentes manières, voir la documentation à l'adresse suivante : [http://php.net/manual/fr/configuration.file.php](http://php.net/manual/fr/configuration.file.php).


**Important :** pour valider les changements dans le fichier de configuration de **PHP** sur le serveur web **Apache**, il est nécessaire de redémarrer celui-ci, pour cela depuis votre terminal nous entrons la commande suivante :

    sudo /etc/init.d/apache2 restart

Il est a noter que pour la version *cli* de **PHP**, le fichier de configuration *php.ini* est lu à chaque exécution.
## Ou trouver la documentation officiel de PHP

Le manuel en français du langage **PHP** peut être trouvé à cette adresse: [http://php.net/manual/fr/](http://php.net/manual/fr/).
