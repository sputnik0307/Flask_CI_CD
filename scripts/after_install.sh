#!/bin/bash

echo "Logging in to Amazon ECR..."
docker login --username AWS --password $(aws ecr get-login-password --region us-east-1) 096178172531.dkr.ecr.us-east-1.amazonaws.com/flask_image
echo "Logged in to Amazon ECR successfully."

echo "Pulling image from Amazon ECR"
docker pull 096178172531.dkr.ecr.us-east-1.amazonaws.com/flask_image
echo "Pulled image from Amazon ECR successfully."