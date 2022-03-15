*** Settings ***
Library           AppiumLibrary
Library           String
Library           BuiltIn
Resource          ${CURDIR}/Keyword_noises.robot
Resource          ${CURDIR}/Keyword_login_photo.robot
Suite Setup       Open app
Suite Teardown    Close Application



*** Test Case *** 

Secenario : [TURBO] Check instruction type (image/video) / Description is related to image/video (9)
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
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Click done
    Add mileage (km)
    Click Confirm
    Select TURBO Part
    Wait Until Page Contains    Question 1   timeout=5    error=None
    Answer Accerelation
    Next Question 1 
    Wait Until Page Contains    Question 2   timeout=5    error=None 
    Answer Inside cabin
    Next Question
    Wait Until Page Contains    Question 3   timeout=5    error=None
    Answer Close window
    Next Question
    Wait Until Page Contains    Question 4   timeout=5    error=None
    Answer Yes (Can hear since receive new car)
    Next Question
    Wait Until Page Contains    Question 5   timeout=5    error=None
    Answer Not Accept
    Next Question
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

Secenario : [TURBO] After record Show timer and Save audio file to gallery
    Show timer when playing audio
    Save file audio
    Alert save sound to gallery?
    Allow permission to save file
    Go to next step 
    Alert submit result then click Cancel   
    Go to next step
    Alert submit result then click OK  

Secenario : [TURBO] Reason input (max 250 characters) 
    Click need to repair
    Fill reason equal Null
    Fill reason equal less than 250
    When press edit reason
    Fill reason equal 250
    When press edit reason
    Fill reason equal more than 250
    When press delete reason
    Alert cancel delete reason
    When press delete reason
    Alert confirm delete reason 
    Click need to repair
    Fill reason
    When fill reason complete then press CANCEL
    Click need to repair
    Fill reason
    When fill reason complete then press DONE    
    Fill reason success must show result page 
    Click play file to diagnosis result
    Submit result
    Alert confirm to send voice then click OK
    Sleep    18    reason=None
    Select TURBO Part
    Wait Until Page Contains    TURBO    timeout=10    error=None


#Scenario : Re-record after complete checking
#    Select TURBO Part
#    Re-record again
#    Alert confirm to re-record again then click OK
#    Press the record button
#    Press stop the record button
#    Go to next step
#    Alert submit result then click OK  
#    Submit result
#    Alert confirm to send voice then click OK
#    Sleep    8    reason=None
#    Complete Checking

Secenario : [V-BELT] Check instruction type (image/video) / Description is related to image/video (9)
    Click home button then select AppTDEM 
    Enter PIN matched
    Validate VIN
    Fill katashiki
    Click Model
    Swipe Up
    Click done
    Add mileage (km)
    Click Confirm
    Select V-BELT Part
    Can slide right for choose image   
    Can slide left for choose image
    Can press image
    Click Instruction
    Press the record button
    Press stop the record button
    Re-record again
    Alert confirm to re-record again then click Cancel
    Re-record again
    Alert confirm to re-record again then click OK
    Press the record button until 20 seconds    
    Play audio after record complete
    Stop audio after record complete   

Secenario : [V-BELT] After record Show timer and Save audio file to gallery
    Show timer when playing audio
    Save file audio
    Alert save sound to gallery?
    #Allow permission to save file
    Go to next step 
    Alert submit result then click Cancel   
    Go to next step
    Alert submit result then click OK   

Secenario : [V-BELT] Reason input (max 250 characters) 
    Click need to repair
    Fill reason equal Null
    Fill reason equal less than 250
    When press edit reason
    Fill reason equal 250
    When press edit reason
    Fill reason equal more than 250
    When press delete reason
    Alert cancel delete reason
    When press delete reason
    Alert confirm delete reason 
    Click need to repair
    Fill reason
    When fill reason complete then press CANCEL
    Click need to repair
    Fill reason
    When fill reason complete then press DONE    
    Fill reason success must show result page    
    Click play file to diagnosis result
    Submit result
    Alert confirm to send voice then click OK
    Complete Checking
    Close app

Scenario : [Noises] Flow back each page
    Open app
    Domain
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Click Back page to Info
    Click back page to Pin
#   Swipe Up choose menu T-dem
    Click app AppTDEM
    Enter PIN matched
    Validate VIN
    Fill katashiki
    Click Model
    Click done
    Add mileage (km)
    Click Confirm
    Click Back page
    Alert confirm exit vehicle diagnosis
    Click Confirm
    Select V-BELT Part
    Click Back page
    Select V-BELT Part
    Click Instruction V-belt
    Allow record audio
    Click Back page
    Alert confirm exit diagnosis confirmmation
    Select V-BELT Part
    Click Instruction V-belt
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK 
    Click Back page
    Alert submit result then click OK 
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK 
    Click Back page
    Alert confirm exit diagnosis confirmmation
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK 
    Submit result
    Alert confirm to send voice then click OK
    Sleep    2    reason=None
    Select V-BELT Part
    Click Back page
    Click Back page
    Alert confirm exit diagnosis confirmmation
 
