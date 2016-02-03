# Installer un système LAMP ( Apache, Mysql , PHP , PhpMyAdmin ) sur Linux Mint

Dernière mise à jour le @@date@@.

## Avant propos

Cette installation se fera en ligne de commande.

Elle a été testé sur une distribution **Linux Mint 17.3 Cinnamon 64 bit**. Cette documentation devrait être valide sous **Ubuntu**, puisque **Linux Mint** en dépend.

## Pourquoi un autre tutoriel sur l'installation d'un système LAMP ?

Effectivement ce n'est pas le seul tutoriel sur le sujet. Mais beaucoup ne sont pas à jour, et souvent incomplet, comme me l'ont fait remarquer des amis développeurs. En maintenant ce projet sur github, ces lacunes seront comblées.

## Remerciement

Je tiens à remercier [Claude Lalonde](http://claudelalonde.ca), pour son temps passé à relire et corriger les diverses erreurs de ce tutoriel, ainsi que ma famille proche pour sa patience, et ses encouragements, sans lesquels tout ce travail ne serait pas possible.

## Contribuer

Vous pouvez utiliser l'onglet issues pour contribuer facilemnent en soumettant vos commentaires, propositions, corrections,suggestions etc.

 » [https://github.com/FranckBlanchard/Tuto-lamp/issues](https://github.com/FranckBlanchard/Tuto-lamp/issues)

Tous vos retours d'expérience sont très appréciés.
## Installer Apache

Dans un terminal, entrez la commande suivante :

    sudo apt-get install apache2

## Tester l'installation

Pour tester l'installation d'apache, rien de plus simple, il suffit d'ouvrir un navigateur web a l'adresse http://localhost/.

Depuis le terminal, entrez la commande suivante :

    firefox http://localhost/ &

Si tout c'est bien passé vous devriez voir une page avec le message «it's work!»

## Les commandes du serveur Apache

* /etc/init.d/apache2 start   *Démarre le serveur*
* /etc/init.d/apache2 stop    *Arrête le serveur*
* /etc/init.d/apache2 restart *Redémarre le serveur*

## Modifier les droits d'écriture

Pour permettre à un utilisateur d'écrire dans le répertoire **/var/www/html**, nous modifions le propriétaire du répertoire.
**User** représente l'utilisateur qui deviens le nouveau propriétaire.

sudo chgrp -R user /var/www/html
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
Nous sélectionnez «oui» et validez.

Deux autres boites de dialogues nous invitent à définir des mots de passe, et à les comfirmer. Par défaut nous choisissons le mot de passe **mysql**.

## Tester l'installation de MySQL

Depuis le terminal, entrez la commande suivante:

    firefox http://localhost/phpmyadmin &

Si tout s'est bien déroulé vous devriez  voir une interface graphique, avec un champ login et mot de passe pour ce connecter au programme.

Le login utilisateur est **phpmyadmin**, et le mot de passe est **mysql** (ou celui définit dans l'étape d'installation). Une fois les champs renseignés, nous avons accès à l'interface complète de **PhpMyAdmin**.
## Copyright et license

Tuto-LAMP Copyright (c) 2015-2016 Franck Blanchard

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

This software is provided by the copyright holders and contributors "as is" and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose are disclaimed. In no event shall the copyright owner or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.
