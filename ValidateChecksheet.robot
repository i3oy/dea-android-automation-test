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
Login
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

Scenario : Validate image form
    Select STEERING Part
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Click Attachment
    Allow camera Attachment
    Take a photo for Attachment
    Click delete image
    Click Attachment
    Take a photo for Attachment
    Click next after take photo success
    
Scenario : Validate single choice
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Answer Steering Wheel
    Answer Horn Pad
    Answer Ornament
    Answer Steering Switch
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Answer Crack
    Click Attachment
    Take a photo for Attachment
    Next Question

Scenario : Validate multiple choice
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Answer Alcohol Gel
    Answer Wet Tissue
    Answer Hand Cream
    Answer Cleaning Cloth
    Answer Hand Cream
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Answer Yes
    Next Question

Scenario : Validate text form
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Input other comment 250 characters
    Delete other comment
    Input other comment more than 250 characters
    Delete other comment
    Answer Test comment


Scenario : Check sheet diagnosis flow - Engine Cylinder Head
    Click home button then select AppTDEM
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
    Select CYLINDER Part
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Answer NG
    Click Attachment
    Take a photo for Attachment
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Answer Over F level
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Abnormality    timeout=5    error=None
    Submit Question  
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=10   error=None
    Sleep    4    reason=None
    
Scenario : Retry Engine Cylinder Head
    Select CYLINDER Part
    Click Retry
    Redo confirmmation
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Answer Uncertain
    Click Attachment
    Take a photo for Attachment
    Next Question 1
    Wait Until Page Contains    No abnormality    timeout=5    error=None
    Submit Question
    Submit Result ?
    Wait Until Page Contains    Hilux    timeout=10   error=None

Scenario : Check sheet diagnosis flow - Seat Wrinkle
    Click home button then select AppTDEM
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
    Select SEAT Part
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Answer Front Left
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    i guideline
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    i guideline
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    i guideline
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    i guideline
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    i guideline
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None
    Answer with cover
    Next Question
    Wait Until Page Contains    Question 8    timeout=5    error=None
    Answer Personal Car
    Next Question
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=10   error=None
    Sleep    2    reason=None
Scenario : Retry Seat Wrinkle
    Select SEAT Part    
    Click Redo
    Redo confirmmation
    Answer Front Right
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    i guideline
    Click delete image
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    i guideline
    Click delete image
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    i guideline
    Click delete image
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    i guideline
    Click delete image
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None
    Answer without cover
    Next Question
    Wait Until Page Contains    Question 8    timeout=5    error=None
    Answer Taxi
    Next Question
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=10   error=None


Scenario : Check sheet diagnosis flow - Steering Wheel
    Click home button then select AppTDEM
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
    Select STEERING Part
    Wait Until Page Contains    Question 1    timeout=5    error=None    
    i guideline
    Click Attachment
    Take a photo for Attachment
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None  
    i guideline
    Answer Cruise Control lever
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None    
    Answer Peel
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None    
    i guideline
    Answer Hand Cream
    Answer Wet Tissue
    Answer Alcohol Gel
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None  
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None  
    Answer Test comment
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None  
    Answer Private Car 
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 8    timeout=5    error=None  
    Answer Test comment
    Click Attachment
    Take a photo for Attachment
    Next Question
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=10   error=None
    Sleep    2    reason=None
Scenario : Retry STEERING Part
    Sleep    2    reason=None
    Select STEERING Part
    Click Redo
    Redo confirmmation
    Sleep    1    reason=None
    Wait Until Page Contains    Question 1    timeout=10    error=None  
    Click delete image
    Click Attachment
    Take a photo for Attachment
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None  
    Answer Other
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None  
    Answer Test comment
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None  
    Answer Other
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None  
    Answer Test comment
    Next Question
    Wait Until Page Contains    Question 6   timeout=5    error=None  
    Answer Cleaning Cloth
    Answer Interior Wax / Cleaning product
    Next Question
    Wait Until Page Contains    Question 7   timeout=5    error=None 
    Next Question
    Wait Until Page Contains    Question 8   timeout=5    error=None 
    Next Question
    Wait Until Page Contains    Question 9   timeout=5    error=None 
    Next Question
    Wait Until Page Contains    Question 10   timeout=5    error=None 
    Next Question
    Submit Result ?
    Wait Until Page Contains    Hilux    timeout=10   error=None

Scenario : Check sheet diagnosis flow - REAR ENGINE
    Click home button then select AppTDEM
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
    Select REAR ENGINE Part
    Wait Until Page Contains    Question 1    timeout=5    error=None
    i guideline
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    i guideline
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    i guideline
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Answer Red
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6   timeout=5    error=None
    i guideline
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7   timeout=5    error=None
    i guideline
    Answer Oil seal leak from inner
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 8   timeout=5    error=None
    Answer F level
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 9    timeout=5    error=None
    i guideline
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 10    timeout=5    error=None
    i guideline
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 11    timeout=5    error=None
    Answer Acknowledged
    Next Question
    Wait Until Page Contains    Question 12    timeout=5    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 13  timeout=5    error=None
    i guideline
    Answer Test comment
    Click Attachment
    Take a photo for Attachment
    Next Question
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=10   error=None
    Sleep    2    reason=None
Scenario : Retry REAR ENGINE
    Select REAR ENGINE Part
    Sleep    1    reason=None
    Click Redo
    Redo confirmmation
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Answer No
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Answer No
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    No abnormality    timeout=5    error=None
    Submit Question
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=10   error=None

Scenario : Check sheet diagnosis flow - Turbo Charger
    Click home button then select AppTDEM
    Enter PIN matched
    Validate VIN
    Fill katashiki
    Click Model
    Swipe Up
    Swipe Up
    Swipe Up
    Swipe Up
    Click done
    Add mileage (km)
    Click Confirm
    Select TURBO Part
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Answer Male
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Answer 30-40
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Answer Accerelation
    Answer Deceleration
    Answer Constant speed
    Answer ldling
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Answer Outside cabin
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Answer Both indoor & Outdoor parking
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Answer Accept
    Next Question
    Wait Until Page Contains    -    timeout=5    error=None
    Submit Question  
    Submit Result ? 
    Wait Until Page Contains    Fortuner    timeout=10   error=None
    Sleep    2    reason=None
Scenario : Retry Turbo Charger
    Select TURBO Part
    Sleep    2    reason=None
    Click Retry
    Redo confirmmation
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Answer Female
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Answer 40-50
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Answer Constant speed
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Answer Both inside and outside cabin
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Answer Outdoor parking
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Answer Not Accept
    Next Question
    Click Instruction
    Allow record audio
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK 
    Wait Until Page Contains    TURBO    timeout=10    error=None
    Submit result
    Submit Result ? 
    Sleep    2    reason=None
    Select TURBO Part


Scenario : Check Sheet Diagnosis Screen - Seat
    Click home button then select AppTDEM
    Enter PIN matched
    Validate VIN
    Fill katashiki
    Click Model
    Click done
    Add mileage (km)
    Click Confirm
    Select SEAT Part
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Answer Front Left
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None
    Answer with cover
    Next Question
    Wait Until Page Contains    Question 8    timeout=5    error=None
    Answer Taxi
    Next Question
    Submit Result ?
    Wait Until Page Contains    Yaris   timeout=5    error=None

Scenario : Retry Seat
    Select SEAT Part
    Click Redo
    Redo confirmmation
    Wait Until Page Contains    Question 1    timeout=5    error=None
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 3    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 4    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 6    timeout=5    error=None
    Next Question
    Wait Until Page Contains    Question 7    timeout=5    error=None
    Answer without cover
    Next Question
    Wait Until Page Contains    Question 8    timeout=5    error=None
    Answer Personal Car
    Next Question
    Submit Result ? 
    Sleep    2    reason=None
    Wait Until Page Contains    Yaris    timeout=5    error=None
