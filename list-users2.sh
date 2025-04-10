#!/bin/bash

# GitHub username and personal access token
#
#
USERNAME="$username"
TOKEN="$token"
REPO_OWNER=$1
REPO_NAME=$2

    # Send a GET request to the GitHub API with authentication

    echo $(curl -s -u "${USERNAME}:${TOKEN}" "https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/collaborators") | jq -r '.[] | select(.permissions.pull == true) | .login'




#collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"
# Main script

