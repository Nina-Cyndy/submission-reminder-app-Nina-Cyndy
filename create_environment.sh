#!/bin/bash

# Step 1: Prompt for the user's name
echo "Enter your name:"
read user_name

# Step 2: Create the main directory
mkdir "submission_reminder_${user_name}"

# Step 3: Go into the main directory to start creating subdirectories
cd "submission_reminder_${user_name}"

# Step 4: Create subdirectories inside the main directory
mkdir app
mkdir assets
mkdir config
mkdir modules

# Step 5: Create necessary files in the respective directories
touch app/reminder.sh
touch assets/submissions.txt
touch config/config.env
touch modules/functions.sh

echo "Environment setup completed!"
