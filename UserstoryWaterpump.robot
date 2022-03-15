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
Scenario : Water pump story 1
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
    Click done
    Add mileage (km)
    Click Confirm
    Swipe Up part page
    Expand DataCollection
    Select WATER PUMP Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Wait Until Page Contains    Study vehicle    timeout=5    error=None
    Wait Until Page Contains    Park vehicle outside    timeout=5    error=None
    Swipe Up page
    Answer OK
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Wait Until Page Contains    Please record noise.    timeout=5    error=None
    Click Attachment
    Allow camera water pump
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Play audio after record complete
    Stop audio after record complete
    Go to next step 
    Submit Result ? 
    Next Question  
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Wait Until Page Contains    Please confirm coolant level    timeout=5    error=None
    Answer Full
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Wait Until Page Contains    Does the water pump pulley    timeout=5    error=None
    Answer No
    Next Question
    Wait Until Page Contains    WATER PUMP    timeout=5    error=None
    Wait Until Page Contains    Data collection    timeout=5    error=None
    Submit Question 
    Submit Result ? 
    Part checked
    Close app

Scenario : Water pump story 2
    Open app
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
    Click done
    Add mileage (km)
    Click Confirm
    Swipe Up part page
    Expand DataCollection
    Select WATER PUMP Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Wait Until Page Contains    Study vehicle    timeout=5    error=None
    Swipe Up page
    Answer OK
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Wait Until Page Contains    Please record noise.    timeout=5    error=None
    Click Attachment
    Allow camera water pump
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Play audio after record complete
    Stop audio after record complete
    Go to next step 
    Submit Result ? 
    Next Question  
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Answer Full
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Answer Yes
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Answer No
    Next Question
    Wait Until Page Contains    WATER PUMP    timeout=5    error=None
    Wait Until Page Contains    Data collection    timeout=5    error=None
    Submit Question 
    Submit Result ? 
    Part checked
    Close app
    
Scenario : Water pump story 3
    Open app
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
    Click done
    Add mileage (km)
    Click Confirm
    Swipe Up part page
    Expand DataCollection
    Select WATER PUMP Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Wait Until Page Contains    Study vehicle    timeout=5    error=None
    Swipe Up page
    Answer OK
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Wait Until Page Contains    Please record noise.    timeout=5    error=None
    Click Attachment
    Allow camera water pump
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Play audio after record complete
    Stop audio after record complete
    Go to next step 
    Submit Result ? 
    Next Question  
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Answer Full
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Answer Yes
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Answer Yes
    Next Question
    Wait Until Page Contains    Question 6    timeout=240    error=None
    Swipe Up page
    Click Attachment
    #Allow camera water pump
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Play audio after record complete
    Stop audio after record complete
    Go to next step 
    Submit Result ? 
    Next Question  
    Wait Until Page Contains    WATER PUMP    timeout=5    error=None
    Wait Until Page Contains    Data collection    timeout=5    error=None
    Submit Question 
    Submit Result ? 
    Part checked

Scenario : Water pump story 4
    Sleep   10
    Select WATER PUMP Part
    Wait Until Page Contains    WATER PUMP     timeout=20    error=None
    Click Retry
    Redo confirmmation
    Wait Until Page Contains    Question 1    timeout=240    error=None
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=240   error=None
    Next Question
    Wait Until Page Contains    Question 3    timeout=240    error=None
    Next Question
    Wait Until Page Contains    Question 4    timeout=240    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=240    error=None
    Next Question
    Wait Until Page Contains    Question 6    timeout=240    error=None
    Next Question
    Wait Until Page Contains    WATER PUMP    timeout=5    error=None
    Submit result
    Alert confirm to send voice then click OK


Scenario : Water pump story 5
    Select WATER PUMP Part
    Wait Until Page Contains    WATER PUMP    timeout=240    error=None
    Preview
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Next Question        
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Next Question        
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Next Question        
    Wait Until Page Contains    Question 5    timeout=20    error=None
    Next Question 
    Wait Until Page Contains    Question 6    timeout=240    error=None
    Wait Until Page Contains    PREVIOUS    timeout=240    error=None




