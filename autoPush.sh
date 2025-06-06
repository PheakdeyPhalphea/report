#!/bin/bash

# Prompt for commit message
read -p "Enter your commit message: " message

# Add all changes
git add .

# Commit with the entered message
git commit -m "$message"

# Optional: Push to current branch
read -p "Do you want to push? (y/n): " push
if [[ "$push" == "y" || "$push" == "Y" ]]; then
  git push
fi
