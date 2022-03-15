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


Scenario : Expand / UnExpand
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
    Swipe Up
    Swipe Up
    Swipe Up
    Click done
    Add mileage (km)
    Click Confirm
    Expand and UnExpand group parts

Scenario : Scroll up / Scroll down
    Swipe Up part page
    Swipe Down part page

Scenario : Check text in part page all language    
    Click setting
    Click change language to setting page
    Change language Thai setting page
    Check language Thai in parts page
    Click setting
    Click change language to setting page
    Change language Vietnam setting page
    Check language Vietnam in parts page
    Click setting
    Click change language to setting page
    Change language Bahasa setting page
    Check language Bahasa in parts page
    Click setting
    Click change language to setting page
    Change language Chinese setting page
    Check language Chinese in parts page
    Click setting
    Click change language to setting page
    Change language English setting page
    Check language eng in parts page

Scenario : Verify Hilux and Vios model show valid in each category
    Verify Hilux model show valid in each category
    Verify Vios model show valid in each category

Scenario : In case DB schema change plz retest at noise/check sheet 
    Select V-BELT Part
    Can slide right for choose image   
    Can slide left for choose image
    Can press image
    Click Instruction
    Allow record audio
    Press the record button
    Press stop the record button
    Re-record again
    Alert confirm to re-record again then click Cancel
    Re-record again
    Alert confirm to re-record again then click OK
    Press the record button until 20 seconds    
    Play audio after record complete
    Stop audio after record complete   
    Show timer when playing audio
    Save file audio
    Alert save sound to gallery?
    Allow permission to save file
    Go to next step 
    Alert submit result then click Cancel   
    Go to next step
    Alert submit result then click OK   
    Click need to repair
    Fill reason
    When fill reason complete then press DONE    
    Fill reason success must show result page    
    Submit result
    Alert confirm to send voice then click CANCEL
    Submit result
    Alert confirm to send voice then click OK
    Select Guildeline Judgement    
    Select REAR ENGINE Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Answer Yes
    Click Attachment
    Allow camera
    Take a photo for Attachment
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 3    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Answer Brown
    Next Question
    Wait Until Page Contains    Question 5    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7    timeout=20    error=None
    Answer Oil seal leak from inner
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 8    timeout=20    error=None
    Answer Below L
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 9    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 10    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 11    timeout=20    error=None
    Answer Acknowledged
    Next Question
    Submit Result ?
    Wait Until Page Contains    Yaris    timeout=20    error=None

Scenario : Verify part checked
    Part checked

Scenario : Complete checking disable button / enable button after part checked
    Complete Checking