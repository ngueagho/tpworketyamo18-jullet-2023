#!/bin/bash

clear
echo "********************BONJOUR ADMINSTRATEUR****************************"

echo "chers Adminstrateur systeme , cet outils vas vous permetre de:"
echo " "
echo " script bash qui builde votre image grace aux differents dockerfiles , les tag et les push directement dans le repository"
echo ""
echo ""
echo ""
echo "par defaut le chemein de fichier vers nos diffeernts dockerfile builde est "
echo ""
echo "/home/hello/Documents/tpworketyamo18-jullet-2023/Docker/exercice2/nginx/Dockerfile ..et"
echo "/home/hello/Documents/tpworketyamo18-jullet-2023/Docker/exercice2/httpd/Dockerfile"
echo ""
echo ""
echo ""
echo "lancement de l'operation de build"
echo "***************** build de l'image nginx port 5000**********************"
docker build -t newnginx /home/hello/Documents/tpworketyamo18-jullet-2023/Docker/exercice2/nginx/
sleep 10s
clear
echo "***************** build de l'image httpd port 8000**********************"
docker build -t newhttpd  /home/hello/Documents/tpworketyamo18-jullet-2023/Docker/exercice2/httpd/
sleep 10s
clear
echo ""
echo ""
echo "*****************Debut du tag et envoi des image locals sur le dockerhub ********************"
echo ""
echo "docker tag newnginx robertolandry/tp18juillet2023-nginx-port5000:latest"
docker tag newnginx robertolandry/tp18juillet2023-nginx-port5000:latest
echo ""
echo "docker push robertolandry/tp18juillet2023-nginx-port5000:latest"
docker push robertolandry/tp18juillet2023-nginx-port5000:latest
echo ""
echo ""
echo "docker tag newhttpd  robertolandry/tp18juillet2023-httpd-port8000:latest"
docker tag newhttpd  robertolandry/tp18juillet2023-httpd-port8000:latest
echo ""
echo "docker push robertolandry/tp18juillet2023-httpd-port8000:latest"
docker push robertolandry/tp18juillet2023-httpd-port8000:latest
clear
echo ""
echo ""
echo ""
echo "************************** FIN execition termine avec succes *******************************"
echo ""
echo "************************** MERCI DE NOUS FAIRE CONFIANCE :) ********************************"



