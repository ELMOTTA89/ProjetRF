*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../Locators/DashboardPage.py
Variables    ../Locators/AdminPage.py
Variables    ../Locators/AddUserPage.py
Variables    ../JDD/AddUser.py

*** Variables ***

*** Keywords ***
Successuful AddUser
    Wait Until Element Is Visible    ${AdminIcon}
    Click Element    ${AdminIcon}
    Wait Until Element Is Visible    ${AdminAddButton}
    Click Element    ${AdminAddButton}
    Wait Until Element Is Visible    ${UserRole}
    Click Element    ${UserRole}
    Wait Until Element Is Visible    ${SelectAdmin}
    Click Element    ${SelectAdmin}
    Wait Until Element Is Visible    ${Status}
    Click Element    ${Status}
    Wait Until Element Is Visible    ${SelectEnable}
    Click Element    ${SelectEnable}
    Wait Until Element Is Visible    ${LEmployeeName}
    Input Text    ${LEmployeeName}    ${JEmployeeName}
    Wait Until Element Is Visible    ${Lusername}
    Input Text    ${Lusername}    ${JuserName}
    Wait Until Element Is Visible    ${Lpassword}
    Input Password    ${Lpassword}    ${Jpassword}
    Wait Until Element Is Visible    ${Lconfirmpassword}
    Input Password    ${Lconfirmpassword}    ${Jpassword}
    Wait Until Element Is Visible    ${Lsavebutton}
    Click Element    ${Lsavebutton}

