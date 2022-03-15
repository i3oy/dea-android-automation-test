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

Scenario : 1 [Story 18] HILUX Thailand
    Domain 
    Swipe Down
    Click done
    User dev Story checksheet TH
    Password dev Story checksheet TH
    Login button
    Enter PIN matched
    Allow Location
    VIN-No : Story 18 : Scenario 1 : Thailand
    Katashiki : Story 18 : Scenario 1 : Thailand
    Click Confirm
    Expand Guideline
    Select REAR ENGINE Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Answer Yes
    Click Attachment
    Allow camera
    Take a photo for Attachment
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=20    error=None
    Answer Yes
    Swipe Up page
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
    Swipe Up page
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
    Swipe Up page
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
    Swipe Up page
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 10    timeout=20    error=None
    Answer Yes
    Swipe Up page
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 11    timeout=20    error=None
    Answer Acknowledged
    Next Question
    Wait Until Page Contains    Question 12    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 13    timeout=20    error=None
    Swipe Up page
    Input Customer contaminants
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Submit Result ?
    Wait Until Page Contains    Hilux    timeout=240    error=None

Scenario : 2 [Story 18] HILUX Malaysia
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    1    reason=None
    VIN-No : Story 18 : Scenario 2 : Malaysia
    Katashiki : Story 18 : Scenario 2 : Malaysia
    Click Confirm
    Expand Guideline
    Select REAR ENGINE Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=20    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 3    timeout=20    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Answer Red
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 5    timeout=20    error=None
    Swipe Up page
    Answer No
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 6    timeout=20    error=None
    Answer No
    Click Attachment
    Take a photo for Attachment
    Next Question
    Submit Question
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=100    error=None
    Part checked


Scenario : 3 [Story 18] Hilux Thailand
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    1    reason=None
    VIN-No : Story 18 : Scenario 3 : Thailand
    Katashiki : Story 18 : Scenario 3 : Thailand
    Click Confirm
    Expand Guideline
    Select REAR ENGINE Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment
    Next Question 1
    Wait Until Page Contains    Question 2    timeout=20    error=None
    Answer No
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 3    timeout=20    error=None
    Answer Yes
    Click Attachment
    #Allow camera
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Answer Gray
    Next Question
    Wait Until Page Contains    Question 5    timeout=20    error=None
    Swipe Up page
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
    Swipe Up page
    Answer Tight plug
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    No abnormality    timeout=20    error=None
    Submit Question
    Submit Result ?
    Wait Until Page Contains    Hilux    timeout=100    error=None
    Part checked

Scenario : 4 [Story 19] YARIS Thailand
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    1    reason=None
    VIN-No : Story 19 : Scenario 4 : Thailand
    Katashiki : Story 19 : Scenario 4 : Thailand
    Click Confirm
    Swipe Up part page
    Expand DataCollection
    Select STEERING Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=20    error=None
    Answer Steering Wheel
    Next Question
    Wait Until Page Contains    Question 3    timeout=20    error=None
    Answer Peel
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Answer Air Freshener / Perfume
    Answer Hand Cream
    Answer Cleaning Cloth
    Swipe Up page
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 5    timeout=20    error=None
    Answer Yes
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 6    timeout=20    error=None
    Answer Private Car
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 7    timeout=20    error=None
    Answer Test comment
    Next Question
    Submit Result ? 
    Sleep    1    reason=None
    Wait Until Page Contains    Yaris    timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.
    
Scenario : 5 [Story 19] FORTUNER Thailand
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    1    reason=None
    VIN-No : Story 19 : Scenario 5 : Thailand
    Katashiki : Story 19 : Scenario 5 : Thailand
    Click Confirm
    Expand DataCollection
    Select STEERING Part
    Wait Until Page Contains    Question 1    timeout=20    error=None
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=20    error=None
    Swipe Up page
    Answer Other
    Input Customer contaminants
    Swipe Up page
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 3    timeout=20    error=None
    Answer Peel
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 4    timeout=20    error=None
    Answer Alcohol Gel
    Next Question
    Wait Until Page Contains    Question 5    timeout=20    error=None
    Answer Yes
    Next Question
    Wait Until Page Contains    Question 6    timeout=20    error=None
    Answer Not sure 
    Next Question
    Wait Until Page Contains    Question 7   timeout=20    error=None
    Next Question
    Submit Result ? 
    Wait Until Page Contains    Fortuner   timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.


Scenario : 6 [Story 20] VIOS Thailand
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    2    reason=None
    VIN-No : Story 20 : Scenario 6 : Thailand
    Katashiki : Story 20 : Scenario 6 : Thailand
    Click Confirm
    Expand DataCollection
    Select SEAT Part
    Wait Until Page Contains    Question 1   timeout=20    error=None
    Answer Front Left
    Next Question 1  
    Wait Until Page Contains    Question 2   timeout=20    error=None
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 3   timeout=20    error=None
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 4   timeout=20    error=None
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 5   timeout=20    error=None
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question
    Wait Until Page Contains    Question 6   timeout=20    error=None
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Question 7   timeout=20    error=None
    Answer with cover
    Next Question
    Wait Until Page Contains    Question 8   timeout=20    error=None
    Answer Personal Car
    Next Question
    Submit Result ? 
    Wait Until Page Contains    Vios   timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.


Scenario : 7 [Story 21] HILUX Thailand
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    1    reason=None
    VIN-No : Story 21 : Scenario 7 : Thailand
    Katashiki : Story 21 : Scenario 7 : Thailand
    Click Confirm
    Expand Guideline
    Select CYLINDER Part
    Wait Until Page Contains    Question 1   timeout=20    error=None
    Answer Uncertain
    Click Attachment
    Take a photo for Attachment
    Next Question 1  
    Wait Until Page Contains    No abnormality   timeout=20    error=None
    Submit Question
    Submit Result ? 
    Wait Until Page Contains    Hilux   timeout=100    error=None
    Complete Checking


Scenario : 8 [Story 21] HILUX Thailand
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    1    reason=None
    VIN-No : Story 21 : Scenario 8 : Thailand
    Katashiki : Story 21 : Scenario 8 : Thailand
    Click Confirm
    Expand Guideline
    Select CYLINDER Part
    Wait Until Page Contains    Question 1   timeout=20    error=None
    Answer NG
    Next Question 1  
    Wait Until Page Contains    Question 2   timeout=20    error=None
    Answer Below L
    Click Attachment
    Take a photo for Attachment
    Next Question
    Wait Until Page Contains    Abnormality   timeout=20    error=None
    Submit Question
    Submit Result ? 
    Wait Until Page Contains    Hilux   timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.
    Close app


Scenario : 9 [Story 22] HILUX Malaysia
    Open app
    Domain 
    Swipe Down
    Click done
    User dev Story checksheet MY
    Password dev Story checksheet MY
    Login button
    Enter PIN matched
    Allow Location
    Sleep    1    reason=None
    VIN-No : Story 22 : Scenario 9 : Malaysia
    Katashiki : Story 22 : Scenario 9 : Malaysia
    Click Confirm
    Select TURBO Part
    Wait Until Page Contains    Question 1   timeout=20    error=None
    Answer Accerelation
    Next Question 1  
    Wait Until Page Contains    Question 2   timeout=20    error=None
    Answer Inside cabin
    Next Question
    Wait Until Page Contains    Question 3   timeout=20    error=None
    Answer Close window
    Next Question
    Wait Until Page Contains    Question 4   timeout=20    error=None
    Answer Yes (Can hear since brand new car)
    Next Question
    Wait Until Page Contains    Question 5   timeout=20    error=None
    Answer Accept
    Next Question
    Wait Until Page Contains    No abnormality   timeout=20    error=None
    Submit result
    Submit Result ? 
    Wait Until Page Contains    Hilux   timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.

 
Scenario : 10 [Story 22] HILUX Malaysia
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    2    reason=None
    VIN-No : Story 22 : Scenario 10 : Malaysia
    Katashiki : Story 22 : Scenario 10 : Malaysia
    Click Confirm
    Select TURBO Part
    Wait Until Page Contains    Question 1   timeout=20    error=None
    Next Question 1  
    Wait Until Page Contains    Question 2   timeout=20    error=None
    Answer Outside cabin
    Next Question
    Wait Until Page Contains    Question 3   timeout=20    error=None
    Answer Outdoor parking
    Next Question
    Wait Until Page Contains    Question 4   timeout=20    error=None
    Answer Not Accept
    Next Question
    Click Instruction
    Allow record audio
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK   
    Wait Until Page Contains    TURBO    timeout=20    error=None
    Submit result
    Alert confirm to send voice then click OK
    Sleep    1    reason=None
    Wait Until Page Contains    Hilux    timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.
    Close app

Scenario : 11 [Story 22] HILUX Thailand
    Open app
    Domain 
    Swipe Down
    Click done
    User dev Story checksheet TH
    Password dev Story checksheet TH
    Login button
    Enter PIN matched
    Allow Location
    Sleep    1    reason=None
    VIN-No : Story 22 : Scenario 11 : Thailand
    Katashiki : Story 22 : Scenario 11 : Thailand
    Click Confirm
    Select TURBO Part
    Sleep    2    reason=None
    Wait Until Page Contains    Question 1   timeout=20    error=None
    Answer Deaccerelation
    Next Question 1 
    Wait Until Page Contains    Question 2   timeout=20    error=None 
    Answer Both inside and outside cabin
    Next Question
    Wait Until Page Contains    Question 3   timeout=20    error=None
    Answer Indoor parking
    Next Question
    Wait Until Page Contains    Question 4   timeout=20    error=None
    Answer Not Accept
    Next Question
    Click Instruction
    Allow record audio
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK   
    Wait Until Page Contains    TURBO    timeout=20    error=None
    Submit result
    Alert confirm to send voice then click OK
    Sleep    1    reason=None
    Wait Until Page Contains    Hilux    timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.

Scenario : 12 [Story 23] HILUX Thailand (Retry)
    Click home button then select AppTDEM
    Enter PIN matched
    Sleep    2    reason=None
    VIN-No : Story 23 : Scenario 12 : Thailand
    Katashiki : Story 23 : Scenario 12 : Thailand
    Click Confirm
    Expand Guideline
    Select CYLINDER Part
    Click Retry
    Redo confirmmation
    Answer Uncertain
    Next Question 1
    Wait Until Page Contains    No abnormality   timeout=10    error=None
    Submit Question
    Submit Result ? 
    Wait Until Page Contains    Hilux    timeout=100    error=None
    Complete Checking
    Finish checking on vehicle Vin No.
    
Scenario : 13 [Story 24] HILUX Thailand (Preview)
    Click home button then select AppTDEM 
    Enter PIN matched    
    Sleep    2    reason=None
    VIN-No : Story 24 : Scenario 13 : Thailand
    Katashiki : Story 24 : Scenario 13 : Thailand
    Click Confirm
    Expand Guideline
    Select CYLINDER Part
    Sleep    2    reason=None
    Wait Until Page Contains    No abnormality   timeout=10    error=None
    Preview
    Checked Radio equal and Check box True
    Wait Until Page Contains    No abnormality   timeout=20    error=None
    Preview
    Wait Until Page Contains    Question 1   timeout=100    error=None

