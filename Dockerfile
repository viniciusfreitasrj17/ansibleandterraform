FROM ubuntu:latest

RUN apt-get update
RUN apt-get -f install
RUN apt-get install -y wget unzip
RUN wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip -O /tmp/terraform_1.3.4_linux_amd64.zip
RUN unzip /tmp/terraform_1.3.4_linux_amd64.zip -d /usr/bin
RUN apt-get install -y ansible curl
RUN apt-get install -y python3 python3-pip
RUN pip3 install -U boto3 botocore
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN chmod +x ./aws/install
RUN ./aws/install

WORKDIR /app