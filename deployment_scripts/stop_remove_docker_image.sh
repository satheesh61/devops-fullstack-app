#|/bin/bash


# # Authenticate Docker with ECR
# $(aws ecr get-login --no-include-email --region ap-south-1)

# stop the docker compose
cd /home/ec2-user/app
ls
docker-compose  down --rmi all
