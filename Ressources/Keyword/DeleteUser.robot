*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables  ../Locators/AdminPage.py
Variables    ../Locators/DashboardPage.py
Variables    ../JDD/DeleteUser.py

*** Keywords ***
DeleteUser
     Wait Until Element Is Visible    ${AdminIcone}
     Click Element    ${AdminIcone}
     Wait Until Element Is Visible    ${AdminPageUsername}
     Input Text    ${AdminPageUsername}    ${JDDUsernameESSDelete}
     Wait Until Element Is Visible   ${AdminUserRole}
     Click Element    ${AdminUserRole}
     Wait Until Element Is Visible    ${ESSA}
     Click Element    ${ESSA}
     Wait Until Element Is Visible    ${SearchButon}
     Click Element    ${SearchButon}
     Wait Until Element Contains    ${SearchResultats}    ${JDDUsernameESSDelete}
     Wait Until Page Contains Element    ${Trash}
     Click Element    ${Trash}
     Wait Until Element Is Visible    ${YesDelete}
     Click Element    ${YesDelete}
