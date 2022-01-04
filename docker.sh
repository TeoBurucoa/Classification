#!/bin/sh
# créer et lancer un nouveau conteneur à partir de l'image construite
name=$(docker run -id class)

# copier l'image dans le conteneur
docker cp ./image_mnist.png $name:/home/docker/

# entrer le nom de l'image (e.g. image.png)
read -p "Entrer le nom de l'image: " pictureName

# exécuter le script
docker exec $name python /home/docker/inference.py $pictureName

# récupérer les résultats
docker cp $name:/home/docker/classe.json ./

# arreter et supprimer le conteneur
docker stop $name
docker rm $name