terraform {
  backend "kubernetes" {
	secret_suffix = "roberto-secret-suffix"
	config_path = "~/.kube/config"
	namespace = "rashid"
  }
}

module "docker" {
source = "./modules/docker"
}
module "kubernetes" {
  source = "./modules/terraform"
}




