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
