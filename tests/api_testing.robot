*** Settings ***
Documentation     Starter API tests for the Food Donation and Redistribution Platform.
Library           RequestsLibrary
Library           Collections

*** Variables ***
${API_BASE_URL}    http://127.0.0.1:5000

*** Test Cases ***
API Server Is Reachable
    [Documentation]    Checks that the application health endpoint is reachable.
    ...                Change /health to the real health/status endpoint in your app.
    Create Session    food_app    ${API_BASE_URL}
    ${response}=    GET On Session    food_app    /health    expected_status=any
    Should Be True    ${response.status_code} >= 200 and ${response.status_code} < 500
    Log    Health endpoint returned HTTP ${response.status_code}

Get Donations Endpoint Responds
    [Documentation]    Starter check; replace /api/donations with your actual route.
    Create Session    food_app    ${API_BASE_URL}
    ${response}=    GET On Session    food_app    /api/donations    expected_status=any
    Should Be True    ${response.status_code} in [200, 401, 403, 404]
    Log    Donations endpoint returned HTTP ${response.status_code}

Invalid Donation Request Is Rejected
    [Documentation]    Example validation test. Adjust route and required fields to your API.
    Create Session    food_app    ${API_BASE_URL}
    ${payload}=    Create Dictionary
    ...    food_name=${EMPTY}
    ...    quantity=0
    ${response}=    POST On Session    food_app    /api/donations
    ...    json=${payload}    expected_status=any
    Should Be True    ${response.status_code} >= 400
    Log    Invalid donation request returned HTTP ${response.status_code}
