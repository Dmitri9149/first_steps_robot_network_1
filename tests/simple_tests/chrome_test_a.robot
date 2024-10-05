*** Settings ***
Documentation     Simple example using SeleniumLibrary. 
...    https://stackoverflow.com/questions/57189253/no-keyword-with-name-open-browser-found

Library           SeleniumLibrary


*** Test Cases ***
Valid Login
    Open Browser     https://google.fr    chrome