# MySQL

## Installer MySQL

Depuis le terminal, entrez la commande suivante:

    sudo apt-get install mysql-server

Pendant l'installation, une boite de dialogue nous invite à entrer un mot de passe.
Entrez un mot de passe, puis une autre boite vous demandera la comfirmation de celui-ci.
Par défaut nous choisissons le mot de passe **mysql**.

Nous devons maintenant installer les modules **PHP** et **MySQL** du serveur apache.

    sudo apt-get install libapach2-mod-auth-mysql php5-mysql

## Tester l'installation de MySQL

Nous testons l'installation en ligne de commande. Dans un terminal nous entrons la commande suivante:

    mysql -h localhost --user=root -pmysql

Remarquez l'absence d'espace en -p et le mot de passe (mysql).

Si l'installation s'est correctement déroulé vous devriez avoir quelque chose qui ressemble à ce qui suit :

    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 51
    Server version: 5.5.47-0ubuntu0.14.04.1 (Ubuntu)

    Copyright (c) 2000, 2015, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql>
