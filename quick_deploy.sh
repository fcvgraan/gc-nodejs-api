#!/bin/bash


#gcloud config set project <name>
#gcloud functions deploy <functionName> --entry-point GCF_ENTRY="collectionLogic" --region europe-west1 --runtime nodejs10 --trigger-http --allow-unauthenticated

GCF_NAME="nodejs-mongodb-atlas-api"
GCF_ENTRY="collectionLogic"
GCF_REGION="europe-west1"

gcloud functions deploy $GCF_NAME \
  --entry-point $GCF_ENTRY \
  --region $GCF_REGION \
  --runtime nodejs10 \
  --trigger-http \
  --allow-unauthenticated