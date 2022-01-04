# Classification

Ce document a pour but de vous aider à installer l'environnement
nécessaire afin de faire fonctionner la prédiciton d'un chiffre
à partir d'une image.
Trois images vous sont fournies afin de tester l'application
à plusieurs reprises.
Veuillez suivre les étapes suivantes afin que tout fonctionne :

### Installation de Docker

- Si vous ne disposez pas encore de Docker sur votre machine, il est
  nécessaire de l'installer à l'aide la commande suivante sur un 
  terminal:  sudo apt install docker.io

### Récupérer les documents de GIT

- Sur le dépôt Git envoyé,cliquer sur "Extraire tout" afin de récupérer
  tous les fichiers nécessaires
- Enregistrer tous les fichiers dans l'emplacement que vous désirez
  sur votre machine

### Créer l'image Docker

- Ouvrir un terminal et se positionner à l'emplacement où les documents
  ont été téléchargés (à l'aide de la commande "cd")
- Entrer la commande suivante: docker build -t class .
  (Ne pas oublier le "." à la fin)

Après une courte durée de chargement, nous possédons le 
conteneur où toutes les dépendances ont été installées. 

### Lancer l'application

L'application consiste à prendre une image, et à renvoyer le chiffre
qui est affiché sur l'image. Ainsi, il faut que vous spécifiiez l'image
que l'on désire tester.
Pour ce faire:
- Lancer la commande suivante sur le terminal (toujours positionné au
  même emplacement): ./docker.sh
- lorsque que cela vous l'est demandé, entrer le nom de l'image en 
  n'oubliant pas l'extension (.png par exemple).

Après un cours instant, le chiffre représenté sur l'image devrait
s'afficher sur votre terminal, un fichier JSON nommé classe.json
devrait avoir été créé au même emplacement que le dockerfile.
Le chiffre représenté dans l'image devrait également y être écrit.

En espérant que cela ait fonctionné :)
Teo
