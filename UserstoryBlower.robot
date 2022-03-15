*** Settings ***
Library           AppiumLibrary
Library           String
Library           BuiltIn
Resource          ${CURDIR}/Keyword_Storychecksheet.robot
Resource          ${CURDIR}/Keyword_login_photo.robot
Resource          ${CURDIR}/Keyword_noises.robot
Suite Setup       Open app
Suite Teardown    Close Application


*** Test Cases ***

Scenario : AC BLOWER MOTOR story 6
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
    Swipe Up part page
    Swipe Up part page
    Select BLOWER Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    #Wait Until Page Contains    What is fan speed that noise occur? (able to answer more than one condition) 1 = Lowest speed    timeout=20    error=None
    Answer CheckBox 3
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=20    error=None
    #Wait Until Page Contains    What is fan maximum speed available on car? 1 = Lowest speed    timeout=5    error=None
    Answer Redio 4
    Next Question
    Wait Until Page Contains    Question 3    timeout=20    error=None
    #Wait Until Page Contains    Record noise from worst condition of fan speed What is worst noise fan speed?    timeout=5    error=None
    Answer Redio 6
    Next Question
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Wait Until Page Contains    Please set fan speed at worst condition then recording noise.    timeout=5    error=None
    #i guideline water pump
    #Can slide right for choose image   
    #Can slide left for choose image
    #Can press image
    #Click Back page
    Click Attachment
    Allow camera water pump
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Go to next step 
    Submit Result ? 
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Click Attachment
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Go to next step 
    Submit Result ? 
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Answer Accept
    Next Question
    Wait Until Page Contains    AC BLOWER    timeout=5    error=None
    Wait Until Page Contains    No abnormality    timeout=5    error=None
    Submit Question
    Submit Result ?
    Part checked
    Close app
 

Scenario : AC BLOWER MOTOR story 7
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
    Swipe Up
    Swipe Up
    Click done
    Add mileage (km)
    Click Confirm
    Swipe Up part page
    Swipe Up part page
    Select BLOWER Part
    Wait Until Page Contains    Question 1    timeout=5    error=None
    #Wait Until Page Contains    What is fan speed that noise occur? (able to answer more than one condition) 1 = Lowest speed    timeout=20    error=None
    Answer CheckBox 2
    Answer CheckBox 6
    Answer CheckBox 7
    Answer CheckBox 8
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    #Wait Until Page Contains    What is fan maximum speed available on car? 1 = Lowest speed    timeout=5    error=None
    Answer Redio 3
    Answer Redio 8
    Answer Redio 3
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    #Wait Until Page Contains    Record noise from worst condition of fan speed What is worst noise fan speed?    timeout=5    error=None
    Answer Redio 6
    Answer Redio 3
    Answer Redio 6
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    #Wait Until Page Contains    Please set fan speed at worst condition then recording noise.    timeout=5    error=None
    Click Attachment
    Allow camera water pump
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Go to next step 
    Submit Result ? 
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Click Attachment
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Go to next step 
    Submit Result ? 
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Answer Not Accept
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None
    Click Attachment
    Wait Until Page Contains    Audio    timeout=5    error=None
    Press the record button
    Press stop the record button
    Go to next step 
    Submit Result ? 
    Next Question
    Submit Result ? 
    Part checked

Scenario : AC BLOWER MOTOR story 8
    Swipe Up part page
    Swipe Up part page
    Select BLOWER Part
    Wait Until Page Contains    Question 7    timeout=20    error=None
    Click Redo
    Redo confirmmation
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Answer CheckBox 2
    Answer CheckBox 6
    Answer CheckBox 7
    Answer CheckBox 8
    Answer CheckBox 5
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Answer Redio 5
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Answer Redio 4
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None
    Next Question
    Submit Result ?
    Part checked

Scenario : AC BLOWER MOTOR story 9
    Swipe Up part page
    Swipe Up part page
    Select BLOWER Part
    Wait Until Page Contains    Question 7    timeout=5    error=None
    Play audio under Question
    Stop audio under Question
    Preview2
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Radio button disable
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Radio button disable
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None


