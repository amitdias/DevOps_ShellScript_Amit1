
#!/bin/bash

# GITHUB URL
Api_URL= "https://api.github.com"

# Authenticating using username and token
USERNAME= $username
TOKEN= $token

#Provide Organisation name and repository name
REPO_OWNER= $1
REPO_NAME= $2

# Function to make a Get request to GETHUB API

function GITHUB_getAPI  {
local endpoint= "$1"
local URL= "${Api_URL}/${endpoint}"

# API get request with authentication

curl -s -u "URL" "${USERNAME}:${TOKEN}"

}

# Fetch a list of users with readonly access

function fetch_list_users_readaccess{

                            local endpoint=  "repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

# Fetching list of collaborators

                            local collaborators= "$(GITHUB_getAPI "endpoint")

if[[-z collaborators]]; then
      echo "No users with read only access for ${REPO_OWNER}/${REPO_NAME}."
else 
      echo "Users with read only access for ${REPO_OWNER}/${REPO_NAME}:"
      echo "collaborators"
fi 

}


# Main Script

echo "Listing users with read oly access for ${REPO_OWNER}/${REPO_NAME}...""
fetch_list_users_readaccess


