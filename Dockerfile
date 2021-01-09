## Requirements
# - Build a docker image and push to ECR
# - Build a docker image on every commit

FROM alpine:3.12

RUN wget -O terraform.zip "https://releases.hashicorp.com/terraform/0.14.4/terraform_0.14.4_linux_amd64.zip" && \
    unzip terraform.zip -d /usr/local/bin/ && \
    rm -f terraform.zip
WORKDIR /app
COPY main.tf .

