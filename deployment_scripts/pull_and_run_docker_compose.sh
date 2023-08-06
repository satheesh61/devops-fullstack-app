#!/bin/bash

# Retrieve the ECR repository URI and image tag
API_ECR_REPOSITORY_URI=<repo url>
UI_ECR_REPOSITORY_URI=<repo ui url>
IMAGE_TAG="latest"

# Authenticate Docker with ECR
$(aws ecr get-login --no-include-email --region ap-south-1)


# Pull the Docker image from ECR
docker pull "${API_ECR_REPOSITORY_URI}:${IMAGE_TAG}"
docker pull "${UI_ECR_REPOSITORY_URI}:${IMAGE_TAG}"

#Run the docker-compose
ls -l
pwd
cd /home/ec2-user/app
docker-compose  up -d

