*** Settings ***
Variables         ${CURDIR}/Common_config.yaml
Resource          ${CURDIR}/Keyword_login_photo.robot
Library           BuiltIn
Library           AppiumLibrary
Library           String


*** Variables ***
#Record
${btnePlay}           id=com.tdem.tdiag.dev:id/btnPlay
${btneRecord}         id=com.tdem.tdiag.dev:id/btnRecord
${btnReRecord}        id=com.tdem.tdiag.dev:id/btnReRecord
${btnDone}            id=com.tdem.tdiag.dev:id/btnDone
${tvCountdown}        id=com.tdem.tdiag.dev:id/tvCountdown
${btnCancel}          id=com.tdem.tdiag.dev:id/buttonCancel
${ivSaveSound}        id=com.tdem.tdiag.dev:id/ivSaveSound
${per_allow_}         id=com.android.permissioncontroller:id/permission_allow_button
${btnDelete}          id=com.tdem.tdiag.dev:id/ivDeleteSound
${playvoice}          id=com.tdem.tdiag.dev:id/btnPlayVoice   
${btnRecordVideo}     id=com.tdem.tdiag.dev:id/btnRecordVideo
${btnedReason}        id=com.tdem.tdiag.dev:id/edReason
${edRepairMethod}     id=com.tdem.tdiag.dev:id/edRepairMethod


#Result
${btnshouldrepair}    id=com.tdem.tdiag.dev:id/btn_should_repair
${btnSubmitcomment}   id=com.tdem.tdiag.dev:id/btnSubmit
${edReason}           id=com.tdem.tdiag.dev:id/ivEditReason
${btnCancelcomment}   id=com.tdem.tdiag.dev:id/btnCancel        
${ivDeleteReason}     id=com.tdem.tdiag.dev:id/ivDeleteReason
${tvCountdownText}    id=com.tdem.tdiag.dev:id/tvCountdownText
${videoinstruction}   id=com.tdem.tdiag.dev:id/vvContent
${video}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.VideoView
${btnSubmit}          id=com.tdem.tdiag.dev:id/btnSubmit                    


*** Keywords ***
#Step difination
Can slide right for choose image
    Swipe Right to Left
    Swipe Right to Left
    Swipe Right to Left
    Swipe Right to Left

Can slide left for choose video
    Swipe Left to Right video

Can slide right for choose video
    Swipe Right to Left video
   
Can slide left for choose image
    Swipe Left to Right
    Swipe Left to Right
    Swipe Left to Right

Can press image
    Press image instruction
    Close image instruction
    Swipe Right to Left
    Press image instruction
    Close image instruction
    Swipe Right to Left
    Press image instruction
    Close image instruction

#Set Keyword with Variables
Select TURBO Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${PARTTURBO}
    Sleep    1    reason=None       

Select SHOCK Part
    Wait Until Element Is Visible    class=android.view.ViewGroup    timeout=20    error=None  
    Click Text    ${PARTSHOCK}
    Sleep    2    reason=None       
    
Select V-BELT Part
    Wait Until Element Is Visible    class=android.view.ViewGroup    timeout=20    error=None  
    Click Text    ${PARTV-BELT}
    Sleep    4    reason=None       

Select REAR ENGINE Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=10    error=None  
    Click Text    ${PARTREARENGINE}

Select STEERING Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${PARTSTEERING}

Select SEAT Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${PARTSEAT}

Select CYLINDER Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${PARTCYLINDER}

Select WATER PUMP Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${PARTWATERPUMP}
    Sleep    3    reason=None

Select BLOWER Part
    Wait Until Element Is Visible    class=com.tdem.tdiag.dev:id/layoutItem    timeout=20    error=None  
    Click Text    ${PARTBLOWER}
    Sleep    4    reason=None

Select DUMMY Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${DUMMY}
    Sleep    2    reason=None

Select CHASSIS Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${CHASSIS}
    Sleep    2    reason=None

Select ENGINE Part
    Wait Until Element Is Visible    class=android.widget.TextView    timeout=20    error=None  
    Click Text    ${ENGINE}
    Sleep    5    reason=None

Select POWER STREERING Part
    Sleep    1    reason=None
    Click Text    ${PSG}
    Sleep    5    reason=None

Swipe Right to Left multiple image
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rvPhotoAttachment
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/rvPhotoAttachment
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/rvPhotoAttachment
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.3)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  250

Swipe Right to Left
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvContent
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/imvContent
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/imvContent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.3)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  250

Swipe Right to Left guideline Leakage
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvContent
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/imvContent
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/imvContent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe          ${start_x}    ${start_y}  ${end_x}  ${end_y}  150

Swipe Left to Right
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvContent
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/imvContent
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/imvContent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.3)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  250
    Sleep  1

Swipe Left to Right guideline Leakage
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvContent
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/imvContent
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/imvContent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  150
    Sleep  1

Swipe Right to Left video
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/vvContent
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/vvContent
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/vvContent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500

Swipe Left to Right video
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/vvContent
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/vvContent
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/vvContent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Press image instruction
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvContent
    Click Element    ${piccontent} 

Close image instruction
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvClose
    Click Element    ${btnclose}

Click back
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/titleHeader    timeout=10
    Click Element    ${imgBack}

Allow record audio
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button     timeout=10  
    Click Element    ${allow}

Allow permission to save file
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button     timeout=10 
    Click Element    ${per_allow_} 

Press the record video button
    Wait Until Element Is Visible    ${btnRecordVideo}    timeout=10
    Click Element    ${btnRecordVideo}   
    Sleep    6    reason=None

Press the stop video button
    Wait Until Element Is Visible    ${btnRecordVideo}    timeout=10
    Click Element    ${btnRecordVideo}   
    Sleep    1    reason=None

Press the record button
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnRecord    timeout=10
    Click Element    ${btneRecord}   
    Sleep    10    reason=None

Press the record button until 20 seconds    
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnRecord    timeout=10
    Click Element    ${btneRecord}
    Sleep    21    reason=None    

Press stop the record button
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnRecord    timeout=10
    Click Element    ${btneRecord} 
    Sleep    1    reason=None
  

Re-record again
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnReRecord
    Click Element    ${btnReRecord}

Alert confirm to re-record again then click Cancel
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element    ${btnCancel} 

Alert confirm to re-record again then click OK
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element    ${btnconfirm}

Play audio after record complete
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPlay   timeout=15
    Click Element    ${btnePlay}    
    Sleep    9    reason=None

Stop audio after record complete
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPlay    timeout=15
    Click Element    ${btnePlay}    

Play audio under Question
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPlayVoice    timeout=15
    Click Element    ${playvoice}   

Stop audio under Question
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPlayVoice    timeout=15
    Click Element    ${playvoice}  

Delete file audio
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/ivDeleteSound    timeout=15
    Click Element    ${btnDelete}

Submit result
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnSubmit    timeout=15
    Click Element    ${btnSubmit}
    Sleep   1

Alert submit result then click Cancel   
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element    ${btnCancel} 

Alert submit result then click OK   
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element    ${btnconfirm} 
    Sleep    10    reason=None

Click need to repair 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btn_should_repair    timeout=120
    Click Element     ${btnshouldrepair}  

Fill reason equal Null    
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvCountdownText
    Click Element     ${btnSubmitcomment}

Fill reason equal less than 250
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvCountdownText
    Press Keycode    46    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    44    metastate=None
    Press Keycode    29    metastate=None
    Press Keycode    37    metastate=None
    Press Keycode    46    metastate=None
    Click Element     ${btnSubmitcomment}
    Swipe Up page
    Wait Until Page Contains    repair        

Fill repair method
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edRepairMethod
    Click Element    ${edRepairMethod}
    Press Keycode    46    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    44    metastate=None
    Press Keycode    29    metastate=None
    Press Keycode    37    metastate=None
    Press Keycode    46    metastate=None
    Press Keycode    4    metastate=None

Fill reason
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edReason
    Click Element    ${btnedReason}
    Press Keycode    44    metastate=None
    Press Keycode    29    metastate=None
    Press Keycode    37    metastate=None
    Press Keycode    46    metastate=None


Fill reason equal 250
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvCountdownText
    Click Element     ${tvCountdownText}
    FOR     ${index}    IN RANGE   5
            Press Keycode    123    metastate=None        
    END

    FOR     ${index}    IN RANGE   6
            Press Keycode    67    metastate=None
    END

    FOR     ${index}    IN RANGE   250
            Press Keycode    46    metastate=None
    END
    Wait Until Page Contains    250/250    timeout=5    error=None   
    Click Element     ${btnSubmitcomment}    
    Swipe Up page

Fill reason equal more than 250
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvCountdownText
    Press Keycode    12    metastate=None 
    Wait Until Page Contains    250/250    timeout=5    error=None   
    Click Element     ${btnSubmitcomment}
    Swipe Up page

When press delete reason
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/ivEditReason    timeout=5    error=None
    Click Element      ${ivDeleteReason}

When press edit reason
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/ivEditReason    timeout=10    error=None
    Click Element      ${edReason}

When fill reason complete then press CANCEL
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnCancel    timeout=5
    Click Element     ${btnCancelcomment}
   
When fill reason complete then press DONE    
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnSubmit    timeout=5
    Click Element     ${btnSubmitcomment}
    #Swipe Up page
    Wait Until Page Contains    repair    timeout=5

Fill reason success must show result page  
    Swipe Up page
    Wait Until Page Contains    Reason    timeout=5
    Wait Until Page Contains    pair    timeout=5
    Wait Until Page Contains    Repair Method    timeout=5
    Wait Until Page Contains    re    pair    timeout=5
    Wait Until Page Contains    DONE    timeout=5

Alert confirm delete reason
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element      ${btnconfirm}

Alert cancel delete reason
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element      ${btnCancel}

Show timer when playing audio
    ${timeaudio}=       Get Text     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.view.ViewGroup[1]/android.widget.TextView[2]
    Run Keyword If    '${timeaudio}' == '00:10/00:20'    Expect 1
    ...  ELSE IF    '${timeaudio}' == '00:08/00:20'    Expect 1
    ...  ELSE IF    '${timeaudio}' == '00:09/00:20'    Expect 2
Expect 1 
    Wait Until Page Contains    00:08/00:20    timeout=5
Expect 2
    Wait Until Page Contains    00:09/00:20    timeout=5


Show timer when playing audio for water pump
    ${timeaudio}=       Get Text     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.view.ViewGroup[1]/android.widget.TextView[2]
    Run Keyword If    '${timeaudio}' == '00:10/00:10'    Expect water pump 1
    ...  ELSE IF    '${timeaudio}' == '00:10/00:10'    Expect water pump 1 
    ...  ELSE IF    '${timeaudio}' == '00:09/00:10'    Expect water pump 2
Expect water pump 1 
    Wait Until Page Contains    00:10/00:10    timeout=5
Expect water pump 2
    Wait Until Page Contains    00:09/00:10    timeout=5


Show timer when record audio of water pump
    ${timeaudio}=       Get Text     id=com.tdem.tdiag.dev:id/tvCountdown
    Run Keyword If    '${timeaudio}' == '00:10'    Expect time 1
    ...  ELSE IF    '${timeaudio}' == '10:10'    Expect time 2
Expect time 1
    Wait Until Page Contains    00:10    timeout=5
Expect time 2
    Wait Until Page Contains    10:10    timeout=5


Save file audio
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/ivSaveSound    timeout=5
    Click Element    ${ivSaveSound}

Go to next step 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnDone    timeout=10
    Click Text    Done

Alert confirm to send voice then click OK
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}
    Sleep    5    reason=None

Alert confirm to send voice then click CANCEL
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonCancel
    Click Element    ${btnCancel}

Click play file to diagnosis result
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPlay
    Click Element    ${btnePlay} 
    Sleep    5    reason=None       
    Click Element    ${btnePlay} 

Click Instruction V-belt
    Wait Until Page Contains    V-BELT    timeout=10    error=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnNext    timeout=5
    Click Element    ${Instrucbtnnext}
    Sleep    1    reason=None

Alert confirm exit diagnosis confirmmation
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}

Complete Checking
    Sleep    2    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnSubmit    timeout=50
    Click Element    ${btnSubmit}

Alert save sound to gallery?
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}

Alert complete checking
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}  