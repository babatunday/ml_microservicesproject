#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="abasstiamiyu/microservicesproject:v1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservicesproject\
    --image=$dockerpath\
    --port=80 --labels app=microservicesproject

# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host
