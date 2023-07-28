terraform {
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
        version = "~> 3.0.1"
    }
  }
}
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

/* Buildez l’image docker cité plus haut grâce à terraform  */


resource "docker_image" "nginx-port5000" {               
  name = "nginx-port5000"
  build {
    context = "/home/hello/Documents/tpworketyamo18-jullet-2023/Terraform/exercice1/Terraform/nginx/"
  }
}
resource "docker_image" "httpd-port8000" {               
  name = "httpd-port8000"
  build {
    context = "/home/hello/Documents/tpworketyamo18-jullet-2023/Terraform/exercice1/Terraform/httpd/"
  }
}
 /*Faite un push de l’image dans un docker registry à l’aide de terraform  */

resource "nu" "name" {
  
}
resource "null_resource" "docker_hub" {

}
