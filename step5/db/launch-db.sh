#!/bin/bash

CONTAINER_NAME="step5-db"

echo "Make sure you are launching this script inside the db folder"

echo "Building Image..."

docker build -t my-mysql-image .

echo "Image build correctly"

echo "Checking if Container is already running..."

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Error: Container '$CONTAINER_NAME' is already running."
    exit 1
fi

echo "Checking if Container exists but is stopped..."

if [ "$(docker ps -aq -f status=exited -f name=$CONTAINER_NAME)" ]; then
    echo "Error: Container '$CONTAINER_NAME' exists but is stopped. Remove the container and rerun the script."
    exit 1
fi

echo "Starting Container..."

docker run -d --name $CONTAINER_NAME -p 3306:3306 my-mysql-image

echo "Container '$CONTAINER_NAME' is running."
