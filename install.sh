#!/bin/bash

PROJECT_NAME=$1

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: bash install.sh my-project"
  exit 1
fi

mkdir -p $PROJECT_NAME/hermes

cp -R runtime $PROJECT_NAME/hermes/
cp -R memory $PROJECT_NAME/hermes/
cp -R retrieval $PROJECT_NAME/hermes/
cp -R skills $PROJECT_NAME/hermes/
cp -R agents $PROJECT_NAME/hermes/
cp -R templates $PROJECT_NAME/hermes/

cp bootstrap.md $PROJECT_NAME/

echo "Hermes Runtime installed into $PROJECT_NAME"
