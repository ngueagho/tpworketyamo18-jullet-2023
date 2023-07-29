variable "ower_name" {
  type = string
  default = "roberto"
}

variable "podsinfos" {
  type = list(object({
    pod_name = string
    id= number
    username =string
    image_name = string
    container_name =string
    namespace= string
  }))
  default = [ {
    pod_name = "roberto_tp_pod-a"
    id= 1
    username = "root"
    image_name = "robertolandry/tp18juillet2023-nginx-port5000"
    container_name ="roberto-nginx5000"
    namespace="rashid"
  },
  {
    pod_name = "roberto_tp_pod-b"
    id= 2
    username = "user1"
    image_name = "robertolandry/tp18juillet2023-httpd-port8000"
    container_name ="roberto-httpd8000"
    namespace="rashid"
  },
  {
    pod_name = "roberto_tp_pod-b"
    id= 3
    username = "user2"
    image_name = "robertolandry/hellouser"
    container_name ="roberto-ssh-hellouser"
    namespace="rashid"
  }
   ]
}