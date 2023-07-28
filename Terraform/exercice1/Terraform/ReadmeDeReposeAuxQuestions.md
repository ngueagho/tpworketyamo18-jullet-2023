                                WORKETYAMO
Questions


1-Configurez le backend directement sur le cluster kubernetes (secret_suffix=[votre nom])
2-Listez les différents providers et leurs versions
3-Utiliser des variables d’environnement pour les informations sensibles
4-Configurez les différents providers en tenant compte des bonnes pratiques
5-Buildez l’image docker cité plus haut grâce à terraform
6-Faite un push de l’image dans un docker registry à l’aide de terraform
7-Dans le Readme.md :
        expliquez ce qu’est un provisionner
        Expliquer la différence entre le provider et le provisionner
        Expliquez les modules et donnez leurs avantages




Reponces

1-Configurez le backend directement sur le cluster kubernetes (secret_suffix=[votre nom]) 
terraform {
  backend "kubernetes" {
	secret_suffix = "roberto-secret-suffix"
	config_path = "~/.kube/config"
	namespace = "rashid"
  }
}

2-Listez les différents providers et leurs versions 
	-github version "~>5.0"
	-kubernetes version "~>2.8"

3- ok grace  a l'utilisation du script l'utiisateur peut exporter cs variables d'environnement
4- ok dans la suite... :)
5- ok
	
	resource "docker_image" "nginx-port5000" {               
	  name = "nginx-port5000"
	  build {
	    context = "/home/hello/Documents/tpworketyamo18-jullet-2023/Terraform/exercice1/Terraform/nginx/"
	  }
	}


6- 
