variable "infos_service" {
  type = list(object({
    id = number
    port =number
    node_port= number
    target_port =number
  }))
  default = [ {
    id =1
    port = 5000
    node_port = 31001
    target_port = 5000
  },
  {
    id =2
    port = 8000
    node_port = 31002
    target_port = 8000
  },
  {
    id =3
    port = 22
    node_port = 31003
    target_port = 22
  } ]
}