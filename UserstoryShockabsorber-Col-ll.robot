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

Scenario : Acceptance 62-3
    Domain
    Swipe Up
    Click done 
    User id valid
    Password valid
    Login button
    Enter PIN matched
    VIN-No : Acceptance 62-3
    Click Confirm
    Expand DataCollection
    Select SHOCK Part
    Can slide right for choose image
    Can slide left for choose image
    Can press image
    Click Instruction
    Click select side FR 
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Click view 3
    Click checking instruction
    Take a photo
    Swipe Up page
    Click select Leakage
    Swipe Up
    Click done
    Click guideline Leakage
    Select picture Highlight
    Click guideline Finger
    Add finger Image
    Take a photo for leakage LV 1-2 
    Swipe Up page
    Fill comment
    Click next after take photo success
    Wait Until Page Contains    3/3    timeout=30    error=None
    Click back
    Click checking instruction
    Click select side BR
    Click view 1
    Click checking instruction
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Swipe Up page
    Click select Leakage
    Swipe Up
    Swipe Up
    Swipe Up
    Click done
    Swipe Up page
    Fill comment
    Click next after take photo success
    Wait Until Page Contains    2/2    timeout=10    error=None
    Click submit
    Alert submit result then click OK 
    Part checked
    
Scenario : Acceptance 63-1
    Select SHOCK Part
    Click Instruction
    Click select side FR 
    Wait Until Page Contains Element     id=com.tdem.tdiag.dev:id/imvRemove     timeout=20    error=None
    Swipe Up page
    Page Should Contain Text    Rank1 : Oil leak and rearch a bracket or...
    Wait Until Page Contains Element     id=com.tdem.tdiag.dev:id/imvRemoveHighlight     timeout=20    error=None
    Wait Until Page Contains Element     id=com.tdem.tdiag.dev:id/imvRemoveFinger     timeout=20    error=None
    Swipe Up page
    Page Should Contain Text    Judgement
    Swipe Down page
    Swipe Down page
    Click back

Scenario : Acceptance 64-1
    Click select side FR
    Swipe Up page
    Click select Leakage
    Swipe Up
    Swipe Down
    Click done
    Swipe Up page
    Fill comment
    Click next after take photo success
    Wait Until Page Contains    3/3    timeout=10    error=None
    Click submit
    Alert submit result then click OK 
    Part checked
    
