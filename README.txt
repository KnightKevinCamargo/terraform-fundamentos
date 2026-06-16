# terraform-fundamentos

Provisionamento de um container nginx via Terraform com o provider Docker.

Testado no Ubuntu com Docker rodando localmente — sem necessidade de conta em nuvem.

---

## Pré-requisitos

- Terraform v1.x
- Docker rodando localmente

---

## Estrutura

```
terraform-fundamentos/
├── main.tf           # Define os recursos (imagem e container)
├── variables.tf      # Declara as variáveis
├── terraform.tfvars  # Valores das variáveis — sem dados sensíveis, pode editar à vontade
└── outputs.tf        # O que é exibido após o apply
```

O `terraform.tfvars` está versionado intencionalmente — não contém dados sensíveis e permite rodar o projeto sem nenhuma configuração extra.

---

## Como rodar

```bash
git clone https://github.com/KnightKevinCamargo/terraform-fundamentos.git
cd terraform-fundamentos

terraform init
terraform plan
terraform apply
```

Para testar:

```bash
curl http://localhost:8888
```

Para destruir:

```bash
terraform destroy
```

---

## Variáveis

| Variável | Padrão | Descrição |
|---|---|---|
| `nginx_version` | `alpine` | Versão da imagem nginx |
| `container_name` | `nginx-terraform` | Nome do container |
| `external_port` | `8888` | Porta exposta no host |

Para mudar qualquer valor, edite o `terraform.tfvars` antes de rodar o `apply`.
