# Ansible and Terraform in Container

## Configure variables environment to Terraform and Ansible in this files

- variables.tf.example
- env-ansible.example.yaml
  
  **Create e new file with same name above, but remove "example" name**

## Build

`docker-compose build`

## Access Container Interactive

`docker-compose run --rm iac`

## Run Terraform Script (Create a bucket on aws)

`docker-compose run --rm iac sh -c "terraform init && terraform apply -auto-approve"`

## Upload file to s3 with Ansible

`docker-compose run --rm iac sh -c "ansible-playbook playbook-s3.yaml"`

## Run install python and nodejs in ec2 with Ansible (should be key.pem and a ec2 IP in hosts.yaml)

`docker-compose run --rm iac sh -c "ansible-playbook playbook-develop.yaml -u ubuntu --private-key key.pem -i hosts.yaml"`

## DockerHub

`viniciusfreitasrj17/ansibleandterraform:latest`
