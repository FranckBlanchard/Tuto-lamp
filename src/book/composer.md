## Composer

**Composer** est un logiciel de contrôle de dépendance pour les librairies **PHP** extérieures à votre projet.
Nous pouvons aussi l'utiliser que pour gérer le chargement automatique des librairies que nous utilisons a l'intérieur d'un projet **PHP**.
**Composer** est une archive **PHAR** ([http://php.net/manual/fr/book.phar.php](http://php.net/manual/fr/book.phar.php "Documentation PHP")).

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
