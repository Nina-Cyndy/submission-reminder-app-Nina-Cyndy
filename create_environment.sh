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
touch startup.sh

# Step 6: Populate the files
# Populate reminder.sh file
cat > app/reminder.sh << 'EOF'
#!/bin/bash

# Source environment variables and helper functions
source ./config/config.env
source ./modules/functions.sh

# Path to the submissions file
submissions_file="./assets/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions "$submissions_file"
EOF

# Populate the submissions.txt file
cat > assets/submissions.txt << 'EOF'
student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, Git, submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Nina, Shell Navigation, not submitted
Bwiza, Self Leadership, submitted
Cyndy, Learning dynamics, not submitted
Belyse, Shell Navigation, not submitted
Innocente, google drive test, submitted
EOF

# Populate the config.env file
cat > config/config.env << 'EOF'
# This is the config file
ASSIGNMENT="Shell Navigation"
DAYS_REMAINING=2
# ASSIGNMENT="ennegram test"
# DAYS_REMAINING=1
# ASSIGNMENT="Learning dynamics"
# DAYS_REMAINING=3
EOF

# Populate the functions.sh file
cat > modules/functions.sh << 'EOF'
#!/bin/bash

# Function to read submissions file and output students who have not submitted
function check_submissions {
    local submissions_file=$1
    echo "Checking submissions in $submissions_file"

    # Skip the header and iterate through the lines
    while IFS=, read -r student assignment status; do
        # Remove leading and trailing whitespace
        student=$(echo "$student" | xargs)
        assignment=$(echo "$assignment" | xargs)
        status=$(echo "$status" | xargs)

        # Check if assignment matches and status is 'not submitted'
        if [[ "$assignment" == "$ASSIGNMENT" && "$status" == "not submitted" ]]; then
            echo "Reminder: $student has not submitted the $ASSIGNMENT assignment!"
        fi
    done < <(tail -n +2 "$submissions_file") # Skip the header
}
EOF

# Populate the startup.sh file
cat > startup.sh << 'EOF'
#!/bin/bash

echo "Starting the submissions reminder app ..."

source config/config.env
source modules/functions.sh
source app/reminder.sh
EOF

# Make startup.sh executable
chmod +x startup.sh

# Notify the user that the environment has been created
echo "Environment for submission reminder app has been created!"
