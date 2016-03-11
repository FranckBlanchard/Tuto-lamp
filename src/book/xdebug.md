# Xdebug
## Installer xdebug

**Xdebug** est un logiciel permettant de déboguer du code **php**. Il permet de suivre le déroulement d'un script afin de trouver et corriger les erreurs.

Dans un terminal, entrez la commande suivante :

    sudo apt-get install php5-xdebug

## Tester l'installation en ligne de commande

Ceci implique que la version **cli** de **PHP** soit installée.

Depuis le terminal, entrez la commande suivante :

    php -v

Vous devriez obtenir quelque chose similaire à :

    PHP 5.5.9-1ubuntu4.14 (cli) (built: Oct 28 2015 01:34:46)
    Copyright (c) 1997-2014 The PHP Group
    Zend Engine v2.5.0, Copyright (c) 1998-2014 Zend Technologies
        with Zend OPcache v7.0.3, Copyright (c) 1999-2014, by Zend Technologies
        with Xdebug v2.2.3, Copyright (c) 2002-2013, by Derick Rethans

ou :

    php /var/www/html/phpinfo.php

Comme dans l'installation de **PHP** vous devriez trouver toutes les informations concernant le serveur web et les extensions installées, dont **xdebug**.

## Tester l'installation depuis le serveur web

Depuis notre navigateur nous allons taper l'adresse suivante:

    http://localhost/phpinfo.php

Comme précédemment, toute l'information sur le serveur et ses extensions sont affichées.

## Configurer xdebug

La configuration de **xdebug** se fait soit en modifiant le fichier *php.ini*, ou depuis votre script **PHP**.

## Où trouver la documentation officiel

La documentation se trouve à l'adresse suivante :
[https://xdebug.org/](https://xdebug.org/)
