*** Settings ***
Documentation     Starter browser-based functional tests.
Library           SeleniumLibrary

*** Variables ***
${APP_URL}          http://127.0.0.1:5000
${BROWSER}          Chrome
${LOGIN_PATH}       /login

*** Test Cases ***
Application Home Page Opens
    [Documentation]    Opens the application and checks that a page is displayed.
    Open Browser    ${APP_URL}    ${BROWSER}
    Wait Until Page Contains Element    xpath=//body    timeout=15s
    ${page_title}=    Get Title
    Log    Opened application page: ${page_title}
    Close Browser

Login Page Opens
    [Documentation]    Starter check; change LOGIN_PATH to your actual login page.
    Open Browser    ${APP_URL}${LOGIN_PATH}    ${BROWSER}
    Wait Until Page Contains Element    xpath=//body    timeout=15s
    ${current_url}=    Get Location
    Should Contain    ${current_url}    ${LOGIN_PATH}
    Close Browser

*** Keywords ***
# Add application-specific keywords here, for example:
# Login With Valid Credentials
#     [Arguments]    ${email}    ${password}
#     Input Text    id=email    ${email}
#     Input Password    id=password    ${password}
#     Click Button    id=login
