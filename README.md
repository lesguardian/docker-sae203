# docker-sae203

Vérifier que docker est bien installé sur votre machine : 
	docker -- version

Cloner (récupérer) le dossier : 
	git clone git@gihub.com:lesguardian/docker-sae203.git

Déplacer-vous dans le dossier :
	cd docker-sae203

Contruisez l'image du Dockerfile (ne pas oublier le point) : 
	docker build -t <nom de votre choix pour l'image> .

Lancer le serveur web :
	docker run --name <nom de votre choix> -d -p 41572:80 <nom del'image choisie précédemment>

Ouvrez votre serveur dans la barre d'adresse d'un navigateur quelconque :
	localhost:41572 (sur les machines externes à l'IUT)
	di-docker:41572 (sur les machines de l'IUT)

Naviguer sur le site à votre convenance 

Pour fermer le conteneur, reperer votre identifiant avec :  
	docker ps

arrêtez-le :
	docker stop <id_conteneur> ou
	docker stop <nom_conteneur>

si vous voulez supprimer le conteneur : 
	docker rm <id_conteneur> ou
	docker rm <nom_conteneur>





 Par rapport à Docker:
	Docker est un logiciel qui permet "d'empaqueter" dans des conteneurs logiciels. Ils pourront alors
	être exécuté sur n'importe quel serveur.








> Guesdon Jules 
> Dhihl Matteo 
> Deniaud Alexis
