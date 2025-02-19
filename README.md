# 📌 Submission Reminder App

This repository contains a shell script and associated files to create an environment for the **Submission Reminder App**, a tool designed to send reminders for upcoming assignment deadlines.

## 📝 Overview

The app consists of a **shell script (`startup.sh`)** that checks and sends reminders to students who have pending assignments. The environment is **automatically set up** using the `create_environment.sh` script, which organizes the necessary directories and files.

## ✨ Features

- ✅ **Automated Setup**: Creates a structured directory for the application.
- ✅ **File Population**: Generates essential files (`reminder.sh`, `functions.sh`, `config.env`, `submissions.txt`, `startup.sh`).
- ✅ **Student Tracking**: Reads student submission data and sends reminders for pending submissions.
- ✅ **Startup Script**: Runs the entire process by reading data, checking submission status, and displaying notifications.

---

## 📂 Project Structure

```yaml
submission_reminder_{yourName}/
│── app/
│   ├── reminder.sh
│── assets/
│   ├── submissions.txt
│── config/
│   ├── config.env
│── modules/
│   ├── functions.sh
│── startup.sh
│── create_environment.sh
│── README.md

requirements:
  - Linux-based system with Bash installed (or Git Bash for Windows)
  - Git installed for cloning the repository
  - Text editor (e.g., VS Code, Sublime Text, or nano) to modify files if needed

steps:
  - step: 1️⃣ Clone the repository
    description: Download the project from GitHub.
    commands:
      - git clone https://github.com/{your-username}/submission_reminder_app_{your-username}.git
      - cd submission_reminder_app_{your-username}

  - step: 2️⃣ Run the Environment Setup Script
    description: Execute the `create_environment.sh` script to generate the required directories and files.
    commands:
      - bash create_environment.sh
    note: You will be prompted to **enter your name**, which will be used to name the main directory.

  - step: 3️⃣ Change into the newly created directory
    description: Navigate into the directory created by `create_environment.sh`.
    commands:
      - cd submission_reminder_{yourName}
    note: Replace `{yourName}` with the name you entered earlier.

  - step: 4️⃣ Make the startup script executable
    description: Ensure `startup.sh` has the right permissions.
    commands:
      - chmod +x startup.sh

  - step: 5️⃣ Start the Application
    description: Run the script to check assignment submissions.
    commands:
      - bash startup.sh

issues:
  - error: "No such file or directory"
    cause: The script is being executed in the wrong location.
    solution: Use `ls` to list files and confirm you are in the right directory.

  - error: "Permission denied"
    cause: The script does not have execution rights.
    solution: Run `chmod +x startup.sh` before executing.

  - error: "Environment variables not loading"
    cause: The `config.env` file is missing or not sourced correctly.
    solution: Check that `config.env` exists inside the `config/` folder.

  - error: "Submissions file not found"
    cause: The `submissions.txt` file is missing in `assets/`.
    solution: Use `ls assets/` to verify its existence and rerun `create_environment.sh` if necessary.

license: MIT License
description: This project is licensed under the MIT License. Feel free to modify and use it as needed.

Happy Coding!