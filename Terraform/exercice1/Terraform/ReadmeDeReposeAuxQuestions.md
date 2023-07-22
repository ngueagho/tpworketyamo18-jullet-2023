1-Configurez le backend directement sur le cluster kubernetes (secret_suffix=[votre nom]) 

terraform {
  backend "kubernetes" {
	secret_suffix = "roberto-secret-suffix"
	config_path = "~/.kube/config"
	namespace = "rashid"
  }
}

2-Listez les différents providers et leurs versions 