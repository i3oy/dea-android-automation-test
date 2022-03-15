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

Scenario : select dummy part
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
    Expand Diagnosis
    Expand Test DUMMY
    Swipe Up part page
    Select DUMMY Part

Scenario : Question-Answer [Type: Single/Multiple with additional box] / Check textbox string 
    Answer 2Y
    #Check counting 0/255 to string

Scenario : Question-Answer [Type: Single/Multiple with additional box] / textbox number
    Answer 2N
    #Check counting 0/5 to int

Scenario : Question-Answer [Type: Single/Multiple with additional box] / Single choice
    Validate single chioce for 2 answer

Scenario : Question-Answer [Type: Single/Multiple with additional box] / Attachment photo
    Click Attachment
    Click allow camera
    Take a photo for Attachment

Scenario : Question-Answer [Type: Single/Multiple with additional box] / Enabled button
    Button next should Enabled

Scenario : Question-Answer [Type: Single/Multiple with additional box] / Delete image
    Click delete image

Scenario : Question-Answer [Type: Single/Multiple with additional box] / Popup delete image
    Alert confirm delete image

Scenario : Question-Answer [Type: Single/Multiple with additional box] / Disable button
    Button next should Disable
    Click Attachment
    Take a photo for Attachment
    Click next after take photo success
    
Scenario : Question-Answer [Type: Textfield] / Check textbox string 
    Check counting 0/255 to string for textbox2
    
Scenario : Question-Answer [Type: Textfield] / Next button and Previous button
    Next Question
    Previous

Scenario : Question-Answer [Type: Textfield] / Attachment photo
    Click Attachment
    Take a photo for Attachment no Cropephoto

Scenario : Question-Answer [Type: Textfield] / Delete image
    Click delete image

Scenario : Question-Answer [Type: Textfield] / Popup delete image
    Alert confirm delete image
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question

Scenario : Question-Answer [Type: Numeric] / textbox number
    Check counting 0/6 to int

Scenario : Question-Answer [Type: Numeric] / Next button and Previous button
    Next Question
    Previous

Scenario : Question-Answer [Type: Numeric] / Attachment photo
    Click Attachment
    Take a photo for Attachment

Scenario : Question-Answer [Type: Numeric] / Delete image
    Click delete image

Scenario : Question-Answer [Type: Numeric] / Popup delete image
    Alert confirm delete image
    Click Attachment
    Take a photo for Attachment
    Next Question

Scenario : Question-Answer [Type: Multiple choice with attachment photo] / Multiple checkbox
    Answer Cat
    Answer Dog
    Answer Rabbit
    Answer Bird
    Answer Rabbit

Scenario : Question-Answer [Type: Multiple choice with attachment photo] / Next button and Previous button
    Next Question
    Previous

Scenario : Question-Answer [Type: Multiple choice with attachment photo] / Attachment photo
    Click Attachment
    Take a photo for Attachment no Cropephoto

Scenario : Question-Answer [Type: Multiple choice with attachment photo] / Delete image
    Click delete image

Scenario : Question-Answer [Type: Multiple choice with attachment photo] / Popup delete image
    Alert confirm delete image
    Click Attachment
    Take a photo for Attachment no Cropephoto
    Next Question

Scenario : Question-Answer [Type: Attachment photo] / Next button and Previous button
    Next Question
    Previous

Scenario : Question-Answer [Type: Attachment photo] / Take photo
    Click Attachment
    Take a photo for Attachment

Scenario : Question-Answer [Type: Attachment photo] / Delete photo
    Click delete image

Scenario : Question-Answer [Type: Attachment photo] / Popup delete image
    Alert confirm delete image
    Click Attachment
    Take a photo for Attachment
    Next Question

Scenario : Question-Answer [Type: Video] / Take video
    Click Attachment
    Allow audio
    Press the record video button
    Press the stop video button
    Click submit

Scenario : Question-Answer [Type: Video] / Delete video
    Click delete image

Scenario : Question-Answer [Type: Video] / Popup delete image
    Alert confirm delete image
    Click Attachment
    Press the record video button
    Press the stop video button
    Click submit

Scenario : Question-Answer [Type: Video] / Next button and Previous button
    Next Question

Scenario : Question-Answer [Type: Audio] / Record audio
    Click Attachment
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK 

Scenario : Question-Answer [Type: Audio] / Delete audio
    Delete file audio
    Are you sure to Delete Audio
    Click Attachment
    Press the record button
    Press stop the record button
    Go to next step 
    Alert submit result then click OK 

Scenario : Question-Answer [Type: Audio] / Next button and Previous button
    Next Question

Scenario : Question-Answer [Type: Single and not required photo as an evidence] / Single choice
    Answer Convolution
    Answer POA
    Validate single chioce

Scenario : Question-Answer [Type: Single and not required photo as an evidence] / Attachment photo
    Click Attachment
    Take a photo for Attachment no Cropephoto

Scenario : Question-Answer [Type: Single and not required photo as an evidence] / Delete image
    Click delete image

Scenario : Question-Answer [Type: Single and not required photo as an evidence] / Popup delete image
    Alert confirm delete image
    Click Attachment
    Take a photo for Attachment no Cropephoto

Scenario : Question-Answer [Type: Single and not required photo as an evidence] / Next button and Previous button
    Next Question
    Submit Result ? 









