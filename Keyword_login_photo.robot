*** Settings ***
Variables          ${CURDIR}/Common_config.yaml
Resource           ${CURDIR}/Keyword_noises.robot
Resource           ${CURDIR}/Keyword_Storychecksheet.robot
Library            BuiltIn
Library            String
Library            AppiumLibrary


*** Variable ***
#Domain
${btnDomain}                id=com.tdem.tdiag.dev:id/btnDomain
${btnDondomain}             id=com.tdem.tdiag.dev:id/btnConfirm

#Login
${btnLogin}                 id=com.tdem.tdiag.dev:id/btnLogin
${clickeditUserID}          id=com.tdem.tdiag.dev:id/editUserID
${clickeditPassword}        id=com.tdem.tdiag.dev:id/editPassword
${usernotfoundbtnConfirm}   id=com.tdem.tdiag.dev:id/buttonConfirm

#Forget PIN
${forgetPIN}                id=com.tdem.tdiag.dev:id/txtForgotPin
${btncancelforgetPin}       id=com.tdem.tdiag.dev:id/buttonCancel
${btnconfirmforgetPin}      id=com.tdem.tdiag.dev:id/buttonConfirm

#Language
${btnLanguage}              id=com.tdem.tdiag.dev:id/txtLanguage
${btnConfirmLanguage}       id=com.tdem.tdiag.dev:id/btnConfirm
${btnCancelLanguage}        id=com.tdem.tdiag.dev:id/btnCancel

#Diagnosis tool 
${txtVIN}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup
${OCRVIN}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.ImageView[2]
${txtKatashiki}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup
${OCRKata}                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.ImageView[2]
${txtModel}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup
${txtMileage}               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup
${txtLicense}               id=com.tdem.tdiag.dev:id/txtLicensePlate
${txtRepair}                id=com.tdem.tdiag.dev:id/txtRepairNumber
${btnCancelmodel}           id=com.tdem.tdiag.dev:id/btnCancel
${btnNext}                  id=com.tdem.tdiag.dev:id/btnConfirm

#Parts group
${Diagnosis}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup
${Guideline}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.view.ViewGroup
${DataCollection}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.view.ViewGroup

#Instruction
${Instrucbtnnext}           id=com.tdem.tdiag.dev:id/btnNext

#Select Side 
${btnFR}                    id=com.tdem.tdiag.dev:id/btnFR
${btnBR}                    id=com.tdem.tdiag.dev:id/btnBR
${btnFL}                    id=com.tdem.tdiag.dev:id/btnFL
${btnBL}                    id=com.tdem.tdiag.dev:id/btnBL

#Select View
${view1}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]
${view2}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
${view3}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]

#Camera
${btntakephoto}             id=com.tdem.tdiag.dev:id/layoutCaptureIcon
${btnCancelphoto}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.TextView
${btnSubmitphoto}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[2]/android.widget.TextView
${btncancelOCR}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.TextView
${imvRemove1}               id=com.tdem.tdiag.dev:id/imvRemove

#Permission
${allow}                    id=com.android.permissioncontroller:id/permission_allow_button
${onlyonetime}              id=com.android.permissioncontroller:id/permission_allow_one_time_button
${deny}                     id=com.android.permissioncontroller:id/permission_deny_button
${allowlocation}            id=com.android.permissioncontroller:id/permission_allow_foreground_only_button#
                            
#Setting
${btnsetting}               id=com.tdem.tdiag.dev:id/imgSetting
${btnlogout}                id=com.tdem.tdiag.dev:id/btnLogout
${btnconfirm}               id=com.tdem.tdiag.dev:id/buttonConfirm
${ChangeLanguage}           id=com.tdem.tdiag.dev:id/txtChangeLanguage
${btnDone}                  id=com.tdem.tdiag.dev:id/btnConfirm
${btnsecurity}              id=com.tdem.tdiag.dev:id/txtSecurity
${btnclosesetting}          com.tdem.tdiag.dev:id/imgClose

#Leakage
${titleLeakage}             id=com.tdem.tdiag.dev:id/txtTitleLeakage
${piccontent}               id=com.tdem.tdiag.dev:id/imvContent
${titleFinger}              id=com.tdem.tdiag.dev:id/txtTitleFinger
${btnclose}                 id=com.tdem.tdiag.dev:id/imvClose

#Highlight and finger
${imvHighlight}             id=com.tdem.tdiag.dev:id/imvHighlight
${selectpic}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView
${imvFinger}                id=com.tdem.tdiag.dev:id/imvFinger
${next}                     id=com.tdem.tdiag.dev:id/btnNext
${btntxtLeakage}            id=com.tdem.tdiag.dev:id/txtLeakage
${btnedtcomment}            id=com.tdem.tdiag.dev:id/edtComment                          
${btnclosehighlight}        id=com.tdem.tdiag.dev:id/imgPhotoEditorImage
${imvRemoveHighlight}       id=com.tdem.tdiag.dev:id/imvRemoveHighlight
${imvRemoveFinger}          id=com.tdem.tdiag.dev:id/imvRemoveFinger
${imgPhotoEditorClose}      id=com.tdem.tdiag.dev:id/imgPhotoEditorClose

#Backpage
${imgBack}                  id=com.tdem.tdiag.dev:id/imgBack

#Disagree
${btn_should_repair}          id=com.tdem.tdiag.dev:id/btn_should_repair
${ivEditPhotoDiagFeedback}    id=com.tdem.tdiag.dev:id/ivEditPhotoDiagFeedback
${ivDeletePhotoDiagFeedback}  id=com.tdem.tdiag.dev:id/ivDeletePhotoDiagFeedback
${edtRepairMethod}            id=com.tdem.tdiag.dev:id/edtRepairMethod



*** Keywords ***
Open app
    Open Application	  http://localhost:4723/wd/hub      platformName=android    platformVersion=10    deviceName=IRAQIJHAGEGAKNKN      app=${CURDIR}/com.tdem.tdiag.dev.0.0.15.apk    appPackage=com.tdem.tdiag.dev

Default ENG
    Wait Until Page Contains    ENG    timeout=10    error=None
    
Change language Thai
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLanguage
    Click Element    ${btnLanguage}
    Swipe Up
    Click Element    ${btnConfirmLanguage}
    Wait Until Page Contains    THA    timeout=10    error=None

Change language Vietnam
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLanguage
    Click Element    ${btnLanguage}
    Swipe Up
    Click Element    ${btnConfirmLanguage} 
    Wait Until Page Contains    VIE    timeout=10    error=None

Change language Bahasa
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLanguage
    Click Element    ${btnLanguage}
    Swipe Up
    Click Element    ${btnConfirmLanguage} 
    Wait Until Page Contains    INA    timeout=10    error=None

Change language Chinese
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLanguage
    Click Element    ${btnLanguage}
    Swipe Up
    Click Element    ${btnConfirmLanguage} 
    Wait Until Page Contains    CHT    timeout=10    error=None

Change language English
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLanguage
    Click Element    ${btnLanguage}
    Swipe Up
    Click Element    ${btnConfirmLanguage} 
    Wait Until Page Contains    ENG    timeout=10    error=None

Remember language latest
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLanguage
    Click Element    ${btnLanguage}
    Swipe Up
    Click Element    ${btnConfirmLanguage} 
    Domain
    Swipe Up
    Click done 
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Click setting
    Click logout
    Confirm logout
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLanguage
    Wait Until Page Contains    TH    timeout=10    error=None


Change language Thai setting page
    Swipe Up   
    Click done
    Page Should Contain Text   ตั้งค่า
    Click close setting button
    Wait Until Page Contains   รุ่นรถ    timeout=120    error=None
    Page Should Contain Text   หมายเลขตัวถัง

Change language Vietnam setting page
    Swipe Up   
    Click done
    Page Should Contain Text   Settings
    Click close setting button
    Wait Until Page Contains   Model    timeout=120    error=None
    Page Should Contain Text   VIN

Change language Bahasa setting page
    Swipe Up   
    Click done
    Page Should Contain Text   Pengaturan
    Click close setting button
    Wait Until Page Contains   Model    timeout=120    error=None
    Page Should Contain Text   VIN

Change language Chinese setting page
    Swipe Up   
    Click done
    Page Should Contain Text   設定
    Click close setting button
    Wait Until Page Contains   車型    timeout=120    error=None
    Page Should Contain Text   VIN

Change language English setting page
    Swipe Up 
    Click done
    Page Should Contain Text   Settings
    Click close setting button
    Wait Until Page Contains   Model    timeout=120    error=None
    Page Should Contain Text   VIN

Click close setting button
    Click Element    ${btnclosesetting}



Domain
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnDomain
    Click Element    ${btnDomain}   

Press the login button without entering any information
    Element Should Be Disabled    ${btnLogin}

Select domain then press login
    Domain
    Swipe Up
    Click done 
    Element Should Be Disabled    ${btnLogin}

Select domain and fill username but not fill password then press login
    User id valid
    Element Should Be Disabled    ${btnLogin}
    Clear Text    id=com.tdem.tdiag.dev:id/editUserID  

Select domain and not fill username but fill password then press login
    Password valid
    Element Should Be Disabled    ${btnLogin}
    Clear Text    id=com.tdem.tdiag.dev:id/editUserID  

Select domain not match with user then press login
    Domain
    Swipe Up
    Click done 
    User id valid
    Password valid
    Login button
    Error user not found

Select domain and fill username valid but fill password invalid then press login
    Domain
    Swipe Up
    Click done 
    User id valid
    Password invalid
    Login button
    Error user not found

Select domain and fill username Invalid but fill password valid then press login
    Domain
    Swipe Up
    Click done 
    User id invalid
    Password valid
    Login button
    Error user not found

Login but the customer is not in the system
    Domain
    Swipe Up
    Click done 
    User id invalid
    Password invalid
    Login button
    Error user not found

Fill username more than 8 digit
    Domain
    Swipe Up
    Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernamemorethan8}
    Wait Until Page Contains    99999999    timeout=10    error=None
    Password valid
    Login button
    Error user not found

Fill username equal 8 digit
    Domain
    Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernameequal8}
    Wait Until Page Contains    88888888    timeout=10    error=None
    Password valid
    Login button
    Error user not found

Fill username less than 8 digit
    Domain
    Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernamelessthan8}
    Wait Until Page Contains    7777777    timeout=10    error=None
    Password valid
    Login button
    Error user not found

Fill username password equal null
    Domain
    Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Press Keycode    62    metastate=None
    Password valid
    Login button
    Error user not found

Fill eng in username field
    Domain
    Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernameeng}
    Wait Until Page Contains    TESTEng    timeout=10    error=None
    Password valid
    Login button
    Error user not found

Fill eng and number username field
    Domain
    Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernameengandnumber}
    Wait Until Page Contains    Test123    timeout=10    error=None
    Password valid
    Login button
    Error user not found

Click show password
    Domain
    Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Input Text    id=com.tdem.tdiag.dev:id/editPassword    ${passwordTDEM}
    Click Element    id=com.tdem.tdiag.dev:id/text_input_end_icon
    Password valid
    Login button
    Error user not found

Select domain
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnDomain
    Click Element    ${btnDomain}  

Scroll Down
    Swipe Down

Scroll Up
    Swipe Up

Enter pin 123456 but re-enter pin 111111
    Domain 
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button 
    Press Forget PIN 
    Press forget PIN then press OK
    Domain 
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Re-Enter PIN not matched  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/pinView

Enter pin 123456 but re-enter pin 123456
    Enter PIN matched
    Re-Enter PIN matched
    Wait Until Page Contains    Diagnosis    timeout=10    error=None

Press open app then show pin page
    Domain 
    Swipe Up
    Click done
    User id valid
    Password valid
    Login button
    Enter PIN matched
    Wait Until Page Contains    Diagnosis    timeout=10    error=None

Add vin number 
    Validate VIN

Take photo by read OCR for VIN
    Click photo take OCR vin
    Allow camera
    Take a photo for OCR 
    Alert OCR cannot read
    
Take photo by read OCR for Katashiki
    Click photo take OCR katashiki
    Take a photo for OCR
    Alert OCR cannot read


#Set Keyword with Variables
User id valid
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Clear Text    id=com.tdem.tdiag.dev:id/editUserID  
    Click Element    ${clickeditUserID}  
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernameTDEM}
    Press Keycode    4    metastate=None
    Sleep    1    reason=None

Password valid
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editPassword    timeout=10  
    Clear Text    id=com.tdem.tdiag.dev:id/editPassword    
    Click Element    ${clickeditPassword}
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editPassword    ${passwordTDEM}
    Press Keycode    4    metastate=None

User id invalid
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Click Element    ${clickeditUserID}  
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernameinvalid}
    Sleep    1    reason=None
    Press Keycode    4    metastate=None

Password invalid
    Click Element    ${clickeditPassword}
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editPassword    ${passwordinvalid}
    Sleep    2    reason=None
    Press Keycode    4    metastate=None  

User id check location 
    Sleep    1    reason=None
    Click Element    ${clickeditUserID}  
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${username}
    Sleep    1    reason=None
    Press Keycode    160    metastate=None    

Password check location 
    Click Element    ${clickeditPassword}
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editPassword    ${password}
    Sleep    2    reason=None
    Press Keycode    4    metastate=None  

User id no stay dealer 
    Wait Until Element Is Visible     id=com.tdem.tdiag.dev:id/editUserID
    Click Element    ${clickeditUserID}  
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernamenostay}
    Press Keycode    160    metastate=None 

Password no stay dealer 
    Wait Until Element Is Visible     id=com.tdem.tdiag.dev:id/editPassword  
    Click Element    ${clickeditPassword}
    Is Keyboard Shown 
    Input Text    id=com.tdem.tdiag.dev:id/editPassword    ${passwordnostay}
    Sleep    2    reason=None
    Press Keycode    4    metastate=None  

Error user not found
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${usernotfoundbtnConfirm}

Re-enter pin invalid
    Click Element    ${usernotfoundbtnConfirm}

Login button
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnLogin
    Click Element    ${btnLogin} 
    Sleep    2    reason=None

Press Forget PIN 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtForgotPin
    Click Element    ${forgetPIN} 
    
Press forget PIN then press Cancel
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonCancel
    Click Element    ${btncancelforgetPin}
    Sleep    2    reason=None

Press forget PIN then press OK
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirmforgetPin}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnDomain

Enter PIN matched
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/pinView    timeout=30
    FOR    ${index}    IN RANGE    6
        Press Keycode    12    metastate=None
    END

Enter PIN of domain other
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/pinView    timeout=30
    FOR    ${index}    IN RANGE    6
        Press Keycode    8    metastate=None
    END

Re-Enter PIN matched  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/pinView
    FOR    ${index}    IN RANGE    6
        Press Keycode    12    metastate=None
    END

Re-Enter PIN not matched  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/pinView
    FOR    ${index}    IN RANGE    6
        Press Keycode    13    metastate=None
    END
    Press Keycode    160    metastate=None

Validate VIN
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=10
    Click Element    ${txtVIN}
    ${time}=    Get Time    format=sec	    time_=NOW

    FOR    ${Datatest}    IN    ${time}[1]
            Run Keyword If    '${Datatest}' == '${Letters}[0]'    Number 0
        ...  ELSE IF    '${Datatest}' == '${Letters}[1]'    Number 1 
        ...  ELSE IF    '${Datatest}' == '${Letters}[2]'    Number 2
        ...  ELSE IF    '${Datatest}' == '${Letters}[3]'    Number 3
        ...  ELSE IF    '${Datatest}' == '${Letters}[4]'    Number 4
        ...  ELSE IF    '${Datatest}' == '${Letters}[5]'    Number 5
        ...  ELSE IF    '${Datatest}' == '${Letters}[6]'    Number 6
        ...  ELSE IF    '${Datatest}' == '${Letters}[7]'    Number 7
        ...  ELSE IF    '${Datatest}' == '${Letters}[8]'    Number 8
        ...  ELSE IF    '${Datatest}' == '${Letters}[9]'    Number 9
    END
    Press Keycode    8    metastate=None
    Press Keycode    40     metastate=None
    Press Keycode    13    metastate=None
    Press Keycode    15    metastate=None
    Press Keycode    42    metastate=None
    Press Keycode    11     metastate=None
    Press Keycode    40    metastate=None
    Press Keycode    8    metastate=None
    Press Keycode    11    metastate=None
    Press Keycode    7     metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    42     metastate=None
    FOR    ${Datatest}    IN    ${time}[1]
            Run Keyword If    '${Datatest}' == '${Letters}[0]'    Number 0
        ...  ELSE IF    '${Datatest}' == '${Letters}[1]'    Number 1 
        ...  ELSE IF    '${Datatest}' == '${Letters}[2]'    Number 2
        ...  ELSE IF    '${Datatest}' == '${Letters}[3]'    Number 3
        ...  ELSE IF    '${Datatest}' == '${Letters}[4]'    Number 4
        ...  ELSE IF    '${Datatest}' == '${Letters}[5]'    Number 5
        ...  ELSE IF    '${Datatest}' == '${Letters}[6]'    Number 6
        ...  ELSE IF    '${Datatest}' == '${Letters}[7]'    Number 7
        ...  ELSE IF    '${Datatest}' == '${Letters}[8]'    Number 8
        ...  ELSE IF    '${Datatest}' == '${Letters}[9]'    Number 9
    END
    
    FOR    ${Datatest}    IN    ${time}[0]
            Run Keyword If    '${Datatest}' == '${Letters}[0]'    Number 0
        ...  ELSE IF    '${Datatest}' == '${Letters}[1]'    Number 1 
        ...  ELSE IF    '${Datatest}' == '${Letters}[2]'    Number 2
        ...  ELSE IF    '${Datatest}' == '${Letters}[3]'    Number 3
        ...  ELSE IF    '${Datatest}' == '${Letters}[4]'    Number 4
        ...  ELSE IF    '${Datatest}' == '${Letters}[5]'    Number 5
        ...  ELSE IF    '${Datatest}' == '${Letters}[6]'    Number 6
        ...  ELSE IF    '${Datatest}' == '${Letters}[7]'    Number 7
        ...  ELSE IF    '${Datatest}' == '${Letters}[8]'    Number 8
        ...  ELSE IF    '${Datatest}' == '${Letters}[9]'    Number 9
    END
    Press Keycode    4    metastate=None

Fill Validate VIN invalid
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=10
    Click Element    ${txtVIN}
    Press Keycode    40    metastate=None
    Press Keycode    15    metastate=None
    Press Keycode    11     metastate=None
    Press Keycode    42    metastate=None
    Press Keycode    4    metastate=None

Edit vin number 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin
    Press Keycode    67    metastate=None
    Press Keycode    32    metastate=None
    Press Keycode    33    metastate=None

Delete vin number 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin
    FOR    ${index}    IN RANGE    17
        Press Keycode    67    metastate=None
    END
    Click Element    ${txtVIN}
    Press Keycode    66    metastate=None

Add katashiki
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki    timeout=10
    Sleep    2    reason=None
    Press Keycode    8    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    40    metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    11    metastate=None 
    Press Keycode    8    metastate=None 
    Press Keycode    8    metastate=None 
    Press Keycode    9    metastate=None 
    Press Keycode    10    metastate=None 
    Press Keycode    13    metastate=None 
    Press Keycode    29    metastate=None 
    Press Keycode    9    metastate=None 
    Press Keycode    7    metastate=None 
    Press Keycode    30    metastate=None 
    Press Keycode    10    metastate=None 
    Press Keycode    31    metastate=None 

Fill katashiki invalid
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki    timeout=10
    Click Element    ${txtKatashiki}
    Sleep    2    reason=None
    Press Keycode    40    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    11    metastate=None 
    Press Keycode    8    metastate=None 

Fill katashiki
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki    timeout=10
    Click Element    ${txtKatashiki}
    Sleep    3    reason=None
    Press Keycode    45    metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    40    metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    11    metastate=None 
    Press Keycode    8    metastate=None 
    Press Keycode    8    metastate=None 
    Press Keycode    9    metastate=None 
    Press Keycode    10    metastate=None 
    Press Keycode    13    metastate=None 
    Press Keycode    29    metastate=None 
    Press Keycode    9    metastate=None 
    Press Keycode    7    metastate=None 
    Press Keycode    30    metastate=None 
    Press Keycode    31    metastate=None
    #Press Keycode    4    metastate=None
    
Edit katashiki
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Press Keycode    67    metastate=None
    Press Keycode    67    metastate=None
    Press Keycode    67    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    11    metastate=None 

Delete katashiki
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    FOR    ${index}    IN RANGE    15
        Press Keycode    67    metastate=None
    END
    Click Element    ${txtKatashiki}
    Press Keycode    66    metastate=None

Add mileage (km)
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    Press Keycode    12    metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    12    metastate=None
    Sleep    0.8    reason=None
    Press Keycode    4   metastate=None

Edit mileage (km)
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Press Keycode    67    metastate=None
    Press Keycode    67    metastate=None
    Press Keycode    67    metastate=None
    Press Keycode    8    metastate=None
    Press Keycode    8    metastate=None
    Press Keycode    8    metastate=None

Delete mileage (km)
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    FOR    ${index}    IN RANGE    6
        Press Keycode    67    metastate=None
    END
    Click Element    ${txtMileage}
    Press Keycode    4    metastate=None

Add license plate
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLicensePlate
    Click Element    ${txtLicense}
    Press Keycode    40   metastate=None
    Press Keycode    37   metastate=None
    Press Keycode    31   metastate=None
    Press Keycode    33   metastate=None
    Press Keycode    42   metastate=None

Edit license plate 
    Click Element    ${txtLicense}
    Press Keycode    67    metastate=None
    Press Keycode    67    metastate=None
    Press Keycode    37    metastate=None
    Press Keycode    42    metastate=None
    Press Keycode    42    metastate=None
    Press Keycode    42    metastate=None

Delete license plate
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLicensePlate
    FOR    ${index}    IN RANGE    7
        Press Keycode    67    metastate=None
    END
    Press Keycode    66    metastate=None


Add repair order
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtRepairNumber
    Click Element    ${txtRepair}
    Press Keycode    46   metastate=None
    Press Keycode    33   metastate=None
    Press Keycode    44   metastate=None
    Press Keycode    29   metastate=None
    Press Keycode    37   metastate=None
    Press Keycode    46   metastate=None

Edit repair order
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtRepairNumber
    Click Element    ${txtRepair}
    Press Keycode    67    metastate=None
    Press Keycode    32    metastate=None
    Press Keycode    33    metastate=None
    Press Keycode    33    metastate=None

Delete repair order
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtRepairNumber
    Click Element    ${txtRepair}
    FOR    ${index}    IN RANGE    8
        Press Keycode    67    metastate=None
    END

Swipe Up choose menu T-dem
    Wait Until Element Is Visible    id=android:id/content
    ${element_size}=    Get Element Size    id=android:id/content
    ${element_location}=    Get Element Location    id=android:id/content
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Kill App                                 
    Wait Until Element Is Visible     id=com.oppo.launcher:id/snapshot
    ${element_size}=    Get Element Size    id=com.oppo.launcher:id/snapshot
    ${element_location}=    Get Element Location    id=com.oppo.launcher:id/snapshot
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Up
    Wait Until Element Is Visible     id=com.tdem.tdiag.dev:id/relativePicker
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/relativePicker
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/relativePicker
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down
    Wait Until Element Is Visible     id=com.tdem.tdiag.dev:id/relativePicker
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/relativePicker
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/relativePicker
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Up page
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/scrollView
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/scrollView
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/scrollView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1000
    Sleep  1

Swipe Down page
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/scrollView
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/scrollView
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/scrollView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1000
    Sleep  1

Swipe Up info page
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/scrollView3
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/scrollView3
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/scrollView3
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1500
    Sleep  1

Swipe Up part page
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rvPart
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/rvPart
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/rvPart
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1000
    Sleep  1

Swipe Down part page
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rvPart
    ${element_size}=    Get Element Size    id=com.tdem.tdiag.dev:id/rvPart
    ${element_location}=    Get Element Location    id=com.tdem.tdiag.dev:id/rvPart
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1000
    Sleep  1


Click Model
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtModel    timeout=10
    Click Element    ${txtModel}

Click Confirm
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnConfirm    timeout=10
    Click Element    ${btnNext} 
    Sleep    5    reason=None

Click Shock Absorber
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rvPart    timeout=10
    Click Element    ${partshock}

Click Shock Absorber 1
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rvPart    timeout=10
    Click Element    ${partshock1}

Click Instruction
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnNext    timeout=30
    Click Element    ${Instrucbtnnext}
    Sleep    2    reason=None

Click select side FR     
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnFR    timeout=30   
    Click Element     ${btnFR}
    Sleep    2    reason=None


Click select side BR  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnBR    timeout=30    
    Click Element     ${btnBR}
    Sleep    1    reason=None

Click select side FL 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnFL    timeout=30    
    Click Element     ${btnFL}
    Sleep    1    reason=None

Click select side BL     
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnBL    timeout=30    
    Click Element     ${btnBL}
    Sleep    1    reason=None

Click view 1
    Sleep    1    reason=None
    Click Element    ${view1} 
    Sleep    1    reason=None

Click view 2
    Sleep    1    reason=None
    Click Element    ${view2} 
    Sleep    1    reason=None

Click view 3
    Sleep    1    reason=None
    Click Element    ${view3} 
    Sleep    1    reason=None


Click checking instruction
    Wait Until Element Is Visible        ${Instrucbtnnext}       timeout=60
    Click Element    ${Instrucbtnnext}

Click allow camera
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button
    ${attribute}=    Get Element Attribute    id=com.android.permissioncontroller:id/permission_allow_button    enabled
    Run Keyword If     '${attribute}' == 'true'    Allow camera
    ...    ELSE       Take a photo

Allow camera
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button
    Click Element    ${allow}
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button
    Click Element    ${allow}
    Sleep    2    reason=None

Allow camera water pump
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button
    Click Element    ${allow}

Allow audio
    Sleep    1    reason=None
    Click Element    ${allow}
    Sleep    1    reason=None

Allow Location
    Wait Until Page Contains    ALLOW ONLY WHILE USING THE APP    timeout=20    error=None
    Click Text    ALLOW ONLY WHILE USING THE APP


Take a photo   
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon      timeout=10
    Click Element    ${btntakephoto} 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCancel      timeout=10
    Click Element    ${btnCancelphoto}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon      timeout=10
    Click Element    ${btntakephoto}  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutSubmit      timeout=10
    Click Element    ${btnSubmitphoto}  

Take a photo for OCR
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon      timeout=10
    Click Element    ${btntakephoto} 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCancel      timeout=10
    Click Element    ${btnCancelphoto}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon      timeout=10
    Click Element    ${btntakephoto}  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutSubmit      timeout=10
    Click Element    ${btnSubmitphoto}

Take a photo for leakage LV 1-2
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon
    Click Element    ${btntakephoto} 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutSubmit
    Click Element    ${btnSubmitphoto}  

Click next after take photo success
    Wait Until Element Is Visible     ${btnsubmit}
    Click Element    ${btnsubmit}
    Sleep    0.5    reason=None

Click setting
    Sleep    3    reason=None
    #Wait Until Page Contains    Diagnosis    timeout=10    error=None
    Click Element    ${btnsetting} 

Click logout 
    Sleep    1    reason=None
    Click Element    ${btnlogout}

Confirm logout
    Sleep    1    reason=None
    Click Element    ${btnconfirm} 

Close app
    Close Application

Click change language to setting page
    Sleep    1    reason=None
    Click Element    ${ChangeLanguage} 

Click done
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnConfirm
    Click Element    ${btnDondomain}

Click select Leakage
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtLeakage
    Click Element    ${btntxtLeakage}

Click judgement result
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtComment
    Click Element   ${btnedtcomment}

Click repair method
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtRepairMethod
    Click Element   ${edtRepairMethod}
   
Fill comment
    Click Element    ${btnedtcomment}   
    FOR    ${comment}    IN    Judgement
           Input Text    id=com.tdem.tdiag.dev:id/edtComment   ${comment} 
    END
    Press Keycode    4    metastate=None

Fill comment repair method
    Click Element    ${edtRepairMethod}   
    FOR    ${comment}    IN    repair
           Input Text    id=com.tdem.tdiag.dev:id/edtRepairMethod   ${comment} 
    END
    Press Keycode    4    metastate=None

Edit Fill comment
    Click Element    ${btnedtcomment}   
    FOR    ${comment}    IN    Editcoment
           Input Text    id=com.tdem.tdiag.dev:id/edtComment   ${comment} 
    END
    Press Keycode    4    metastate=None

Click submit  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnSubmit
    Click Element    ${btnsubmit}
    Sleep    1    reason=None

Click guideline Leakage
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtTitleLeakage
    Sleep    1    reason=None
    Click Element    ${titleLeakage}
    Swipe Right to Left guideline Leakage
    Swipe Right to Left guideline Leakage
    Swipe Left to Right guideline Leakage
    Swipe Left to Right guideline Leakage
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnNext
    Click Element     ${next} 

Select picture Highlight
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvHighlight
    Click Element    ${imvHighlight} 
    Click Element    ${selectpic}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imgPhotoEditorImage
    Click Element    ${btnclosehighlight}
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnCameraSave
    Click Text   Save
    Sleep    3    reason=None

Click guideline Finger
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtTitleFinger    timeout=10
    Click Element    ${titleFinger} 
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvContent    timeout=10
    Click Element    ${piccontent}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvClose    timeout=10
    Click Element    ${btnclose}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnNext
    Click Element     ${next} 

Add finger Image
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvFinger
    Click Element    ${imvFinger} 
    Sleep    1    reason=None 

Click security and privacy
    Click Element    ${btnsecurity}
    Wait Until Page Contains    Security    timeout=5    error=None
    Click Element    ${btnsecurity}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}

Click confirm change PIN
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element    ${btnconfirm} 

Click photo take OCR vin
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/iv_camera
    Click Element    ${OCRVIN}   

Click photo take OCR katashiki
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/iv_camera
    Click Element    ${OCRKata}

Alert OCR cannot read
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element    ${btnconfirm}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtCancel
    Click Element    ${btncancelOCR}

Alert input incomplete vehicle information
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvMessage
    Click Element    ${btnNext} 
    Wait Until Page Contains    Please input VIN No. (13–17 Digits)    timeout=5    error=None
    Wait Until Page Contains    Please input Katashiki (12–14 Digits)    timeout=5    error=None
    
Click home button then select AppTDEM 
    Press Keycode    187    metastate=None
    Sleep    1    reason=None
    Kill App
    Sleep    1    reason=None
    #Swipe Up choose menu T-dem
    Click Text    ${AppTDEM}

Keep Keyboard
    Press Keycode    4    metastate=None

Click back page to Pin
    Press Keycode    4    metastate=None
    Press Keycode    4    metastate=None

Click Back page to Info
    Wait Until Page Contains    Diagnosis    timeout=10    error=None
    Press Keycode    4    metastate=None

Click Back page
    Sleep    2    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imgBack    timeout=10
    Click Element    ${imgBack} 

Alert confirm exit vehicle diagnosis
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}  

Click app AppTDEM
    Click Text    ${AppTDEM}

Click delete image
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvRemove
    Click Element    ${imvRemove1} 

Alert confirm delete image
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvTitleAlert
    Click Element    ${btnconfirm}

Click delete photo Highlight
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvRemoveHighlight
    Click Element    ${imvRemoveHighlight}    

Click delete photo Finger
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvRemoveFinger
    Click Element    ${imvRemoveFinger}    

Expand and UnExpand group parts
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=10
    Click Element    ${Diagnosis}
    Sleep    0.5    reason=None
    Click Element    ${Diagnosis}
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None

Expand Test DUMMY
    Click Element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[5]/android.view.ViewGroup

Expand Diagnosis
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=60
    Click Text    Diagnosis
    Sleep    1    reason=None

Expand DataCollection
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=60
    Click Text    Data

Expand EDER Check Sheet
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=60
    Click Text    EDER

Expand Guideline
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=60
    Click Text    Guideline


Check language Thai in parts page
    Click Element    ${Diagnosis} 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=10
    Page Should Contain Text    เทอร์โบ 
    Page Should Contain Text    โช๊คอัพ  
    Click Element    ${Diagnosis}                                                                                                                                  
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Page Should Contain Text    ซีลท้ายเครื่อง 
    Page Should Contain Text    ประเก็นฝาครอบวาล์ว
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None
    Page Should Contain Text    พวงมาลัย
    Page Should Contain Text    เบาะนั่ง 
    Page Should Contain Text    จบการทำงาน

Check language Vietnam in parts page
    Click Element    ${Diagnosis}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=10
    Page Should Contain Text    TURBO
    Page Should Contain Text    CHARGER 
    Page Should Contain Text    SHOCK 
    Page Should Contain Text    ABSORBER 
    Click Element    ${Diagnosis}                                                                                                                                     
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.8    reason=None
    Page Should Contain Text    REAR ENGINE 
    Page Should Contain Text    OIL SEAL
    Page Should Contain Text    CYLINDER 
    Page Should Contain Text    HEAD
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None
    Page Should Contain Text    STEERING
    Page Should Contain Text    SEAT 
    Page Should Contain Text    HOÀN TẤT KIỂM TRA


Check language Bahasa in parts page
    Click Element    ${Diagnosis}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=10
    Page Should Contain Text    TURBO
    Page Should Contain Text    CHARGER 
    Page Should Contain Text    SHOCK 
    Page Should Contain Text    ABSORBER 
    Click Element    ${Diagnosis}                                               
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.8    reason=None
    Page Should Contain Text    REAR ENGINE 
    Page Should Contain Text    OIL SEAL
    Page Should Contain Text    CYLINDER 
    Page Should Contain Text    HEAD
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None
    Page Should Contain Text    STEERING
    Page Should Contain Text    SEAT 
    Page Should Contain Text    SELESAI PENGECEKAN


Check language Chinese in parts page
    Click Element    ${Diagnosis}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=10
    Page Should Contain Text    渦輪增壓器
    Page Should Contain Text    避震器 
    Click Element    ${Diagnosis}
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.8    reason=None
    Page Should Contain Text    曲軸後油封
    Page Should Contain Text    氣缸床墊
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None
    Page Should Contain Text    方向盤 
    Page Should Contain Text    座椅
    Page Should Contain Text    完成檢查

Check language eng in parts page
    Click Element    ${Diagnosis} 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=10
    Page Should Contain Text    TURBO 
    Page Should Contain Text    CHARGER
    Page Should Contain Text    SHOCK 
    Page Should Contain Text    ABSORBER
    Click Element    ${Diagnosis}
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.8    reason=None
    Page Should Contain Text    REAR ENGINE 
    Page Should Contain Text    OIL SEAL
    Page Should Contain Text    CYLINDER 
    Page Should Contain Text    HEAD
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None
    Page Should Contain Text    STEERING
    Page Should Contain Text    SEAT 
    Page Should Contain Text    COMPLETE CHECKING 

Verify Hilux model show valid in each category
    Click Element    ${Diagnosis} 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=10
    Page Should Contain Text    TURBO 
    Page Should Contain Text    CHARGER
    Page Should Contain Text    SHOCK 
    Page Should Contain Text    ABSORBER
    Click Element    ${Diagnosis}
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.8    reason=None
    Page Should Contain Text    REAR ENGINE 
    Page Should Contain Text    OIL SEAL
    Page Should Contain Text    CYLINDER 
    Page Should Contain Text    HEAD
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None
    Page Should Contain Text    STEERING
    Page Should Contain Text    SEAT 
    Page Should Contain Text    COMPLETE CHECKING 
   
Verify Vios model show valid in each category
    Click Back page
    Alert confirm exit vehicle diagnosis
    Click Model
    Click done
    Click Confirm
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/header_model    timeout=60
    Page Should Contain Text    V-BELT 
    Page Should Contain Text    TENSIONER
    Page Should Contain Text    SHOCK 
    Page Should Contain Text    ABSORBER
    Click Element    ${Diagnosis}
    Sleep    0.5    reason=None
    Click Element    ${Guideline}
    Sleep    0.8    reason=None
    Page Should Contain Text    REAR ENGINE 
    Page Should Contain Text    OIL SEAL
    Click Element    ${Guideline}
    Sleep    0.5    reason=None
    Click Element    ${DataCollection}
    Sleep    0.5    reason=None
    Page Should Contain Text    STEERING
    Page Should Contain Text    SEAT 
    Page Should Contain Text    WATER PUMP 
    Page Should Contain Text    COMPLETE CHECKING 
    Click Element    ${Diagnosis} 
    
Select Guildeline Judgement    
    Wait Until Element Is Visible    class=android.view.ViewGroup    timeout=60
    Click Element    ${Guideline}

DISAGREE Button
    Wait Until Element Is Visible    ${btn_should_repair}    timeout=60
    Click Element    ${btn_should_repair}

Click edit judgement result
    Wait Until Element Is Visible    ${ivEditPhotoDiagFeedback}    timeout=60
    Click Element    ${ivEditPhotoDiagFeedback}   

Click delete judgement result
    Wait Until Element Is Visible    ${ivDeletePhotoDiagFeedback}    timeout=60
    Click Element    ${ivDeletePhotoDiagFeedback}

