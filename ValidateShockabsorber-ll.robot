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

Scenario : Verify text in instruction page
    Domain
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Validate VIN
    Fill katashiki
    Click Model
    Click done
    Add mileage (km)
    Click Confirm
    Select SHOCK Part
    Wait Until Element Is Visible    com.tdem.tdiag.dev:id/titleHeader   timeout=10
    Page Should Contain Text    SHOCK 
    Page Should Contain Text    ABSORBER 
    Page Should Contain Text    INSTRUCTION
    Page Should Contain Text    Need to collect many shock absorber
    Page Should Contain Text    data to create a database for AI 
    Page Should Contain Text    learning. 
    Page Should Contain Text    Please support to take a photo of
    Page Should Contain Text    Leakage (NG) and No-Leakage (OK) during actual dealer's operation as much as possible.

Scenario : Slide left / right image
    Can slide right for choose image
    Can slide left for choose image

Scenario : Click image for full screen / Click close image
    Can press image

Scenario : Verify next button
    Click checking instruction

Scenario : Verify select side
    Click select side FR
    
Scenario : Verify instruction FR
    Can slide right for choose image
    Can slide left for choose image
    Click checking instruction

Scenario : Verify take photo / cancel / retake / submit
    Allow camera
    Take a photo 

Scenario : Verify photo after take photo complete 
    Click delete image
    Alert confirm delete image
    Take a photo 
    Next Question 1  

Scenario : Pupup upload result
    Alert submit result then click OK   

Scenario : Verify flow Leak
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/titleHeader    timeout=20
    Page Should Contain Text    Leak

Scenario : Verify need to repair button change text is DISAGREE
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/titleHeader    timeout=20
    Page Should Contain Text    DISAGREE

Scenario : Verify text Dianosis Tool page
    Page Should Contain Text    Diagnosis result
    Page Should Contain Text    Shock Absorber
    Page Should Contain Text    Checking
    Page Should Contain Text    Repair Instructions
    Page Should Contain Text    Model
    Page Should Contain Text    VIN
    Page Should Contain Text    DISAGREE
    Page Should Contain Text    DONE

Scenario : Verify DISAGREE button
    DISAGREE Button
    Click select Leakage
    Swipe Up
    Click done
    Sleep  0.5
    Page Should Contain Text    Rank3 : Oil seepage (Moderate)

Scenario : Verify judement result
    Click judgement result
    Fill comment
    Click repair method
    Fill comment repair method
    Next Question 1

Scenario : Verify edit judgement result
    Click edit judgement result
    Edit Fill comment
    Next Question 1

Scenario : Verify delete judgement result
    Click delete judgement result
    Alert confirm delete reason
    Sleep  1 
    Page Should Contain Text   DISAGREE
    Sleep  3

Scenario : Click done result page
    Submit result

Scenario : Popup result page
    Page Should Contain Text   Submit Result?
    Page Should Contain Text   Confirm to send a result
    Page Should Contain Text   OK
    Page Should Contain Text   Cancel
    Alert submit result then click OK  
    Page Should Contain Text   Please select side

Scenario : Click submit select side page
    Submit result
    Alert submit result then click OK

Scenario : Part complete checking
    Part checked
    
Scenario : Complete checking
    Complete Checking
    Alert complete checking




    






