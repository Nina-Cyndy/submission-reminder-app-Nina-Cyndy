
#!/bin/bash
echo "Welcome! Enter your name please: "
read user_name
main_dir="submission_reminder_$user_name"
mkdir -p "$main_dir"
echo "Environment Setup Complete!"
