# food-donation-testing
Automated API and Functional Testing of a Food Donation and Redistribution Platform
1. Project Description

This project focuses on Automated API and Functional Testing of a Food Donation and Redistribution Platform. The system helps donors share surplus food with people or organizations in need.

The project verifies the functionality, reliability, and correctness of the platform through automated testing.

2. Objectives

To test user registration and login functionality.

To verify food donation operations.

To test food request and redistribution features.

To validate API responses and HTTP status codes.

To automate functional test cases.

To identify errors and improve software quality.
3. Technologies and Tools Used

Programming Language: Python

Automation Testing Framework: Robot Framework

API Testing: Robot Framework RequestsLibrary

Functional Testing: Robot Framework

API Testing Tool: Postman (if used)

Code Editor: Visual Studio Code

Version Control: Git and GitHub

4. Prerequisites

Install the following software:

Python 3

Visual Studio Code

Git

Robot Framework

Robot Framework RequestsLibrary

Browser library or SeleniumLibrary (depending on your implementation)

5. Installation Procedure

Step 1: Clone the Repository

git clone https://github.com/sagarsudeep7765-blip/food-donation-testing.git

Step 2: Open the Project Folder

cd food-donation-testing

Step 3: Install Robot Framework

pip install robotframework

Step 4: Install RequestsLibrary for API Testing

pip install robotframework-requests

Step 5: Install SeleniumLibrary for Browser Testing (if used)

pip install robotframework-seleniumlibrary

6. Running Automated Tests

Execute All Robot Framework Test Cases

robot tests/

Execute a Specific Test File

robot tests/login.robot

Generate Test Reports

Robot Framework automatically generates:

report.html

log.html

output.xml

These files contain test execution results and details about passed and failed test cases.

7. API Testing Using Robot Framework

Open the project in Visual Studio Code.

Open the API test file with the .robot extension.

Configure the API endpoint and required test data.

Execute the test using the Robot Framework command.

Verify the API response and status code.

Review the generated test report.
