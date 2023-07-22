terraform {
  backend "kubernetes" {
	secret_suffix = "roberto-secret-suffix"
	config_path = "~/.kube/config"
	namespace = "rashid"
  }
}

provider "kubernetes" {
	config_path    = "~/.kube/config"
}
