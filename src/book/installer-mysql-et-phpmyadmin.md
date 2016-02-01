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
