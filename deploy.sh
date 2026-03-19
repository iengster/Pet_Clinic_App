#!/bin/bash
set -e

echo "========================================="
echo "   Pet Clinic App - Build & Deploy"
echo "========================================="

echo "--> Step 1: Building WAR with Maven..."
mvn clean package

echo "--> Step 2: Stopping old container..."
docker stop dockercontainer || true
docker rm dockercontainer || true

echo "--> Step 3: Removing old image..."
docker rmi mavenbuild || true

echo "--> Step 4: Building Docker image..."
docker build -t mavenbuild .

echo "--> Step 5: Running new container..."
docker run -d -p 9090:8080 --name dockercontainer mavenbuild

echo "========================================="
echo "   Deployment Successful!"
echo "   App running at http://localhost:9090"
echo "========================================="
echo
