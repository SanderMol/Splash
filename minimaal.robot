*** Settings ***
Library    Browser

*** Test Cases ***
Test Browser Library
    New Browser    headless=false
    New Page    https://www.example.com
    # Close Browser