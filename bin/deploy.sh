#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"; cd $DIR; cd ..

source bin/config

set -e

tag=$(git name-rev --tags --name-only $(git rev-parse HEAD))
if [ $tag = "undefined" ]; then
  echo "You must be on a tag to deploy"
  exit 1
fi
DEPLOYMENT_FILE="deployment.$tag.tgz"

tar -czvf $DEPLOYMENT_FILE --exclude .git --exclude node_modules .

aws s3 cp $DEPLOYMENT_FILE s3://$S3_BUCKET/

aws deploy create-deployment \
  --application-name $AWS_APP_NAME \
  --deployment-group-name $AWS_DEPLOY_GRP_NAME \
  --s3-location bucket=$S3_BUCKET,bundleType=tgz,key=$DEPLOYMENT_FILE

rm $DEPLOYMENT_FILE
