provider "kubernetes"{
	config_path = "~/.kube/config"
}

resource "kubernetes_pod" "roberto_service_pod" {
  count = length(var.podsinfos)
  metadata {
	name = "roberto-newtp-pod-${count.index}"
	namespace = var.podsinfos[count.index].namespace
	labels = {
	  id = var.podsinfos[count.index].id
	  username =var.podsinfos[count.index].username
	}
  }
  
	spec {
		container {
		  name = var.podsinfos[count.index].container_name
		  image = var.podsinfos[count.index].image_name
		}
		node_name = "master"
	}
}