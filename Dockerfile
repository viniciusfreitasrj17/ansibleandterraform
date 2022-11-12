FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget unzip
RUN wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip -O /tmp/terraform_1.3.4_linux_amd64.zip
RUN unzip /tmp/terraform_1.3.4_linux_amd64.zip -d /usr/bin
RUN apt-get install -y ansible curl
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN chmod +x ./aws/install
RUN ./aws/install

WORKDIR /app