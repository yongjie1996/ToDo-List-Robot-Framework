*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s

*** Test Cases ***
robotframework-testing_selenium
    [Setup]  Run Keywords  Open Browser  https://todo-list-login.firebaseapp.com/#!/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://todo-list-login.firebaseapp.com/#!/
    click    link=Sign in with github
    selectWindow    win_ser_1
    open    https://todo-list-login.firebaseapp.com/__/auth/handler?apiKey=AIzaSyBo5mudU-6ThoikCLnQ4FoI1kWsJLvz0B8&appName=%5BDEFAULT%5D&authType=signInViaPopup&providerId=github.com&eventId=943849266&v=3.9.0
    open    https://todo-list-login.firebaseapp.com/__/auth/handler?code=794928bbad42654af0d5&state=AMbdmDlrNuXgzM1rO4oH5bTgzt1Z9ZVJanHK-3vT6PCyUFOB62e6LLp2PvkwoKrgHs0Qpg7Ss5E75-I23keu12qSIAMYxLY0zTu97h-xbZlck-Ecuipis75cywxvkfmDZlj4F1qJkc72bgieJxhsToIAPNLReImfnLMmahoTlKDhCqLQsrzrF75QdScfQfWuW0iBS05WEuc47leAsaFMIYD_fUFfb9zHKvodPgVdr0W2dg92zIig9jXO-X9aFmIPQwfHHDfU--Z5H4B1neaBz7MqGDSsSd1pmr-x5sFeWZhW6Blfy7o92YRS8WkkhXhu87SGQMRlai2V-i4S
    close    win_ser_1
    selectWindow    win_ser_local
    open    https://todo-list-login.firebaseapp.com/#!/home
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 1
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 2
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 3
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 4
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 5
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 6
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 7
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 8
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::div[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 9
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=//div[2]/div/input
    type    xpath=//div[2]/div/input    Item No. 10
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Todo Lists'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Select an element'])[11]/following::button[1]
    open    https://todo-list-login.firebaseapp.com/#!/
    click    link=Sign in with github
    selectWindow    win_ser_2
    open    https://todo-list-login.firebaseapp.com/__/auth/handler?apiKey=AIzaSyBo5mudU-6ThoikCLnQ4FoI1kWsJLvz0B8&appName=%5BDEFAULT%5D&authType=signInViaPopup&providerId=github.com&eventId=451209515&v=3.9.0
    open    https://todo-list-login.firebaseapp.com/__/auth/handler?code=6489d49127500a2dea67&state=AMbdmDk06T8k8w8WF02sDjLsUeHb6IiBuFjKsBMcWW-v0S7SHX_KszyOAikzTPRIMtB66lbN4ecQLrwIy0blNXeFuTFo0tS6yWAp5cvSySeS_dATCjGY5olf3oTGNGEoriK59S7oXhLB_Sy20aF8UCOjbA6i0L9Ygu03d6Lo5dC-ekH22vTGwNaVx_8SeylkqxwQoAvURYK8W-1eUYPcwicMVjRtWViiA6rqY33ZqEmV4FfGjl7xWH7lV5R4y4U2z3Ajd4CYRHSV9YYU7OPwMDjDK3rAtnONIwgXbWEa10Sy697TC59qSDzE-n0PtomP11LGk6Yzy7e8hon6
    close    win_ser_2
    selectWindow    win_ser_local
    open    https://todo-list-login.firebaseapp.com/#!/home
    click    xpath=//li[10]/div/div[2]/button
    click    xpath=//li[9]/div/div[2]/button
    click    xpath=//li[8]/div/div[2]/button
    click    xpath=//li[7]/div/div[2]/button
    click    xpath=//li[6]/div/div[2]/button
    click    xpath=//li[5]/div/div[2]/button
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Select an element'])[11]/following::button[1]
    [Teardown]  Close Browser

*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
