Dans le zip de chaque dossier on vous fourniras uniquement le fichier SRC

- donc creer un projet nest ensuite remplcer le src dans le dossier backend.
- creer un projet react ensuite remplcer le src dans le dossier backend.


Pour bien lancer le site web :


Lancer wampserver.


Ouvrir le dossier Backend dans VsCode:


Ouvrir le terminal:


Installer les dépendances nécessaires avec la commande npm install.


Ensuite lancer le serveur avec la commande : npm run:start dev


Une fois, le serveur est lancé et la connexion est établie avec la base de données.

Ouvrir phpmyadmin et se connecter à la base de données, le nom restaurant apparaîtra dans votre BD



Aller dans importer : importer le fichier restaurant.sql



Frontend:


Ouvrir le dossier Frontend:


Ouvrir le terminal :

Installer les dépendances nécessaires avec la commande npm install.

Ensuite lancer le serveur avec la commande : npm start



Afin de voir les resultats d'affichage de plusieurs recettes on vous suggere de choisir (carotte, courgette, chou-fleur) 
les 3 premiers  ingredients puis valider 


#######################################################
#######################################################
################ A T T E N T I O N ####################
#######################################################

A chaque relancer du serveur la table recette se vides,
Un comportement incompréhensible de notre part.
Il faut manuellement re importer la table.   

