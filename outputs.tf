output "container_name"{
  description = "Nome do conteiner criado"
  value = docker_container.web.name
}
