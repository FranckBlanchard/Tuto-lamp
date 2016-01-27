# Installer un système LAMP ( Apache, Mysql , PHP , PhpMyAdmin ) sur Linux Mint

## Avant propos

Cette installation se fera en ligne de commande.

Elle a été testé sur une distribution **Linux Mint 17.3 Cinnamon 64 bit**. Cette documentation devrait être valide sous **Ubuntu**, puisque **Linux Mint** en dépend.

## Installer Apache

Dans un terminal, entrez la commande suivante :

    sudo apt-get install apache2

## Tester l'installation

Pour tester l'installation d'apache, rien de plus simple, il suffit d'ouvrir un navigateur web a l'adresse http://localhost/. 

Depuis le terminal, entrez la commande suivante :

    firefox http://localhost/ &

Si tout c'est bien passé vous devriez voir une page avec message avec le message «it's work!»

## Les commandes du seveur Apache

* /etc/init.d/apache2 start   *Démarre le serveur*
* /etc/init.d/apache2 stop    *Arrête le serveur*
* /etc/init.d/apache2 restart *Redémarre le serveur*

## Modifier les droit d'écriture

Pour permettre a un utilisateur d'écrire dans le répertoire /var/www/html, on modifie les droits du propriétaire du répertoire.
**User** représente l'utilisateur qui deviens le nouveau propriétaire.

sudo chgrp -R user /var/www/html 

## Installer PHP

Depuis le terninal, entrez la commande suivante :

    sudo apt-get install libapache2-mod-php5

## Tester PHP

Pour cela, nous créons un fichier **phpinfo.php** dans le répertoire **/var/www/html**.
Dans celui-ci nous insérons la ligne suivante :

<?php phpinfo(); ?>

Ensuite a partir de notre navigateur nous entrons l'adresse suivante:

    http://localhost/phpinfo.php

Si tout c'est bien déroulé nous devrions avoir une page regroupant toutes les inforamations sur l'installation du serveur et des modules php qui sont installés.

## Installer MySQL

Depuis le terminal, entrez la commande suivante:

    sudo apt-get install mysql-server

Pendant l'installation, une boite de dialogue nous invite a entrer un mot de passe.
Entrez un mot de passe, puis une autre boite vous demandera la comfirmation de celui-ci.
Par défaut nous choisissons le mot de passe **mysql**.

Nous devons maintenant installer les modules **PHP** et **MySQL** du serveur apache.

    sudo apt-get install libapach2-mod-auth-mysql php5-mysql

## Installer PhpMyAdmin

**PhpMyAdmin** est un script **PHP** accessible via le serveur **Apache** qui nous premettra d'accéder au serveur de la base de données **MySQL**.

Depuis un terninal nous entrons :

    sudo apt-get install phpmyadmin

Pendant l'installation une boite de dialogue nous invites a selectionner pour quel serveur le script doit être configuré. Nous selectionnons **Apache 2**, puis validons.

Par la suite une deuxième boite de dialogue pour la configuration de **PhpMyAdmin** nous demande si nous voulons configurer la base de données de **PhpMyAdmin** avec dbconfig-common. 
Nous selectionnons «oui» et validons.
Deux autres boites de dialogues nous inviterons a définir des mots de passe, et a les comfirmer. Par défaut nous choisissons le mot de passe **mysql**.

## Tester l'installation de MySQL

Depuis le terminal, entrez la commande suivante:

    firefox http://localhost/phpmyadmin &

Si tout s'est bien déroulé vous devriez a voir une interface graphique, avec un champ login et mot de passe pour ce connecter au programme.
Le login utilisateur est **phpmyadmin**, et le mot de passe est **mysql** (ou celui définit dans l'étape d'installation). Une fois les champs renseignés, nous avons accès a l'interface complète de **PhpMyAdmin**.
