*** Settings ***
Library           AppiumLibrary
Library           String
Resource          ${CURDIR}/Keyword_login_photo.robot
Resource          ${CURDIR}/Keyword_noises.robot
Suite Setup       Open app
Suite Teardown    Close Application


*** Test Case ***

Scenario : P7 Vios|Rear Left(BL)|Leakage Level 2
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
    Select SHOCK Part
    #Can slide right for choose image
    #Can slide left for choose image
    #Can press image
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
    Swipe Up page
    Wait Until Page Contains    2/2    timeout=10    error=None
    Click submit
    Close app

Scenario : P8 Corolla (Old) Cross|Rear Rigth (BR)|Leakage Level 3
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
    Click done
    Add mileage (km)
    Click Confirm
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

Scenario : P9 Avanza| Rear Rigth (BR)|Leakage Level 3
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

Scenario : P10 C-HR|Front Left (FL)|Leakage Level 4
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
    Click done
    Add mileage (km)
    Click Confirm
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
    Swipe Down
    Click done
    Swipe Up page
    Click edit text comment
    Fill comment
    Click next after take photo success
    Swipe Up page
    Wait Until Page Contains    3/3    timeout=10    error=None
    Click submit 
    Close app

Scenario : P11 Camry|Front Right(FR)|No Leak
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
    Wait Until Page Contains    3/3    timeout=10    error=None
    Click submit
    Close app

Scenario : P12 Camry|Rear Left (BL)|Leakage Level 3
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

Scenario : P13 Camry|Rear Rigth (BR)|Leakage Level 4
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
    Click done
    Add mileage (km)
    Click Confirm
    Select SHOCK Part
    Sleep    6    reason=None
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

