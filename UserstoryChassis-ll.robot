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

Scenario : Acceptance 33 -1 
    Domain
    Swipe Up
    Click done 
    User id valid
    Password valid
    Login button
    Enter PIN matched
    VIN-No : Acceptance 33 -1
    Click Confirm
    Expand EDER Check Sheet
    Select CHASSIS Part
    Wait Until Page Contains    Question 1    timeout=30    error=None
    Wait Until Page Contains    Customer Complaint    timeout=30    error=None
    Input Customer complaint 33-1 
    Next Question 1  
    Wait Until Page Contains    Question 2    timeout=30    error=None
    Wait Until Page Contains    Vehicle Type    timeout=30    error=None
    Answer New 
    Next Question
    Wait Until Page Contains    Question 3    timeout=30    error=None
    Wait Until Page Contains    Usage Purpose    timeout=30    error=None
    Answer Commercial
    Input Customer complaintQ3
    Next Question
    Wait Until Page Contains    Question 4    timeout=30    error=None
    Wait Until Page Contains    Occupation    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 5    timeout=30    error=None
    Wait Until Page Contains    Gender    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 6    timeout=30    error=None
    Wait Until Page Contains    Customer Age    timeout=30    error=None
    Answer 10s
    Next Question
    Wait Until Page Contains    Question 7    timeout=30    error=None
    Wait Until Page Contains    Customer Weight (kg)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 8    timeout=30    error=None
    Wait Until Page Contains    Usual No. of Passengers    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 9    timeout=30    error=None
    Wait Until Page Contains    Usual Vehicle Load Including Cargo (kg)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 10    timeout=30    error=None
    Wait Until Page Contains    Average Distance per Day (km)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 11    timeout=30    error=None
    Wait Until Page Contains    Average Drive Time per Day (Hrs)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 12    timeout=30    error=None
    Wait Until Page Contains    Average Speed (km/h)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 13    timeout=30    error=None
    Wait Until Page Contains    Usage Time (%)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 14    timeout=30    error=None
    Wait Until Page Contains    Driving Time (%)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 15    timeout=30    error=None
    Wait Until Page Contains    Usage Road Type (%)    timeout=30    error=None
    Answer Highway
    Input Customer complaint Highway
    Answer City
    Input Customer complaint City
    Next Question
    Wait Until Page Contains    Question 16    timeout=30    error=None
    Wait Until Page Contains    Road Condition (%)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 17    timeout=30    error=None
    Wait Until Page Contains    Trafic condition (%)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 18    timeout=30    error=None
    Wait Until Page Contains    Parking Condition    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 19    timeout=30    error=None
    Wait Until Page Contains    Usual A/C Usage Condition    timeout=30    error=None
    Answer ON
    Next Question
    Wait Until Page Contains    Question 20    timeout=30    error=None
    Wait Until Page Contains    Usual A/C Temp. Setting (℃)    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 21    timeout=30    error=None
    Wait Until Page Contains    Usual Blower Speed Usage Condition    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 22    timeout=30    error=None
    Wait Until Page Contains    Usual Recirculation Mode    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 23    timeout=30    error=None
    Wait Until Page Contains    Usual Air Outlet Mode    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 24    timeout=30    error=None
    Wait Until Page Contains    Other Electrical Load    timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 25    timeout=30    error=None
    Wait Until Page Contains    Modifications and Accessories    timeout=30    error=None
    Answer Yes
    Input Customer complaintQ3
    Take a photo for Attachment multiple image4
    Next Question
    Wait Until Page Contains    Question 26    timeout=30    error=None
    Wait Until Page Contains    Accident History    timeout=30    error=None
    Answer No
    Next Question
    Wait Until Page Contains    Question 27    timeout=30    error=None
    Wait Until Page Contains    Flood Driving History     timeout=30    error=None
    Answer Yes
    Input Customer complaint damage
    Next Question
    Wait Until Page Contains    Question 28    timeout=30    error=None
    Wait Until Page Contains    Car Wash Frequency     timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 29    timeout=30    error=None
    Wait Until Page Contains    Warning Light     timeout=30    error=None
    Answer ON
    Take a photo for Attachment multiple image2
    Next Question
    Wait Until Page Contains    Question 30    timeout=30    error=None
    Wait Until Page Contains    Multi Information Display Message     timeout=30    error=None
    Answer ON
    Next Question
    Wait Until Page Contains    Question 31    timeout=30    error=None
    Wait Until Page Contains    DTC/FFD     timeout=30    error=None
    Answer OFF
    Next Question
    Wait Until Page Contains    Question 32    timeout=30    error=None
    Wait Until Page Contains    Driving condition     timeout=30    error=None
    Answer Take-Off
    Answer Steady Speed
    Answer Acceleration
    Next Question
    Wait Until Page Contains    Question 33    timeout=30    error=None
    Wait Until Page Contains    Vehicle Speed (km/h)     timeout=30    error=None
    Answer Any Speed
    Next Question
    Wait Until Page Contains    Question 34    timeout=30    error=None
    Wait Until Page Contains    Engine Speed (rpm)     timeout=30    error=None
    Answer Specific Speed
    Input Customer complaint 120
    Next Question
    Wait Until Page Contains    Question 35    timeout=30    error=None
    Wait Until Page Contains    LLC Temp. (℃)     timeout=30    error=None
    Answer Cool
    Next Question
    Wait Until Page Contains    Question 36    timeout=30    error=None
    Wait Until Page Contains    Shift     timeout=30    error=None
    Answer Any Shift
    Next Question
    Wait Until Page Contains    Question 37    timeout=30    error=None
    Wait Until Page Contains    Acceleration Pedal     timeout=30    error=None
    Answer Steady Angle
    Input Customer complaint 100
    Answer In Operation
    Input Customer complaint 100-2
    Answer No Operation
    Answer No Relation
    Next Question
    Wait Until Page Contains    Question 38    timeout=30    error=None
    Wait Until Page Contains    Brake Pedal     timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 39    timeout=30    error=None
    Wait Until Page Contains    Clutch Pedal     timeout=30    error=None
    Next Question
    Wait Until Page Contains    Question 40    timeout=30    error=None
    Wait Until Page Contains    Where Can Hear The Abnormal Noise     timeout=30    error=None
    Answer Outside
    Answer Driver seat
    Answer Passenger seat
    Answer Rr No.1 row seat LH side
    Answer Rr No.1 row seat RH side
    Answer Rr No.2 row seat LH side
    Answer Rr No.2 row seat RH side
    Answer ALL
    Next Question
    Wait Until Page Contains    Question 41    timeout=30    error=None
    Wait Until Page Contains    From Where The Abnormal Noise     timeout=30    error=None
    Answer Under Floor
    Answer Right Front
    Next Question
    Wait Until Page Contains    Question 42    timeout=30    error=None
    Wait Until Page Contains    Noise Tone     timeout=30    error=None
    Swipe Up page
    Answer Other1
    Swipe Up page
    Input Customer complaint test 33-1 42
    Next Question
    Wait Until Page Contains    Question 43    timeout=30    error=None
    Wait Until Page Contains    Onomatopoeia.     timeout=30    error=None   
    Input Customer complaint test 33-1 42 
    Next Question
    Wait Until Page Contains    Question 44    timeout=30    error=None
    Wait Until Page Contains    Occurrence Frequency     timeout=30    error=None    
    Answer Sometime
    Next Question
    Wait Until Page Contains    Question 45    timeout=30    error=None
    Wait Until Page Contains    Video     timeout=30    error=None   
    Click Attachment
    Allow record audio
    Press the record video button
    Press the stop video button
    Submit Question 
    Next Question
    Wait Until Page Contains    Question 46    timeout=30    error=None
    Wait Until Page Contains    Steering Angle     timeout=30    error=None   
    Answer while Holding the Angle (LH)
    Input Customer complaint Steering Angle1
    Answer While Operating (LH)
    Input Customer complaint Steering Angle2
    Answer Regardless of the Angle
    Input Customer complaint Steering Angle3
    Next Question
    Wait Until Page Contains    Question 47    timeout=30    error=None
    Wait Until Page Contains    Steering Operation Speed     timeout=30    error=None   
    Answer Normal checkbox
    Next Question
    Wait Until Page Contains    Question 48    timeout=30    error=None
    Wait Until Page Contains    Place of Occurrence - Where     timeout=30    error=None   
    Answer Cityroad
    Next Question
    Wait Until Page Contains    Question 49    timeout=30    error=None
    Wait Until Page Contains    Place of Occurrence - Slope     timeout=30    error=None   
    Answer Flat Road
    Answer Uphill
    Input Customer complaint mountain
    Next Question
    Wait Until Page Contains    Question 50    timeout=30    error=None
    Wait Until Page Contains    Place of Occurrence - Road Surface     timeout=30    error=None   
    Answer Paved
    Next Question
    Wait Until Page Contains    Question 51    timeout=30    error=None
    Wait Until Page Contains    Place of Occurrence - Road Type     timeout=30    error=None   
    Answer Asphalt
    Next Question
    Wait Until Page Contains    Question 52    timeout=30    error=None
    Wait Until Page Contains    Place of Occurrence - Road     timeout=30    error=None   
    Answer Straight
    Next Question
    Wait Until Page Contains    Question 53    timeout=30    error=None
    Wait Until Page Contains    Place of Occurrence - Road Condition     timeout=30    error=None   
    Answer Wet
    Next Question
    Wait Until Page Contains    Question 54    timeout=30    error=None
    Wait Until Page Contains    Weather     timeout=30    error=None   
    Answer Unknown
    Next Question
    Wait Until Page Contains    Question 55    timeout=30    error=None
    Wait Until Page Contains    Ambient Temp.     timeout=30    error=None   
    Answer No Relation
    Next Question
    Wait Until Page Contains    Question 56    timeout=30    error=None
    Wait Until Page Contains    Vehicle Load     timeout=30    error=None   
    Answer Number of Passenger
    Input Customer complaint Vehicle Load1
    Answer Baggage
    Input Customer complaint Vehicle Load2
    Next Question
    Wait Until Page Contains    Question 57    timeout=30    error=None
    Wait Until Page Contains    Number of Passenger relate     timeout=30    error=None   
    Answer No Relation radio
    Next Question
    Wait Until Page Contains    Question 58    timeout=30    error=None
    Wait Until Page Contains    Electrical Load     timeout=30    error=None   
    Input Customer complaint test 33-1 42
    Next Question
    Wait Until Page Contains    Question 59    timeout=30    error=None
    Wait Until Page Contains    Additional specific condition     timeout=30    error=None   
    Next Question
    Submit Result ? 

Scenario : Acceptance preview 33-1
    Select CHASSIS Part
    Wait Until Page Contains    Question 59    timeout=30    error=None
    Preview2
    Next Question 1
    Preview next CHASSIS

Scenario : Acceptance redo 33-1
    Click Redo checksheet
    Redo confirmmation
    Next Question 1
    Redo next CHASSIS
    Submit Result ? 
    Part checked




