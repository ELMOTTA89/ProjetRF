*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Resource    ../Ressources/Keyword/common.robot
Resource    ../Ressources/Keyword/Authentification.robot
Resource    ../Ressources/Keyword/AddUser.robot
Resource    ../Ressources/Keyword/SearchUser.robot
Resource    ../Ressources/Keyword/DeleteUser.robot
Resource    ../Ressources/Keyword/Update.robot

*** Variables ***
*** Keywords ***

*** Test Cases ***
TC1:Open browser
    [Documentation]    Open url :OrangeHRM in chrome
    [Tags]    critical_1
    OpenPage
    Close Browser

TC2: Successful login with valid credentials
    [Documentation]    login using valid credentials
    [Tags]    critical_2
    OpenPage
    Successful login with valid credentials
    Close Browser

TC3:Usuccessful login with invalid credentials
    [Documentation]    Unsuccesfull login using valid username & invalid password
    [Tags]    critical_3
    OpenPage
    Usuccessful login with valid username & Password invalid
    Close Browser

TC4:Usuccessful login with empty credentials
    [Documentation]    Unsuccesfull login using empty credentials
    [Tags]    critical_4
    OpenPage
    Usuccessful login with empty credentials
    Close Browser

tc5:Successful AddUser
    [Documentation]    Successful add user
    [Tags]    critical_5
    OpenPage
    Successful login with valid credentials
    Successuful AddUser

Tc6:SearchByUsername
    [Documentation]    Search on User by Username
    [Tags]    crtical_6
    OpenPage
    Successful login with valid credentials
    SearchByUsername
    Close Browser

Tc7:SearchByUserRole
    [Documentation]    Search on User by user role
    [Tags]    critical_7
    OpenPage
    Successful login with valid credentials
    SearchByUserRole
    Close Browser
Tc8:DeleteUser
    [Documentation]    Delete User 
    [Tags]    critical_8
    OpenPage
    Successful login with valid credentials
    DeleteUser
    Close Browser

tc9:SearchByStatus
    [Documentation]    search by status
    [Tags]   critical_9
    OpenPage
    Successful login with valid credentials
    SearchByStatus
    Close Browser 

TC10:UpdateUser
    [Documentation]    Update user
    [Tags]    critical_10
    OpenPage
    Successful login with valid credentials
    UpdateUser
    