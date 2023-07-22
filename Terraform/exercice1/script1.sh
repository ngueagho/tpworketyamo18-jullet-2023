#!/bin/bash
clear
echo "***********************BONJOUR ADMINSTRATEUR****************************"

echo "chers Administrateur systeme , cet outils vas vous permetre de:"
echo " "
echo "-créer des modules  terraform automatiquement ( variables.tf, main.tf, ouputs.tf et Readme.md) "

echo ""
echo ""

echo "[c] pour continuer et [q] pour quitter"
reponse="coucou"
vrai="c"
read reponse


#creation des different dossiers
if [ $reponse != $vrai ]
then
	 pkill -f script1;
else 
   mkdir Terraform 
   cd Terraform 
   touch variables.tf
   touch main.tf 
   touch ouputs.tf
   touch Readme.md
   echo ""
   echo "dossier terraform cree avec succes au chemin de fichier "
   pwd > chemin 
   cat chemin
   rm chemin
   echo ""
   echo "entez la lettre [c] pour poursuiver avec le telechargement du provider(kubernetes par defaut) ou [q] pour terminer"
   echo ""	
   	read reponse
	if [ $reponse != $vrai ]
	then
		pkill -f script1;
	else
		echo 'provider "kubernetes" {' > main.tf
		echo '	config_path    = "~/.kube/config"' >> main.tf
		echo '}' >>  main.tf

		terraform init
		#decochez la ligne suivante pour supprimer tout les dossiers
		#rm -r ../Terraform	
	fi
fi


