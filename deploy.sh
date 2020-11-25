#!/bin/bash

PROJECT_ID="gc-nodejs-api-v1"
PROJECT_NAME="gc-nodejs-api"

gcloud projects create $PROJECT_ID \
  --name="$PROJECT_NAME" \
  --set-as-default

BILLING_ACCOUNT=$(gcloud beta billing accounts list --format 'value(name)' --filter=open=true)
gcloud beta billing projects link $PROJECT_ID \
  --billing-account $BILLING_ACCOUNT

gcloud services enable cloudfunctions.googleapis.com
gcloud services enable cloudbuild.googleapis.com  

GCF_NAME="nodejs-mongodb-atlas-api"
GCF_ENTRY="collectionLogic"
GCF_REGION="europe-west1"

gcloud functions deploy $GCF_NAME \
  --entry-point $GCF_ENTRY \
  --region $GCF_REGION \
  --runtime nodejs10 \
  --trigger-http \
  --allow-unauthenticated