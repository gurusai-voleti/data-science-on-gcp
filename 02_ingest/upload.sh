#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./upload.sh  destination-bucket-name"
    exit
fi

BUCKET=$1

echo "Uploading to bucket $BUCKET..."
gcloud storage cp *.csv gs://$BUCKET/flights/raw/
#gcloud storage objects update --recursive --add-acl-grant=allUsers:R gs://$BUCKET/flights/raw
#gcloud storage objects update --recursive --add-acl-grant=google.com:R gs://$BUCKET/flights/raw
