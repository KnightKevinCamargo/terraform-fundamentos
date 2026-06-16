variable "nginx_version" {
  description = "Versão da imagem do meu nginx"
  type        = string
  default     = "alpine"
}

variable "container_name" {
  description = "nome do conteiner"
  type        = string
  default     = "meu-nginx"
}
variable "external_port" {
  description = "Porta exposa no host" 
  type = number
  default = 8080
}
