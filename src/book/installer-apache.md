## Installer Apache

Dans un terminal, entrez la commande suivante :

    sudo apt-get install apache2

## Tester l'installation

Pour tester l'installation d'apache, rien de plus simple, il suffit d'ouvrir un navigateur web à l'adresse http://localhost/.

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
