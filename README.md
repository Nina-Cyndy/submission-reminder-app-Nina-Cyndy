# Submission Reminder App

This repository contains a shell script and associated files to create an environment for the **Submission Reminder App**, a tool designed to send reminders for upcoming assignment deadlines.

## Overview

The app is composed of a shell script (`startup.sh`) that sends reminders to students who have pending assignments. The environment is set up using a **shell script** (`create_environment.sh`), which automates the process of creating the necessary directories and files. The app simulates a real-world system where the user's submissions are tracked and reminders are sent based on their submission status.

## Features

- **Directory Setup**: Automatically creates a directory structure for the app.
- **File Setup**: Populates the app with essential files (`reminder.sh`, `functions.sh`, `config.env`, `submissions.txt`, `startup.sh`).
- **Student Tracking**: Reads student submission data from `submissions.txt` and sends reminders for pending submissions.
- **Startup Script**: A script that initiates the reminder process by reading data, checking submission status, and sending reminders.

## Files in the Project

- `create_environment.sh`: The script that sets up the environment by creating directories and files.
- `reminder.sh`: A script that sends reminders for pending assignments.
- `functions.sh`: Contains helper functions for checking submission status.
- `config.env`: Contains environment variables for the app.
- `startup.sh`: The main script that starts the reminder process.
- `submissions.txt`: A file containing student records with submission statuses.

## Prerequisites

- **Linux-based system** with Bash installed.
- **Git Bash** or any terminal that supports Bash scripting.
- **Text editor** (e.g., Visual Studio Code, Sublime Text, or nano) to modify files if needed.

## Setup Instructions

Follow the steps below to set up the **Submission Reminder App** on your local machine.

### Step 1: Clone the Repository

Clone the repository to your local machine using Git:

```bash
git clone https://github.com/{your-username}/submission_reminder_app_Nina_Cyndy.git
cd submission_reminder_app_Nina_Cyndy

#### Step 2: Run the Environment Setup Script

` bash create_environment.sh or sh create_environment.sh

This script will:

Prompt for your name.

Create the submission_reminder_{yourName} directory.

Populate the necessary files with pre-defined content.

### Step 3: Navigate to the Created Directory

cd submission_reminder_{yourName}

###  Step 4: Run the Startup Script

bash startup.sh or sh startup.sh

This will start the reminder app, load configuration settings, and check for pending submissions.
