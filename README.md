# Automated API and Functional Testing of a Food Donation and Redistribution Platform

## Project overview
This repository contains starter automated tests using Robot Framework for a Food Donation and Redistribution Platform. It includes API test examples using RequestsLibrary and browser-based functional test examples using SeleniumLibrary.

**Important:** These are starter templates. The application URL, API routes, request fields, page paths, and element locators must be changed to match the actual application. The tests cannot fully verify business workflows until the application and its API contract are available.

## Tools
- Python 3
- Robot Framework
- RequestsLibrary (API testing)
- SeleniumLibrary (browser functional testing)
- Google Chrome and a compatible ChromeDriver/Selenium Manager setup
- Git and GitHub

## Project structure
```text
food-donation-testing/
├── tests/
│   ├── api_testing.robot
│   └── functional_testing.robot
├── resources/
├── testdata/
├── requirements.txt
├── .gitignore
└── README.md
```

## Prerequisites
Install Python 3 and Google Chrome. Open a terminal in the project folder.

## Installation
Create and activate a virtual environment (recommended):

Windows:
```bash
python -m venv .venv
.venv\\Scripts\\activate
```

macOS/Linux:
```bash
python3 -m venv .venv
source .venv/bin/activate
```

Install dependencies:
```bash
pip install -r requirements.txt
```

## Configure the application
Start your food donation application separately. The sample files currently assume:
- Application/API base URL: `http://127.0.0.1:5000`
- Health endpoint: `/health`
- Donations endpoint: `/api/donations`
- Login page: `/login`

Replace these examples with the actual host, paths, payload fields, and UI element locators used by your application. Do not commit real passwords, API keys, or private tokens to GitHub.

## Run API tests
```bash
robot tests/api_testing.robot
```

## Run browser functional tests
Make sure the application is running, then execute:
```bash
robot tests/functional_testing.robot
```

## Run all tests
```bash
robot tests/
```

## Test reports
Robot Framework generates these files in the current directory by default:
- `report.html` — summary report
- `log.html` — detailed execution log
- `output.xml` — machine-readable test results

To store results in a separate folder:
```bash
robot --outputdir results tests/
```

## Updating the starter tests
1. Confirm the real API base URL and endpoint paths with your application.
2. Update `${API_BASE_URL}` in `tests/api_testing.robot`.
3. Update the JSON fields and expected HTTP status codes for the real API.
4. Update `${APP_URL}`, `${LOGIN_PATH}`, and Selenium locators in `tests/functional_testing.robot`.
5. Run the tests and inspect `log.html` and `report.html`.

## Current limitations
This starter repository does not include the food donation application itself, real API endpoint definitions, login credentials, or verified UI selectors. Therefore, the sample checks are scaffolding and must be adapted and executed against the actual application before reporting test results.

## Project
**Title:** Automated API and Functional Testing of a Food Donation and Redistribution Platform
