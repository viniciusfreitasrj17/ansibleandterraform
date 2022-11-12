# Ansible and Terraform in Container

## Build

`docker-compose build`

## Access Container Interactive

`docker-compose run --rm iac`

## Run Terraform Script (Create a bucket on aws)

`docker-compose run --rm iac sh -c "terraform init && terraform apply -auto-approve"`

## DockerHub

`viniciusfreitasrj17/ansibleandterraform:latest`
