*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
OrangeHRM login and logout
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome 
        #    Go to url using chrome browser
    Wait Until Page Contains    Login
    Sleep    2 seconds
        #    Waiting for internet connection
    Input Text   //input[@placeholder='Username']    Admin
    Input Text    //input[@placeholder='Password']    admin123
    Click Button    //button[@type='submit']
        #    Input Username password then submit.
    Wait Until Page Contains Element    //p[@class='oxd-userdropdown-name']
        #    Waiting for Profile option in dashboard.
    Click Element    //p[@class='oxd-userdropdown-name']
    Sleep    2 seconds
        #    Open dropdown for profile menu
    Click Element    //a[normalize-space()='Logout']
        #    Logout from dashboard.
    Wait Until Page Contains    Login
        #    Back to login page.
    Sleep    2 seconds
    Close Browser

OrangeHRM add user
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Wait Until Page Contains    Login
    Sleep    2 seconds
        #    Go to url using chrome browser
    Input Text   //input[@placeholder='Username']    Admin
    Input Text    //input[@placeholder='Password']    admin123
    Click Button    //button[@type='submit']
        #    Input Username password then submit.
    Wait Until Page Contains Element    //a[@class='oxd-main-menu-item active']
    Sleep    3 seconds
        #    Waiting for dashboard menu
    Click Element    //li[1]//a[1]//span[1]
    Sleep    2 seconds
    Wait Until Page Contains Element    //button[normalize-space()='Add']
    Sleep    3 seconds
        #    Admin menu opened
    Click Element    //button[normalize-space()='Add']
    Wait Until Page Contains Element    //button[@type='submit']
    Sleep    2 seconds
        #    Go to add user page
    Click Element    //div[@class='oxd-select-text-input'][normalize-space()='-- Select --']
    Sleep    3 seconds
        #    Open dropdown for user role.
    Close Browser


