#BAIXA O PROVIDER DOCKER DO REGEISTRY(COMO UM APT INSTALL)
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version =  "~> 3.0"
    }
  }
}
#ATIVA E CONFIGURA O PROVIDER DOCKER(AQUI ENTRARIA CREDENCIAIS CASO NECESSARIO)
provider "docker" {}
resource "docker_image" "nginx" {
  name         = "nginx:${var.nginx_version}"
  keep_locally = false
}
#CRIA O CONTEINER WEB E A IMAGEM DO NGINX E MAPEIA AS PORTAS
resource "docker_container" "web" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  ports{
    internal = 80
    external = var.external_port
  }

}

