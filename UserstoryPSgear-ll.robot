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

Scenario : Acceptance 20 -1 
    Domain
    Swipe Up
    Click done 
    User id valid
    Password valid
    Login button
    Enter PIN matched
    VIN-No : Acceptance 20 -1
    Click Confirm
    Expand Guideline
    Select POWER STREERING Part
    Wait Until Page Contains    Question 1    timeout=30    error=None
    Wait Until Page Contains    Reservoir tank confirmation (Outside)    timeout=30    error=None
    Wait Until Page Contains    Normal    timeout=30    error=None
    Answer Dirty
    Click Attachment
    Allow camera
    Take a photo for Attachment
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=30    error=None
    Wait Until Page Contains    Reservoir tank confirmation (Inside)    timeout=30    error=None
    Wait Until Page Contains    Normal    timeout=30    error=None
    Answer Contamination
    Swipe Up page
    Input Customer contaminants
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 3    timeout=30    error=None
    Wait Until Page Contains    Please confirm PS oil level.   timeout=30    error=None
    Answer No PS oil in tank
    Swipe Up page
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 4    timeout=30    error=None
    Wait Until Page Contains    Did customer complain about Freeplay (Gata)?      timeout=30    error=None
    Answer Yes
    Next Question
    Wait Until Page Contains    Question 5    timeout=30    error=None
    Wait Until Page Contains    Which side found freeplay?    timeout=30    error=None
    Wait Until Page Contains    Vehicle preparation confirmation    timeout=30    error=None
    Answer Only Left
    Next Question
    Wait Until Page Contains    Question 6    timeout=30    error=None
    Wait Until Page Contains    Please remove Rack boot and confirm rack bar rust condition    timeout=30    error=None
    Answer Rust
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7    timeout=30    error=None
    Wait Until Page Contains    Please replace PS Gear    timeout=30    error=None
    Answer OK
    Next Question
    Wait Until Page Contains    Question 8    timeout=30    error=None
    Wait Until Page Contains    Did customer complain about abnormal noise?        timeout=30    error=None
    Answer No
    Click Attachment
    Allow audio
    Press the record video button
    Press the stop video button
    Click submit
    Next Question
    Wait Until Page Contains    Question 9    timeout=30    error=None
    Wait Until Page Contains    Is customer complain about heavy?    timeout=30    error=None
    Answer Yes
    Next Question
    Wait Until Page Contains    Question 10    timeout=30    error=None
    Wait Until Page Contains    Which side found heavy?    timeout=30    error=None
    Answer Only Left
    Next Question
    Wait Until Page Contains    Question 11    timeout=30    error=None
    Wait Until Page Contains    Please input Steering Torque (Nm)   timeout=30    error=None
    Input Customer complaint 20
    Next Question
    Wait Until Page Contains    Question 12    timeout=30    error=None
    Wait Until Page Contains    Is customer complain about leakage?    timeout=30    error=None
    Answer Yes
    Next Question
    Wait Until Page Contains    Question 13    timeout=30    error=None
    Wait Until Page Contains    Leakage     timeout=30    error=None
    Wait Until Page Contains    oil seepage confirmation     timeout=30    error=None
    Answer Leakage
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    POWER   timeout=60    error=None
    Wait Until Page Contains    Abnormality   timeout=30    error=None
    Wait Until Page Contains    Clean   timeout=30    error=None
    Wait Until Page Contains    Replace Oil   timeout=30    error=None
    Wait Until Page Contains    Refill Oil    timeout=30    error=None
    Wait Until Page Contains    Replace "LH Rack end"    timeout=30    error=None
    Wait Until Page Contains    Replace Power steering gear    timeout=30    error=None
    Wait Until Page Contains    Replace Power steering gear     timeout=30    error=None
    Click need to repair
    Fill reason
    Fill repair method
    When fill reason complete then press DONE    
    Fill reason success must show result page
    Submit Question 
    Submit Result ?

Scenario : Acceptance preview 20-2
    Sleep  10
    Select POWER STREERING Part
    Wait Until Page Contains    POWER    timeout=240    error=None
    Swipe Up page
    Wait Until Page Contains    Reason    timeout=5
    Wait Until Page Contains    pair    timeout=5
    Wait Until Page Contains    Repair Method    timeout=5
    Wait Until Page Contains    repair    timeout=5
    Preview
    Sleep  3
    Next Question 1
    Preview next PSGear
    Click Back page

Scenario : Acceptance redo 20-3
    Click Redo checksheet
    Redo confirmmation
    Wait Until Page Contains    Question 1    timeout=30    error=None
    Wait Until Page Contains    Reservoir tank confirmation (Outside)    timeout=30    error=None
    Sleep  5
    Answer Normal
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=30    error=None
    Wait Until Page Contains    Reservoir tank confirmation (Inside)    timeout=30    error=None
    Sleep  3
    Answer Normal 
    Next Question
    Wait Until Page Contains    Question 3    timeout=30    error=None
    Wait Until Page Contains    Please confirm PS oil level.   timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 4    timeout=30    error=None
    Wait Until Page Contains    Did customer complain about Freeplay (Gata)?   timeout=30    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 5    timeout=30    error=None
    Wait Until Page Contains    Did customer complain about abnormal noise?    timeout=30    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 6    timeout=30    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 7    timeout=30    error=None
    Answer No
    Next Question
    Wait Until Page Contains    POWER     timeout=30    error=None
    Wait Until Page Contains    Refill Oil     timeout=30    error=None
    Submit Question 
    Submit Result ? 
    Part checked
