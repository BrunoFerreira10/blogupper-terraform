# Sobre o projeto
## Descrição
Implementação de sistema Wordpress na AWS usando IaC Terraform e repositório no 
Github.<br>
Execução dos scripts Terraform através do Github Actions.

## Estrutura
O projeto conta com vários **'sub-projetos'** Terraform, os quais se comunicam 
usando um **'remote state'** alocado em um S3.<br>
Com isso é possível criar e destruir os recursos de forma individual.

# Requisitos

## Requisitos da AWS
  - Usuário com acesso CLI e politicas de admintração do ambiente. 
  - Chave ssh criada para acesso via ssh.
  - Dominio e HostedZone (Router 53) previamente criados.

## Variavéis e Secrets configuradas no Github Actions
### Github Vars
| Variável                        | Exemplo                                               | Detalhes |
| :---                            | :---                                                  | :---     |
| APP_REPOSITORY_URL              | git@github.com:BrunoFerreira10/blogupper-app.git      |
| APP_REPOSITORY_URL              | https://github.com/BrunoFerreira10/blogupper-app.git  |
| EC2_SSH_KEYPAIR_NAME            | your-key-pair-name                                    |
| GENERAL_REGION                  | us-east-1                                             |
| GENERAL_PROJECT_BUCKET_NAME     | your-remote-state-bucket-name                         |
| GENERAL_TAG_AUTHOR              | Bruno Ferreira                                        |
| GENERAL_TAG_CUSTOMER            | BlogUpper                                             |
| GENERAL_TAG_PROJECT             | blogupper-terraform                                   |
| GENERAL_TAG_SHORTNAME           | blogupper                                             |
| IAM_AWS_ACCESS_KEY_ID           | AKHXXDDFFDSDD76JGJJKJ                                 |
| IMAGE_BUILDER_PARENT_IMAGE      | ami-04b70fa74e45c3917                                 |
| MY_GITHUB_CONNECTION_NAME       | github_apss_connection_name                           |
| RDS_1_DB_NAME                   | db_blogupper                                          |
| RDS_1_DB_USERNAME               | blogupper_rootuser                                    |
| RT53_DOMAIN                     | brunoferreira86dev.com                                |


### Github Secrets
| Variável                                | Exemplo                   | Detalhes |
| :---                                    | :---------------          | :---     |
| EC2_SSH_PRIVATE_KEY                     |                           | Sua chave SSH para acesso ao Bastion host
| GENERAL_MY_IP                           | 199.99.99.999             | Ip para acesso aos Bastion hosts
| IAM_AWS_SECRET_ACCESS_KEY               |                           | AWS Secret access Key do usuário Terraform
| RDS_1_DB_PASSWORD                       | your-rds-password         | Senha do RDS.