# PROJET-PFE

Ce projet est une application développé à l'aide du Framework web python Flask. C'est un dictionnaire à l'intérieur duquel l'on peut rechercher un livre et en ajouter un. 

## Lancement de l'application

>il faut avoir [python](https://www.python.org/downloads) pour pouvoir lancer l'application ou utiliser directement la commande _pip install Flask_ si on a le module [pip](https://pip.pypa.io/en/stable/) installé ou la commande _sudo apt install python3-flask_

> Cloner le repo à l'aide de la commande git clone git@github.com:Marvellck/projet-pfe.git et rentrer dans le projet à l'aide de la commande _cd_

>l'application est accessible à l'adresse suivante : _http://localhost:5000



## A l'intérieur du projet ##

```
#modifier flask_env
export FLASK_ENV=development

#lancer l'application
flask run
```


# Lancer l'application dans un conteneur Docker

> A l'aide du Dockerfile qui se situe dans l'arborescence du projet, créer une image de l'application à l'aide de la commande _docker build -t votre_identifiant_docker_hub/nom_de_l'image:tag_ .
> Envoyer l'image sur votre Docker Hub registry à l'aide de la commande _docker push votre_identifiant_docker_hub/nom_de_l'image:tag_


## tester l'image 

```
#Creer un reseau

>docker network create nom_du_reseau

#lancer un conteneur 

>docker run --name=nom_du_conteneur --rm -p 5000:5000 -d --network=nom_du_network nom_de_l'image_buildé 
```



## License

_Uriel Marvel NGANKAM KALAMO_