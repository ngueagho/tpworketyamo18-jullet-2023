provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_service" "nodeport" {
  count = length(var.infos_service)
 /* depends_on = [ kubernetes_pod.roberto_service_pod] */
  metadata {
    name ="roberto-node-port-service-${count.index}"
    namespace = "rashid"
  }
  spec {
    type = "NodePort"
    selector = {
        id =var.infos_service[count.index].id
    }

    port {
      node_port = var.infos_service[count.index].node_port
      port = var.infos_service[count.index].port
      target_port = var.infos_service[count.index].target_port
    }
  }
}
/* resource "kubernetes_service" "example" {
  metadata {
    name = "terraform-example1"
    namespace = "rashid"
    
  }
  spec {
    selector = {
      app = "${kubernetes_pod.example.metadata.0.labels.app}"
    }
    session_affinity = "ClientIP"
    port {
      port        = 8080
      target_port = 80
    }
    type = "LoadBalancer"
  }
  
}

resource "kubernetes_pod" "example" {
  metadata {
    name = "terraform-example"
    namespace = "rashid"
    labels = {
      app = "MyApp"
    }
  }

  spec {
    container {
      image = "nginx:1.7.9"
      name  = "example"
    }
  }
} */