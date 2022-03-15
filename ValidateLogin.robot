*** Settings ***
Library           AppiumLibrary
Library           String
Resource          ${CURDIR}/Keyword_login_photo.robot
Suite Setup       Open app
Suite Teardown    Close Application


*** Test Case ***

Scenario : Call get language list
     Default ENG
     Change language Thai
     Change language Vietnam
     Change language Bahasa
     Change language Chinese
     Change language English
     Remember language latest
     Close app
 
Scenario : Login button disable when an input field is not complete fill
     Open app
     Press the login button without entering any information
     Select domain then press login
     Select domain and fill username but not fill password then press login
     Select domain and not fill username but fill password then press login
     Select domain not match with user then press login
     Close app
     
Scenario : Alert when login failed
    Open app
    Select domain and fill username valid but fill password invalid then press login
    Select domain and fill username Invalid but fill password valid then press login
    Login but the customer is not in the system
    Close app

Scenario : Fill username and password (valid)
    Open app
    Domain
    Swipe Up
    Click done 
    User id valid
    Password valid
    Login button
    Close app

Scenario : Login form
    Open app
    Fill username more than 8 digit
    Fill username equal 8 digit
    Fill username less than 8 digit
    Fill username password equal null
    Fill eng in username field
    Fill eng and number username field
    Click show password
    Select domain
    Scroll Down
    Scroll Up
    Close app

Scenario : Show number keyboard only 
    Open app
    Press open app then show pin page
    Close app

Scenario : Register PIN
    Open app
    Enter pin 123456 but re-enter pin 111111
    Enter pin 123456 but re-enter pin 123456
    Close app

Scenario : Vehicle Information Input 
    Open app
    Domain 
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Take photo by read OCR for VIN
    Take photo by read OCR for Katashiki
    Add vin number 
    Edit vin number 
    Delete vin number
    Add katashiki
    Edit katashiki
    Delete katashiki
    Click Model
    Swipe Up
    Swipe Down
    Click done
    Swipe Up info page
    Add mileage (km)
    Edit mileage (km)
    Delete mileage (km)
    Swipe Up info page
    Add license plate
    Edit license plate 
    Delete license plate
    Swipe Up info page
    Add repair order
    Edit repair order
    Delete repair order
    Close app

Scenario : Alert message Vehicle Information Incomplete
    Open app
    Domain 
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Fill Validate VIN invalid
    Fill katashiki invalid
    Click Model
    Click done
    Swipe Up info page
    Add mileage (km)
    Swipe Up info page
    Add license plate
    Swipe Up info page
    Add repair order
    Keep Keyboard
    Click Confirm
    Alert input incomplete vehicle information
    Close app

Scenario : [SHOCK] Flow back each page and delete photo
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
    Swipe Up choose menu T-dem
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
    Select SHOCK Part
    Click Back page
    Select SHOCK Part
    Click Instruction
    Click Back page
    Click Instruction
    Click select side BR   
    Click Back page
    Click select side BR   
    Click view 1
    Click Back page
    Click view 1
    Click checking instruction
    Click allow camera
    Take a photo
    Click delete image
    Alert confirm delete image
    Click view 2
    Click checking instruction
    Take a photo
    Click delete image
    Alert confirm delete image
    Click view 1
    Click checking instruction
    Take a photo
    Click view 2
    Click checking instruction
    Take a photo
    Click select Leakage
    Swipe Up
    Click done
    Select picture Highlight
    Click delete photo Highlight
    Alert confirm delete image
    Swipe Up page
    Add finger Image
    Take a photo for leakage LV 1-2 
    Click delete photo Finger
    Alert confirm delete image



