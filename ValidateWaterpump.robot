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
Scenario : Select model (Vios) want enable Water pump 
    Domain
    Swipe Down
    Swipe Down
    Swipe Down
    Click done 
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Validate VIN
    Fill katashiki
    Click Model
    Swipe Up
    Click done
    Add mileage (km)
    Click Confirm
    Sleep    1    reason=None
    The water pump does not have this model

Scenario : Select model (Camry) want disable Water pump 
    Click Back page
    Alert confirm exit vehicle diagnosis
    Click Model
    Swipe Up
    Click done
    Click Confirm
    Swipe Up part page
    The part water pump have to this model

Scenario : Water pump not checked 
    Part not checked

Scenario : Click icon i and close i and slide left right
    Select WATER PUMP Part
    i guideline water pump
    Can slide right for choose image   
    Can slide left for choose image
    Can press image
    Click Back page

Scenario : Check text Question 1
    Wait Until Page Contains    Please prepare vehicle following the instruction then record the noise.    timeout=5    error=None
    
Scenario : Check text attach audio
    Wait Until Page Contains    Attach audio    timeout=5    error=None

Scenario : Disable button next if don't attach audio
    Next Question 1  
    wait Until page Does Not Contain    Question 2     timeout=5    error=None

Scenario : Countdown time
    Click Attachment
    Allow camera water pump
    Sleep    1    reason=None
    Show timer when record audio of water pump

Scenario : Press play Record 
    Press the record button

Scenario : Press stop Record 
    Press stop the record button

Scenario : Re-Record
    Re-record again
    Alert confirm to re-record again then click Cancel
    Re-record again
    Alert confirm to re-record again then click OK
    Press the record button
    Press stop the record button

Scenario : Save file audio
    Save file audio
    Alert save sound to gallery?
    Allow permission to save file

Scenario : Play and stop audio to record page
    Play audio after record complete
    Stop audio after record complete  
    Show timer when playing audio for water pump
    Go to next step 
    Submit Result ? 

Scenario : Play file audio and stop audio
    Play audio under Question
    Stop audio under Question

Scenario : Delete file audio
    Delete file audio
    wait Until Page Does Not Contain Element    id=id=com.tdem.tdiag.uat:id/btnPlay   timeout=5    error=None
    Click Attachment
    Press the record button
    Press stop the record button
    Go to next step 
    Submit Result ? 

Scenario : Enable button next if attach audio
    Wait Until Page Contains    Question 1     timeout=5    error=None
    Next Question 1

Scenario : Checking answer Question 2 
    Wait Until Page Contains    Question 2     timeout=5    error=None
    Wait Until Page Contains    Please confirm coolant level in reservoir?     timeout=5    error=None
    Wait Until Page Contains    Please confirm coolant level in reservoir?     timeout=5    error=None
    wait Until page Contains    Full     timeout=5    error=None
    wait Until page Contains    Between Full     timeout=5    error=None
    wait Until page Contains    Lower than Min     timeout=5    error=None

Scenario : Checking single choice
    Answer Lower than Min
    Answer Full
    Validate single chioce
    Next Question
    Answer No
    wait Until page Contains    WATER PUMP     timeout=5    error=None
    wait Until page Contains    Repair Instructions     timeout=5    error=None






    














