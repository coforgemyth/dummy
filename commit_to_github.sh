#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Variables
github_repo_url="https://github.com/your-username/your-repository-name.git"
branch_name="main"
commit_message="Initial commit"

# Initialize Git repository if not already initialized
if [ ! -d .git ]; then
    git init
fi

# Add all files to the staging area
git add .

# Commit the changes
git commit -m "$commit_message"

# Add remote repository if not already added
if ! git remote | grep -q origin; then
    git remote add origin "$github_repo_url"
fi

# Set the branch name and push the changes
git branch -M "$branch_name"
git push -u origin "$branch_name"

echo "Code has been successfully pushed to GitHub."