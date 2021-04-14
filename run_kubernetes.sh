#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=udacity

# Step 2
# Run the Docker Hub container with kubernetes
##### kubectl run $dockerpath --image=hhdockerhh/hhudacity:latest--port=80
kubectl run udacity -it --image=hhdockerhh/udacity:v1 --port=80
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose pod udacity --type=LoadBalancer --port=80
kubectl port-forward service/udacity 8000
