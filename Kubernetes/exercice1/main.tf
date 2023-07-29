module "kubernetes-ssh"{
	source= "./modules/kubernetes-ssh"
}
module "nodeportservice"{
	source= "./modules/nodeportservice"
}
