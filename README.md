# Installer un système LAMP ( Apache, Mysql , PHP , PhpMyAdmin ) sur Linux Mint

Dernière mise à jour le 2016-03-03 17:12:52.

## Avant propos

Cette installation se fera en ligne de commande.

Elle a été testé sur une distribution **Linux Mint 17.3 Cinnamon 64 bit**. Cette documentation devrait être valide sous **Ubuntu**, puisque **Linux Mint** en dépend.

## Pourquoi un autre tutoriel sur l'installation d'un système LAMP ?

Effectivement ce n'est pas le seul tutoriel sur le sujet. Mais beaucoup ne sont pas à jour, et souvent incomplet, comme me l'ont fait remarquer des amis développeurs. En maintenant ce projet sur github, ces lacunes seront comblées.

## Remerciement

Je tiens à remercier Claude Lalonde, pour son temps passé à relire et corriger les diverses erreurs de ce tutoriel, ainsi que ma famille proche pour sa patience, et ses encouragements, sans lesquels tout ce travail ne serait pas possible.

## Contribuer

Vous pouvez utiliser l'onglet issues pour contribuer facilement en soumettant vos commentaires, propositions, corrections, suggestions etc.

 » [https://github.com/FranckBlanchard/Tuto-lamp/issues](https://github.com/FranckBlanchard/Tuto-lamp/issues)

Tous vos retours d'expérience sont très appréciés.
## Apache

**Apache HTTP Server** (*Apache*) est un logiciel libre, fondé et maintenu par la [fondation Apache](http://www.apache.org/"Fondation Apache"). Celui-ci a pour vocation de servir des pages Web aux clients (navigateurs sur Internet). Sa conception est modulaire, ce qui en fait un des logiciels serveurs les plus utilisés aujourd'hui.
Par la suite, nous emploierons le mot **Apache** pour désigner le serveur du même nom.

### Installer Apache

L'installation n'est pas compliquée.

Dans un terminal, entrez la commande suivante :

    sudo apt-get install apache2

### Tester l'installation d'Apache

À l'installation du serveur, un fichier d'information sur celui-ci est placé à la racine du serveur.
Nous entendons par «racine du serveur», le répertoire où nous devons placer les fichiers qui composeront notre site web. Si l'installation s'est bien déroulé, c'est ce fichier d'information qui devrait être affiché. Pour tester l'installation d'**Apache**, rien de plus simple, il suffit d'ouvrir un navigateur web à l'adresse [http://localhost/](http://localhost/"localhost"), et nous devrions voir notre fichier informatif.

Depuis le terminal, entrez la commande suivante :

    firefox http://localhost/ &

Si tout c'est bien passé vous devriez voir une page avec le message «it's work!» et d'autres informations sur le serveur.

### Répertoire de travail

Le répertoire de travail du serveur est aussi appelé répertoire racine ou «document root» en anglais. Vous retrouverez cette expression dans les fichiers de configuration, il est donc important de la connaître.
Ce répertoire est **/var/wwww/html**. C'est dans ce répertoire que nous mettrons les fichiers que nous voulons rendre accessible via le navigateur.

### Modifier les droits d'écriture du répertoire racine

Pour permettre à un utilisateur d'écrire dans le répertoire **/var/www/html**, nous modifions le propriétaire du répertoire.

Attention, cette façon de faire peut entraîner des problèmes de sécurités. Nous parlons ici d'un serveur de développement et non de production.

**User** représente l'utilisateur qui devient le nouveau propriétaire.

    sudo chgrp -R user /var/www/html

### Les commandes du serveur Apache

Lors d'un changement dans un fichier de configuration, le serveur doit être redémarrer pour qu'il soit pris en charge. Voici donc les commandes utiles :

* /etc/init.d/apache2 start   *Démarre le serveur*
* /etc/init.d/apache2 stop    *Arrête le serveur*
* /etc/init.d/apache2 restart *Redémarre le serveur*

### Documentation d'Apache

La documentation en français d'**Apache** se trouve à cette adresse [https://httpd.apache.org/docs/2.4/fr/](https://httpd.apache.org/docs/2.4/fr/"Documentation d'Apache en Français"). Celle-ci est très bien documentée.

Il est à noté que chacune des distributions **Linux** possède ses propres politiques de mise en place des fichiers de configurations. **Apache** est très modulable, il en est de même pour ses fichiers de configuration. Il est donc important de vérifier sur votre distribution où sont ces fichiers.
## Installer PHP

Depuis le terminal, entrez la commande suivante :

    sudo apt-get install libapache2-mod-php5

Nous pouvons aussi installer la version en ligne de commande de **PHP**, mais ce n'est pas une obligation.
Pour cela, toujours depuis le terminal nous entrons la commande suivante :

    sudo apt-get install php5-cli

## Tester PHP

Pour cela, nous allons créer un fichier **phpinfo.php** dans le répertoire **/var/www/html**.
Dans celui-ci nous allons insérer la ligne suivante :

<?php phpinfo(); ?>

Ensuite à partir de notre navigateur nous allons taper l'adresse suivante:

    http://localhost/phpinfo.php

Si tout c'est bien déroulé nous devrions avoir une page regroupant toutes les informations sur l'installation du serveur et des modules **PHP** qui sont installés.
Si la version en ligne de commande de **PHP** est installée, nous pouvons vérifier si tout fonctionne avec la commande suivante :

    php -v

affichera la version de **PHP** qui est installée, ou :

    php /var/www/html/phpinfo.php
 
affichera les mêmes informations que celles précédemment visualisées dans notre navigateur.

## Configurer PHP pour un environnement de développement

La configuration du langage **PHP** se fait à travers un fichier de configuration : *php.ini*.
Celui-ci se trouve dans le répertoire */etc/php5/apache2/php.ini*.

Nous allons changer 2 valeurs de configuration dans notre fichier, *error_reporting* et *display_errors*. *error_reporting* définit quel est le type d'erreur que nous voulons que **PHP** nous signale, nous réglerons donc cette valleur à *E_ALL*. Puis nous réglerons *display_errors* à on pour que **PHP** nous affiche les erreurs.

Pour résumer nous éditons le fichier de configuration de php avec l'éditeur de notre choix:

    sudo vim /etc/php5/apache2/php.ini

Nous recherchons la ligne qui commence par *display_errors*. Nous modifions celle-ci comme ceci:

    display_errors = On

Puis la ligne qui commence par *error_reporting*, et la modifions de cette manière :

    error_reporting = E_ALL

Nous enregistrons nos modifications et quittons notre éditeur. La configuration de base de **PHP** est maintenant terminé. À noter qu'il est possible de configurer certains paramètres de **PHP** de différentes manières, voir la documentation à l'adresse suivante : [http://php.net/manual/fr/configuration.file.php](http://php.net/manual/fr/configuration.file.php).


**Important :** pour valider les changements dans le fichier de configuration de **PHP** sur le serveur web **Apache**, il est nécessaire de redémarrer celui-ci, pour cela depuis votre terminal nous entrons la commande suivante :

    sudo /etc/init.d/apache2 restart

## Ou trouver la documentation officiel de PHP

Le manuel en français du langage **PHP** peut être trouvé à cette adresse: [http://php.net/manual/fr/](http://php.net/manual/fr/).
## Installer MySQL

Depuis le terminal, entrez la commande suivante:

    sudo apt-get install mysql-server

Pendant l'installation, une boite de dialogue nous invite à entrer un mot de passe.
Entrez un mot de passe, puis une autre boite vous demandera la comfirmation de celui-ci.
Par défaut nous choisissons le mot de passe **mysql**.

Nous devons maintenant installer les modules **PHP** et **MySQL** du serveur apache.

    sudo apt-get install libapach2-mod-auth-mysql php5-mysql

## Installer PhpMyAdmin

**PhpMyAdmin** est un script **PHP** accessible via le serveur **Apache** qui nous premettra d'accéder au serveur de la base de données **MySQL**.

Depuis un terninal taper:

    sudo apt-get install phpmyadmin

Pendant l'installation une boite de dialogue nous invites à selectionner pour quel serveur le script doit être configuré. Sélectionnez **Apache 2**, puis validez.

Par la suite une deuxième boite de dialogue pour la configuration de **PhpMyAdmin** nous demande si nous voulons configurer la base de données de **PhpMyAdmin** avec dbconfig-common.
Vous sélectionnez «oui» et validez.

Deux autres boites de dialogues nous invitent à définir des mots de passe, et à les comfirmer. Par défaut nous choisissons le mot de passe **mysql**.

## Tester l'installation de MySQL

Depuis le terminal, entrez la commande suivante:

    firefox http://localhost/phpmyadmin &

Si tout c'est bien déroulé vous devriez  voir une interface graphique, avec un champ login et mot de passe pour ce connecter au programme.

Le login utilisateur est **phpmyadmin**, et le mot de passe est **mysql** (ou celui définit dans l'étape d'installation). Une fois les champs renseignés, nous avons accès à l'interface complète de **PhpMyAdmin**.
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
## Composer

**Composer** est un logiciel de contrôle de dépendance pour les librairies **PHP** extérieures à votre projet.
Nous pouvons aussi l'utiliser que pour gérer le chargement automatique des librairies que nous utilisons a l'intérieur d'un projet **PHP**.
**Composer** est une archive **PHAR** ([http://php.net/manual/fr/book.phar.php](http://php.net/manual/fr/book.phar.php"Documentation PHP")).

### Installer composer

**Composer** peut être installé de plusieurs manières, soit de façon *local*, ou *global*.
Installation **Local** signifie que nous devrons installer **composer** pour chaque projet **PHP**, tandis qu'avec une installation **global** , celle-ci ne se fera qu'une seule fois. C'est cette dernière méthode que nous allons utiliser.

L'installation va se dérouler en 3 étapes.

1. Téléchargement de l'archive.
2. Rendre l'archive exécutable.
3. Déplacer et renommer l'archive dans un répertoire accessible par le «**path**» du système.

#### Télécharger composer
Pour télécharger composer nous devons récupérer les directives de téléchargement qui se trouvent à cette adresse [https://getcomposer.org/download/](https://getcomposer.org/download/), et les exécuter dans un terminal.

Voici un exemple de code:

    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php

    php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === 'fd26ce67e3b237fffd5e5544b45b0d92c41a4afe3e3f778e942e43ce6be197b9cdc7c251dcde6e2a52297ea269370680') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); }"

    php composer-setup.php

    php -r "unlink('composer-setup.php');"

Il est très important de respecter cette procédure, car cela va permettre de récupérer la dernière version de **composer** et de vérifier la compatibilité avec le système en place.

#### Rendre l'archive exécutable

Si l'étape précédente s'est bien déroulée, vous devriez avoir un fichier nommé *composer.phar* dans votre répertoire de travail.

Dans un terminal nous entrons :

    sudo chmod +x composer.phar

#### Déplacer et renommer l'archive

Dans un terminal nous entrons :

    sudo mv composer.phar /usr/local/bin/composer

À partir de maintenant, lorsque que nous aurons besoin de **composer**, le programme sera accessible depuis n'importe quel répertoire en simplement en tapant la commande «composer ...» dans un terminal.

### Tester l'installation de composer

Rien de plus simple, dans un terminal nous entrons la commande suivante:

    composer

Une page d'aide à l'utilisation du programme devrait être affichée, si tout s'est bien passé.

### Documentation de composer
Le site du projet **composer** se situe à l'adresse [https://getcomposer.org](https://getcomposer.org).
La documentation de **composer** se trouve à celle-ci [https://getcomposer.org/doc/](https://getcomposer.org/doc/).
## Copyright et license

Tuto-LAMP Copyright (c) 2015-2016 Franck Blanchard

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

This software is provided by the copyright holders and contributors "as is" and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose are disclaimed. In no event shall the copyright owner or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.
