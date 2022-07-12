# PROJET-PFE

Ce projet est une application développée à l'aide du Framework web python Flask. C'est un dictionnaire à l'intérieur duquel l'on peut rechercher un livre et en ajouter un. 

## Lancement de l'application

il faut avoir [python](https://www.python.org/downloads) pour pouvoir lancer l'application ou utiliser directement la commande 

```
pip install Flask
```
si on a le module [pip](https://pip.pypa.io/en/stable/) installé ou la commande 
```
sudo apt install python3-flask
```
Cloner le repo à l'aide de la commande 

```
git clone git@github.com:Marvellck/projet-pfe.git
```
 suivi de la commande 
 
 ```
 cd projet-pfe
 ```
pour rentrer dans le projet.


L'application est accessible à l'adresse suivante : http://localhost:5000


## A l'intérieur du projet ##


```
#modifier flask_env
export FLASK_ENV=development

#lancer l'application
flask run
```


# Lancer l'application dans un conteneur Docker

A l'aide du Dockerfile qui se situe dans l'arborescence du projet, créer une image de l'application à l'aide de la commande 

```
docker build -t image_pfe:v1 .
```

## tester l'image 

```
#lancer un conteneur 

docker run --name=nom_du_conteneur -p 5000:5000 image_pfe:v1
```



## License

_Uriel Marvel NGANKAM KALAMO_