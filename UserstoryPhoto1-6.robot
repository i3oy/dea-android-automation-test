*** Settings ***
Library           AppiumLibrary
Library           String
Resource          ${CURDIR}/Keyword_login_photo.robot
Resource          ${CURDIR}/Keyword_noises.robot
Suite Setup       Open app
Suite Teardown    Close Application


*** Test Case ***
Scenario : P1 Hilux|Front Left (FL)|Leakage Level 1
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
    Expand DataCollection
    Select SHOCK Part
    #Can slide right for choose image
    #Can slide left for choose image
    #Can press image
    Click Instruction
    Swipe Up page
    Click select side FL
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click view 2
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
    Click edit text comment
    Fill comment
    Click next after take photo success
    Swipe Up page
    Wait Until Page Contains    2/2    timeout=10    error=None
    Click submit
    Sleep    2    reason=None
    Close app

Scenario : P2 Innova|Front Left (FR)|Leakage Level 2
    Open app
    Domain
    Swipe Up
    Click done 
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Validate VIN
    Fill katashiki
    Click Model
    Swipe Up
    Swipe Up
    Swipe Up
    Swipe Up
    Swipe Up
    Click done
    Add mileage (km)
    Click Confirm
    Select SHOCK Part
    Click Instruction
    Click select side FR 
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Click select Leakage
    Swipe Up
    Swipe Up
    Click done
    Swipe Up page
    Click guideline Leakage
    Select picture Highlight
    Click guideline Finger
    Add finger Image
    Take a photo for leakage LV 1-2
    Swipe Up page
    Click edit text comment
    Fill comment
    Click next after take photo success
    Wait Until Page Contains    2/2    timeout=10    error=None
    Click submit
    Sleep    2    reason=None
    Close app

Scenario : P3 Hilux|Rear Left (BL)|Leakage Level 3
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
    Select SHOCK Part
    Click Instruction
    Swipe Up page
    Click select side BL   
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Click select Leakage
    Swipe Up
    Swipe Up
    Swipe Up
    Click done
    Swipe Up page
    Click edit text comment
    Fill comment
    Click next after take photo success
    Swipe Up page
    Wait Until Page Contains    2/2    timeout=10    error=None
    Click submit
    Close app

Scenario : P4 Fortuner/Innova|Rear Rigth (BR)|Leakage Level 4
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
    Swipe Up
    Click done
    Add mileage (km)
    Click Confirm
    Sleep    2    reason=None
    Select SHOCK Part
    Click Instruction
    Click select side BR   
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Click select Leakage
    Swipe Down
    Click done
    Swipe Up page
    Click edit text comment
    Fill comment
    Click next after take photo success
    Swipe Up page
    Wait Until Page Contains    2/2    timeout=10    error=None
    Click submit
    Sleep    2    reason=None
    Close app

Scenario : P5 Yaris|Front Left(FL)|No Leak
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
    Click done
    Add mileage (km)
    Click Confirm
    Sleep    2    reason=None
    Select SHOCK Part
    Click Instruction
    Swipe Up page
    Click select side FL   
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Swipe Up page
    Click view 3
    Click checking instruction
    Take a photo
    Swipe Up page
    Click select Leakage
    Click done
    Swipe Up page
    Click edit text comment
    Fill comment
    Click next after take photo success
    Swipe Up page
    Wait Until Page Contains    3/3    timeout=10    error=None
    Click submit
    Sleep    2    reason=None
    Close app

Scenario : P6 Avanza/Corolla (Old) Cross|Front Right(FR)|Leakage Level 1
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
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Swipe Down
    Click done
    Add mileage (km)
    Click Confirm
    Sleep    5    reason=None
    Select SHOCK Part
    Click Instruction
    Click select side FR
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Swipe Up page
    Click view 3
    Click checking instruction
    Take a photo
    Swipe Up page
    Click select Leakage
    Swipe Up
    Click done
    Click guideline Leakage
    Select picture Highlight
    Swipe Up page
    Click guideline Finger
    Add finger Image
    Take a photo for leakage LV 1-2  
    Swipe Up page
    Click edit text comment
    Fill comment
    Click next after take photo success
    Swipe Up page
    Wait Until Page Contains    3/3    timeout=10    error=None
    Click submit
