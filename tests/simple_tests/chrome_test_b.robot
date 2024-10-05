*** Settings ***
Documentation     Simple example using SeleniumLibrary.
...                https://stackoverflow.com/questions/57189253/no-keyword-with-name-open-browser-found
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://google.fr
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser     ${LOGIN URL}    ${BROWSER}