#!/bin/bash

GITHUB_ACCOUNT_NAME=$1
GITHUB_REPO_NAME=$2
GITHUB_BRANCH_NAME=$3
SCRIPT_TO_RUN=$4
GITHUB_USERNAME_AND_ACCESS_TOKEN=$5
GITHUB_REPO_URL="github.com/$GITHUB_ACCOUNT_NAME/$GITHUB_REPO_NAME.git"

sudo git clone --branch $GITHUB_BRANCH_NAME --single-branch https://$GITHUB_USERNAME_AND_ACCESS_TOKEN@$GITHUB_REPO_URL
cd $GITHUB_REPO_NAME
sh $SCRIPT_TO_RUN $GITHUB_USERNAME_AND_ACCESS_TOKEN
