*** Settings ***
Library           AppiumLibrary
Library           String
Library           BuiltIn
Resource          ${CURDIR}/Keyword_Storychecksheet.robot
Resource          ${CURDIR}/Keyword_login_photo.robot
Resource          ${CURDIR}/Keyword_noises.robot
Suite Setup       Open app
Suite Teardown    Close Application


*** Test Case *** 

Scenario : Story 17 : Acceptance 17-3
    Domain
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    VIN-No : Story 17 : Acceptance 17-3
    Click Confirm
    Select SHOCK Part
    Click checking instruction
    Click select side FR
    Click checking instruction
    Allow camera
    Take a photo 
    Next Question 1  
    Alert submit result then click OK   
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/titleHeader    timeout=20
    Page Should Contain Text    Leak
    Submit result
    Alert submit result then click OK  
    Click select side BR  
    Click checking instruction
    Take a photo 
    Next Question 1  
    Alert submit result then click OK   
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/titleHeader    timeout=20
    Page Should Contain Text    Leak
    DISAGREE Button
    Click select Leakage
    Swipe Up
    Click done
    Sleep  0.5
    Page Should Contain Text    Rank3 : Oil seepage (Moderate)
    Click judgement result
    Fill comment
    Click repair method
    Fill comment repair method
    Next Question 1
    Submit result
    Alert submit result then click OK
    Submit result
    Alert submit result then click OK
    Part checked
    Complete Checking
    Alert complete checking
    Close app

Scenario : Story 18 : Acceptance 18-1
    Open app
    Domain
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    VIN-No : Story 17 : Acceptance 17-3
    Click Confirm
    Select SHOCK Part
    Click checking instruction
    Click select side BR 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/titleHeader    timeout=20
    Swipe Up page
    Page Should Contain Text    REDO 

Scenario : Story 19 : Acceptance 19-1
    Click Redo
    Redo confirmmation
    Click checking instruction
    Allow camera
    Take a photo
    Next Question 1
    Alert submit result then click OK 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/titleHeader    timeout=20
    Page Should Contain Text    SHOCK 
    Submit result
    Alert submit result then click OK
    Submit result
    Alert submit result then click OK
    Part checked
    Complete Checking
    Alert complete checking





    






