Feature: Edit USER

Scenario: click on Edit button

Given the user is on Admin page
When    the user click on Edit button
Then    the user should be redirected to edit page

Scenario: Edit Password

Given the user is on edit page
When    the user click change password Or change the user name ...
And     the user click on save button
Then    a message appears that edit is edited