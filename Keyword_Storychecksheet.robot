*** Settings ***
Variables         ${CURDIR}/Common_config.yaml
Resource          ${CURDIR}/Keyword_login_photo.robot
Library           BuiltIn
Library           AppiumLibrary
Library           String


*** Variables ***
${Letters}    0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-
${i-tvQuestion}        id=com.tdem.tdiag.dev:id/tvQuestion
${Attachment}          id=com.tdem.tdiag.dev:id/txtName
${btnPreviosInLayout}  id=com.tdem.tdiag.dev:id/btnPreviosInLayout
${btnNextInLayout}     id=com.tdem.tdiag.dev:id/btnNextInLayout
${btnRetry}            id=com.tdem.tdiag.dev:id/btnRetry
${btnPreview}          id=com.tdem.tdiag.dev:id/btnPreview
${btnPreviewSmall}     id=com.tdem.tdiag.dev:id/btnPreviewSmall
${numberic}            id=com.tdem.tdiag.dev:id/edtAnswer
${redo}                id=com.tdem.tdiag.dev:id/btnSubmit
${btnCancle}           id=com.tdem.tdiag.dev:id/btnCameraCancel
${btncloseCropephoto}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.FrameLayout



*** Keywords ***

User dev Story checksheet TH
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Click Element    ${clickeditUserID}  
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernameTH}}
    Press Keycode    4    metastate=None

Password dev Story checksheet TH
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editPassword    timeout=10  
    Click Element    ${clickeditPassword}
    Input Text    id=com.tdem.tdiag.dev:id/editPassword    ${passwordTH}
    Press Keycode    4    metastate=None

User dev Story checksheet MY
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editUserID
    Click Element    ${clickeditUserID}  
    Input Text    id=com.tdem.tdiag.dev:id/editUserID    ${usernamemy}
    Press Keycode    4    metastate=None

Password dev Story checksheet MY
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/editPassword    timeout=10  
    Click Element    ${clickeditPassword}
    Input Text    id=com.tdem.tdiag.dev:id/editPassword    ${passwordmy}
    Press Keycode    4    metastate=None

VIN-No : Acceptance 33 -1
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    T    E    S    C    S    C    A    M    R    Y    C    H    K    S    H    T    1
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
    Press Keycode    4    metastate=None
    Click Element    ${txtKatashiki}        

VIN-No : Acceptance 20 -1
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    T    E    S    P    S    H    I    L    U    X    C    H    K    S    H    T    1
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
    Press Keycode    4    metastate=None
    Click Element    ${txtKatashiki}     


VIN-No : Acceptance 62-3
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    T    E    S    T    S    A    A    V    A    N    Z    A    3    2    1
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
    Press Keycode    4    metastate=None
    Click Element    ${txtKatashiki}


VIN-No : Story 17 : Acceptance 17-3
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    T    E    S    T    S    A    A    V    A    N    Z    A    1    2    3
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
    Press Keycode    4    metastate=None
    Click Element    ${txtKatashiki}

VIN-No : Story 18 : Scenario 1 : Thailand 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R     0     C     B     8     D     C     6     0     0     2     6     4     2     9     9
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END

VIN-No : Story 18 : Scenario 2 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    2    K    L    3    B    X    9    0    1    0    0    3    1    0    6   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
VIN-No : Story 18 : Scenario 3 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    2    B    K    3    B    E    7    0    0    0    0    6    2    0    6   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END  

VIN-No : Story 19 : Scenario 4 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    2    B    C    3    F    3    4    0    1    3    4    5    7    4    7      
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END

VIN-No : Story 19 : Scenario 5 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    0    H    B    3    F    S    6    0    0    1    5    4    2    8    4   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
VIN-No : Story 20 : Scenario 6 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    2    B    3    3    F    3    3    0    1    2    9    6    4    5    8   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END

VIN-No : Story 21 : Scenario 7 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    0    J    B    8    D    C    6    0    2    7    8    2    9    2    6   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
    Press Keycode    4    metastate=None


VIN-No : Story 21 : Scenario 8 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=10
    Sleep    1    reason=None
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    0    E    B    8    C    C    8    0    1    1    2    2    8    1    6   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
VIN-No : Story 22 : Scenario 9 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=240
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    P    N    1    B    A    3    C    D    8    0    3    6    9    4    1    7    9
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
VIN-No : Story 22 : Scenario 10 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=240
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    P    N    1    F    B    8    C    B    1    0    3    0    5    8    9    5    6   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END 
VIN-No : Story 22 : Scenario 11 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=240
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    0    J    B    8    C    D    1    0    2    1    5    1    3    1    7   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END  
VIN-No : Story 23 : Scenario 12 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    0    E    B    8    C    C    8    0    1    1    2    2    8    1    6   
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
VIN-No : Story 24 : Scenario 13 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtVin    timeout=20
    Click Element    ${txtVIN}
    FOR    ${Datatest}    IN    M    R    0    E    B    8    C    C    8    0    1    1    2    2    8    1    6 
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
    
Katashiki : Story 18 : Scenario 1 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    3    5    R    -    C    T    F    L    H    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 18 : Scenario 2 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    Z    G    X    1    1    R    -    C    H    X    E    G    E     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 18 : Scenario 3 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    Z    R    E    2    1    0    R    -    G    E    X    G    G    T    
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 19 : Scenario 4 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    N    S    P    1    5    2    R    -    A    E    X    R    B    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 19 : Scenario 5 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    5    5    R    -    S    T    T    M    H    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 20 : Scenario 6 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    N    S    P    1    5    2    R    -    A    E    X    R    K    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 21 : Scenario 7 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    3    5    R    -    C    T    T    S    H    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 21 : Scenario 8 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    2    2    R    -    C    T    F    X    Y    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 22 : Scenario 9 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    2    6    R    -    D    E    T    H    H    E     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 22 : Scenario 10 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    2    5    R    -    B    E    F    X    H    E     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END

Katashiki : Story 22 : Scenario 11 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    2    2    R    -    D    T    M    S    Y    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END

Katashiki : Story 23 : Scenario 12 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    2    2    R    -    C    T    F    X    Y    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END
Katashiki : Story 24 : Scenario 13 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtKatashiki
    Click Element    ${txtKatashiki}
    FOR    ${Datatest}    IN    G    U    N    1    2    2    R    -    C    T    F    X    Y    T     
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
        ...  ELSE IF    '${Datatest}' == '${Letters}[10]'    ENG A
        ...  ELSE IF    '${Datatest}' == '${Letters}[11]'    ENG B
        ...  ELSE IF    '${Datatest}' == '${Letters}[12]'    ENG C
        ...  ELSE IF    '${Datatest}' == '${Letters}[13]'    ENG D
        ...  ELSE IF    '${Datatest}' == '${Letters}[14]'    ENG E
        ...  ELSE IF    '${Datatest}' == '${Letters}[15]'    ENG F
        ...  ELSE IF    '${Datatest}' == '${Letters}[16]'    ENG G
        ...  ELSE IF    '${Datatest}' == '${Letters}[17]'    ENG H
        ...  ELSE IF    '${Datatest}' == '${Letters}[18]'    ENG I
        ...  ELSE IF    '${Datatest}' == '${Letters}[19]'    ENG J
        ...  ELSE IF    '${Datatest}' == '${Letters}[20]'    ENG K
        ...  ELSE IF    '${Datatest}' == '${Letters}[21]'    ENG L
        ...  ELSE IF    '${Datatest}' == '${Letters}[22]'    ENG M
        ...  ELSE IF    '${Datatest}' == '${Letters}[23]'    ENG N
        ...  ELSE IF    '${Datatest}' == '${Letters}[24]'    ENG O
        ...  ELSE IF    '${Datatest}' == '${Letters}[25]'    ENG P
        ...  ELSE IF    '${Datatest}' == '${Letters}[26]'    ENG Q
        ...  ELSE IF    '${Datatest}' == '${Letters}[27]'    ENG R
        ...  ELSE IF    '${Datatest}' == '${Letters}[28]'    ENG S
        ...  ELSE IF    '${Datatest}' == '${Letters}[29]'    ENG T
        ...  ELSE IF    '${Datatest}' == '${Letters}[30]'    ENG U
        ...  ELSE IF    '${Datatest}' == '${Letters}[31]'    ENG V
        ...  ELSE IF    '${Datatest}' == '${Letters}[32]'    ENG W
        ...  ELSE IF    '${Datatest}' == '${Letters}[33]'    ENG X
        ...  ELSE IF    '${Datatest}' == '${Letters}[34]'    ENG Y
        ...  ELSE IF    '${Datatest}' == '${Letters}[35]'    ENG Z
        ...  ELSE IF    '${Datatest}' == '${Letters}[36]'    MINUS
    END

Mileage : Story 18 : Scenario 1 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    4    0    1    3    0     
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
Mileage : Story 18 : Scenario 2 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    3    1    3    6    7     
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
Mileage : Story 18 : Scenario 3 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    3    4    7    6    0     
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
Mileage : Story 19 : Scenario 4 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    2    3    7    6    7    
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
Mileage : Story 19 : Scenario 5 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    6    3    7    4    7    
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
Mileage : Story 20 : Scenario 6 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    1    1    2    2    5    
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
Mileage : Story 21 : Scenario 7 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    2    4    5    2    2    
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
Mileage : Story 21 : Scenario 8 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    3    2    0    0    5    
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
Mileage : Story 22 : Scenario 9 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    3    3    1    0    2    
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
Mileage : Story 22 : Scenario 10 : Malaysia
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    3    7    2    8    8    
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
Mileage : Story 22 : Scenario 11 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    2    9    3    6    6   
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
Mileage : Story 23 : Scenario 12 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    3    2    0    0    5    
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
Mileage : Story 24 : Scenario 13 : Thailand
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtMileage
    Click Element    ${txtMileage}
    FOR    ${Datatest}    IN    3    2    0    0    5    
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

Click Attachment
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/txtName     timeout=20
    Click Element    ${Attachment}

Take a photo for Attachment
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon    timeout=20
    Click Element    ${btntakephoto} 
    #Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCancel        timeout=20
    #Sleep    1.5    reason=None
    #Click Element    ${btnCancle}
    #Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon    timeout=20
    #Click Element    ${btntakephoto}  
    Sleep    1.5    reason=None
    Click Element    ${btncloseCropephoto}
    Sleep    1.3    reason=None
    Click Element At Coordinates      824     2084
    #Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout[2]/android.widget.TextView
    Sleep    1.3    reason=None


Take a photo for Attachment no Cropephoto
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/layoutCaptureIcon    timeout=20
    Click Element    ${btntakephoto} 
    Sleep    1.5    reason=None
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.TextView
    Sleep    1.2    reason=None
    Click Element    ${btntakephoto}  
    Sleep    1.5    reason=None
    Click Text    Submit
    Sleep    1    reason=None


Next Question
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnNextInLayout
    Click Element    ${btnNextInLayout} 
    Sleep    0.2    reason=None

Next Question 1  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnSubmit
    Click Element    ${btnsubmit}

Submit Question  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnSubmit
    Click Element    ${btnsubmit}
   
Submit Result ? 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}
    Sleep    15    reason=None

Submit Result checksheet
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}
    Sleep    1    reason=None

Finish checking on vehicle Vin No.
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}

i guideline
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvQuestion    timeout=20
    Click Element    ${i-tvQuestion}
    Sleep    1    reason=None
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvContent    timeout=20
    Click Element    ${piccontent}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/imvClose    timeout=20
    Click Element    ${btnclose}
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnNext    timeout=20
    Click Text    OK
    Sleep    1    reason=None

i guideline water pump
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/tvQuestion    timeout=20
    Click Element    ${i-tvQuestion}
    Sleep    2    reason=None

Checked Radio equal and Check box True
    Wait Until Element Is Visible    class=android.widget.RadioButton
    ${clickable}=    Get Element Attribute    class=android.widget.RadioButton    clickable
    Run Keyword If     '${clickable}' == 'false'    Next Question 1
    ...    ELSE        Log To Console    ${clickable}    stream=STDOUT    no_newline=False 

Input numberic
    Click Element    ${numberic}    
    Press Keycode    7    metastate=None
    Press Keycode    8    metastate=None
    Press Keycode    9    metastate=None
    Press Keycode    10    metastate=None
    Press Keycode    11    metastate=None
    Press Keycode    12    metastate=None
    Press Keycode    13    metastate=None
    Press Keycode    14    metastate=None

Input Customer contaminants
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    class=android.widget.EditText    ${TESTCOMMENT}

Input Customer complaint 33-1 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${complaint}

Input Customer complaint 34-1 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${Employee}

Input Customer complaintQ3
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    class=android.widget.EditText    ${complaintQ3}

Input Customer complaint test 33-1 42
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    class=android.widget.EditText    ${test 33-1 42 }

Input Customer complaint Highway
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${Highway}

Input Customer complaint Highway1
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${Highway1}

Input Customer complaint City
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[2]/android.widget.EditText    ${City}

Input Customer complaint damage
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${damage}

Input Customer complaint 120
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText   ${N120}

Input Customer complaint 0
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[2]/android.widget.EditText    ${N0}

Input Customer complaint 1
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${N100}

Input Customer complaint 100-1
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${N100}

Input Customer complaint 100
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${N100}

Input Customer complaint 100-2
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[2]/android.widget.EditText    ${N100}

Input Customer complaint 3
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${N3}

Input Customer complaint 90
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${N90}

Input Customer complaint 10
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[2]/android.widget.EditText    ${N10}

Input Customer complaint 20
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${N10}

Input Customer complaint 50-1
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    class=android.widget.EditText     ${Highway1}

Input Customer complaint 50-2
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[2]/android.widget.EditText     ${Highway1}

Input Customer complaint Steering Angle1
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${N140}

Input Customer complaint Steering Angle2
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[2]/android.widget.EditText    ${N140}

Input Customer complaint Steering Angle3
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[3]/android.widget.EditText    ${N140}

Input Customer complaint mountain
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    class=android.widget.EditText    ${mountain}

Input Customer complaint Vehicle Load1
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[1]/android.widget.EditText    ${N2}

Input Customer complaint Vehicle Load2
    Wait Until Element Is Visible    class=android.widget.EditText
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout[2]/android.widget.EditText    ${N2}


Input other comment 250 characters
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${COMMENT250}

Input other comment more than 250 characters
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${COMMENT>250}

Delete other comment
    Clear Text    id=com.tdem.tdiag.dev:id/edtAnswer

Click Retry
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnRetry
    Click Element     ${btnRetry}

Click Redo
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnSubmit
    Click Element     ${redo}


Click Redo checksheet
    Sleep   1
    Click Text     REDO

Redo confirmmation
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}
    Sleep   1

Are you sure to Delete Audio
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/buttonConfirm
    Click Element    ${btnconfirm}

Previous
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPreviosInLayout   timeout=30
    Click Element    ${btnPreviosInLayout}
    Sleep   1

Preview
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPreview
    Click Element    ${btnPreview}

Preview2
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/btnPreviewSmall
    Click Element    ${btnPreviewSmall}

Part checked
    Wait Until Page Contains Element    id=com.tdem.tdiag.dev:id/iv_check    timeout=30    error=None

Part not checked
    wait Until Page Does Not Contain Element    id=com.tdem.tdiag.dev:id/iv_check   timeout=20    error=None

The water pump does not have this model
    wait Until page Does Not Contain    Water pump     timeout=20    error=None

The part water pump have to this model
    Wait Until Page Contains    WATER PUMP    timeout=20    error=None

Validate single chioce
    Wait Until Element Is Visible    class=android.widget.RadioButton  
    ${checked1}=    Get Element Attribute    Xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[1]    checked
    ${checked2}=    Get Element Attribute    Xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]    checked
    ${checked3}=    Get Element Attribute    Xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[3]    checked

    FOR     ${index}    IN    ${checked1}       ${checked2}       ${checked3}
            Run Keyword If    '${checked1}' == 'true'    singlechoicetrue
            ...    ELSE IF   '${checked2}' == 'false'    singlechoicefalse
            ...    ELSE IF   '${checked3}' == 'false'    singlechoicefalse
    END

Validate single chioce for 2 answer
    Wait Until Element Is Visible    class=android.widget.RadioButton  
    ${checked1}=    Get Element Attribute    Xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[1]    checked
    ${checked2}=    Get Element Attribute    Xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]    checked

    FOR     ${index}    IN    ${checked1}       ${checked2}
            Run Keyword If    '${checked1}' == 'true'    singlechoicetrue
            ...    ELSE IF   '${checked2}' == 'false'    singlechoicefalse
    END

singlechoicefalse 
    Should Match Regexp    false    false    msg=None    values=false

singlechoicetrue
    Should Match Regexp    true    true    msg=None    values=false


Radio button disable        
    ${disable}=    Get Element Attribute       class=android.widget.RadioButton    clickable
    Run Keyword If    '${disable}' == 'true'    singlechoicetrue
    ...    ELSE IF   '${disable}' == 'false'    singlechoicefalse


Button next should Disable
    Click Element   ${btnSubmit} 
    Wait Until Page Does Not Contain      Question 2


Button next should Enabled
    Element Should Be Enabled    ${btnSubmit}

Check counting 0/255 to string
    Wait Until Page Contains    0/255    timeout=20    error=None
    Sleep   1
    Click Element 	 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout/android.widget.EditText
    Input Text    class=android.widget.EditText    ${COMMENT250}
    Wait Until Page Contains    255/255    timeout=10    error=None
    Clear Text    class=android.widget.EditText
    Wait Until Page Contains    0/255    timeout=10    error=None
    Input Text    class=android.widget.EditText    ${COMMENT>250}
    Wait Until Page Contains    255/255    timeout=10    error=None
    Press Keycode    4    metastate=None


Check counting 0/5 to int
    Wait Until Page Contains    0/5    timeout=10    error=None
    Click Element 	 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.LinearLayout/android.widget.EditText
    Input Text    class=android.widget.EditText    ${COMMENTINT5}
    Wait Until Page Contains    5/5    timeout=10    error=None
    Clear Text    class=android.widget.EditText
    Wait Until Page Contains    0/5    timeout=10    error=None
    Input Text    class=android.widget.EditText    ${COMMENTINT>5}
    Press Keycode    4    metastate=None

Check counting 0/6 to int
    Wait Until Page Contains    0/6    timeout=10    error=None
    Click Element 	 id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    class=android.widget.EditText    ${COMMENTINT6}
    Wait Until Page Contains    6/6    timeout=10    error=None
    Clear Text    class=android.widget.EditText
    Wait Until Page Contains    0/6    timeout=10    error=None
    Input Text    class=android.widget.EditText    ${COMMENTINT>6}
    Press Keycode    4    metastate=None

Check counting 0/255 to string for textbox2
    Wait Until Page Contains    0/255    timeout=20    error=None
    Sleep   1
    Click Element 	 id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    class=android.widget.EditText    ${COMMENT250}
    Wait Until Page Contains    255/255    timeout=10    error=None
    Clear Text    class=android.widget.EditText
    Wait Until Page Contains    0/255    timeout=10    error=None
    Input Text    class=android.widget.EditText    ${COMMENT>250}
    Wait Until Page Contains    255/255    timeout=10    error=None
    Press Keycode    4    metastate=None






#Answer
Answer Input lot cod
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${CODE}

Answer Test other products
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${OTHERPRODUCT}

Answer Test comment
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${TESTCOMMENT}
    
Answer Test other failure parts
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${FAILUREPART}

Answer Test other phenomenon
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/edtAnswer
    Input Text    id=com.tdem.tdiag.dev:id/edtAnswer    ${OTHERPHENOMENON}

Answer Yes
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Sleep  2
    Click Text    Yes

Answer Yes EDER
    Sleep  1
    Click Element At Coordinates      184     977

Answer Yes EDER1
    Sleep  1
    Click Element At Coordinates      184     916

Answer No
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    No

Answer Yes (Can hear since brand new car)
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Yes (Can hear since brand new car)
Answer No (Noise happened later)
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Answer No (Noise happened later)

Answer Brown
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Brown
Answer Red
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Red
Answer Gray
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Gray

Answer Oil seal leak from inner
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Oil seal leak from inner
Answer Acknowledged
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Acknowledged
Answer XH1127N
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    XH1127N


Answer Steering Wheel
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Steering Wheel
Answer Horn Pad
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Horn Pad
Answer Paddle Shift Switch
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Paddle Shift Switch
Answer Steering Switch
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Steering Switch
Answer Cruise Control lever
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Cruise Control lever
Answer Ornament
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Ornament
Answer Other
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Other

Answer Other1
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Other

Answer Peel
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Peel
Answer Wear
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Wear
Answer Crack
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Crack
Answer Discolor
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Discolor

Answer Air Freshener / Perfume
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Air Freshener / Perfume
Answer Alcohol Gel
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Alcohol Gel
Answer Wet Tissue
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Wet Tissue
Answer Hand Cream
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Hand Cream
Answer Cleaning Cloth
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Cleaning Cloth
Answer Interior Wax / Cleaning product
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Interior Wax / Cleaning product

Answer Cat
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Cat  
Answer Dog
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Dog  
Answer Rabbit
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Rabbit
Answer Bird
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Bird

Answer Uncertain
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[1]
Answer NG
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]

Answer Below L
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Below L
Answer Below L ->F
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Below L ->F
Answer F level
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    F level
Answer Over F level
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Over F level
Answer Private Car 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Private Car
Answer Taxi / Company Car / Commercial 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Taxi / Company Car / Commercial
Answer Not sure 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Not sure

Answer Front Left
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Front Left
Answer Front Right
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Front Right
Answer Rear Left
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Rear Left
Answer Rear Right
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Rear Right

Answer w/ cover
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    w/ cover
Answer w/o cover
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    w/o cover

Answer Personal Car
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Personal Car
Answer Taxi
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Taxi

Answer Male  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Male
Answer Female  
    Sleep   0.5
    Click Text    Female
    
Answer Under 20  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Under 20
Answer 20-30  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    20-30
Answer 30-40  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    30-40
Answer 40-50  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    40-50
Answer 50-60 
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    50-60
Answer Over60  
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Over60

Answer Accerelation
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Accerelation
Answer Deaccerelation
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Deaccerelation
Answer Constant speed
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Constant speed
Answer ldling
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Idling

Answer Inside cabin
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Inside cabin
Answer Outside cabin
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Outside cabin
Answer Both inside and outside cabin
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Both inside and outside cabin

Answer Close window
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Close window
Answer Open window
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Open window

Answer Accept
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Accept
Answer Not Accept
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Not Accept

Answer Indoor parking
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Indoor parking
Answer Outdoor parking
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Outdoor parking
Answer Both indoor & Outdoor parking
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Both indoor & outdoor parking

Answer Unknown
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Unknow

Answer Unknown checkbox
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Unknow

Answer Tight plug
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Tight plug

Answer Full
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Full
Answer Between Full & Min
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Between Full & Min
Answer Lower than Min
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Text    Lower than Min

Answer CheckBox 1
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    1
Answer CheckBox 2
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    2
Answer CheckBox 3
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    3
Answer CheckBox 4
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    4
Answer CheckBox 5
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    5
Answer CheckBox 6
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    6
Answer CheckBox 7
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    7
Answer CheckBox 8
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    8


Answer Redio 3
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    3
Answer Redio 4
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    4
Answer Redio 5
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    5
Answer Redio 6
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    6
Answer Redio 7
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    7
Answer Redio 8
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    8


Answer 2Y
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    2Y

Answer 2N
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    2N

Answer Convolution
    Sleep   1
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text   Convolution

Answer POA
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    POA

Answer New
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    New

Answer Commercial
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Commercial

Answer 10s
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    10s

Answer Highway
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Highway
    
Answer City
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    City

Answer ON 
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    ON

Answer OFF
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    OFF

Answer Any Speed
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Any Speed

Answer Cool
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Cool

Answer Any Shift
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Any Shift

Answer Steady Angle
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Steady Angle

Answer In Operation
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    In Operation

Answer No Operation
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    No Operation

Answer No Relation
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    No Relation

Answer No Relation radio
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    No Relation

Answer Outside
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Outside

Answer Driver seat
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Driver seat

Answer Passenger seat
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Passenger seat

Answer Rr No.1 row seat LH side
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Rr No.1 row seat LH side

Answer Rr No.1 row seat RH side
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Rr No.1 row seat RH side
    
Answer Rr No.2 row seat LH side
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Rr No.2 row seat LH side

Answer Rr No.2 row seat RH side
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Rr No.2 row seat RH side

Answer ALL
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    ALL

Answer Under Floor
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Under Floor

Answer Right Front
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Right Front

Answer Sometime
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Sometime

Answer while Holding the Angle (LH)
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    while Holding the Angle (LH)
   
Answer While Operating (LH)
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    While Operating (LH)

Answer Regardless of the Angle
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Regardless of the Angle

Answer Normal
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Normal

Answer Cityroad
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Cityroad

Answer Flat Road
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Flat Road

Answer Uphill
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Uphill

Answer Paved
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Paved

Answer Asphalt
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Asphalt

Answer Straight
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Straight

Answer Wet
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Wet

Answer Take-Off
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Take-Off

Answer Steady Speed
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Steady Speed

Answer Acceleration
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Acceleration

Answer Specific Speed
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Specific Speed

Answer Number of Passenger
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Number of Passenger

Answer Baggage
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Baggage

Answer AUTO
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Auto

Answer Private
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Private

Answer Weekday
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Weekday

Answer Weekend
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Weekend

Answer Day Time
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Day Time

Answer Night Time
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Night Time

Answer Paved Roads
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Paved Roads
    
Answer Unpaved Roads
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Unpaved Roads

Answer Trafic jams
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Trafic jams

Answer Home
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Home

Answer Fresh
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Fresh

Answer AUTO Checkbox 
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    AUTO
  
Answer Light
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Light

Answer Depress
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    Depress

Answer Dirty
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Dirty

Answer Stop driving
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Stop driving

Answer Leakage
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Element At Coordinates      161     944

Answer 1
    Wait Until Element Is Visible    class=android.widget.CheckBox
    Click Text    1

Answer Contaminants 
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Contaminants

Answer Only Left
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Only Left

Answer Only Right
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Only Right

Answer Rust
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    Rust

Answer On small
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    On

Answer No Focus
    Wait Until Element Is Visible    id=com.tdem.tdiag.dev:id/rdgQuestion
    Click Element At Coordinates      159     1074

Answer OK
    Wait Until Element Is Visible    class=android.widget.RadioButton
    Click Text    OK

Preview next PSGear
    FOR    ${index}    IN RANGE    23 
         Next Question
    END

Preview next CHASSIS
    FOR    ${index}    IN RANGE    57 
         Next Question
    END

Preview next ENGIN
    FOR    ${index}    IN RANGE    54 
         Next Question
    END

Redo next CHASSIS
    FOR    ${index}    IN RANGE    58 
         Next Question
    END

Answer with cover
    Click Text    with cover




#Key Number ABC
Number 0
    Press Keycode    7    metastate=None
Number 1
    Press Keycode    8    metastate=None
Number 2
    Press Keycode    9    metastate=None
Number 3
    Press Keycode    10    metastate=None
Number 4
    Press Keycode    11    metastate=None
Number 5
    Press Keycode    12    metastate=None
Number 6
    Press Keycode    13    metastate=None
Number 7
    Press Keycode    14    metastate=None
Number 8
    Press Keycode    15    metastate=None
Number 9
    Press Keycode    16    metastate=None
ENG A
    Press Keycode    29    metastate=None
ENG B
    Press Keycode    30    metastate=None
ENG C
    Press Keycode    31    metastate=None
ENG D
    Press Keycode    32    metastate=None
ENG E
    Press Keycode    33    metastate=None
ENG F
    Press Keycode    34    metastate=None
ENG G
    Press Keycode    35    metastate=None
ENG H
    Press Keycode    36    metastate=None
ENG I
    Press Keycode    37    metastate=None
ENG J
    Press Keycode    38    metastate=None
ENG K
    Press Keycode    39    metastate=None
ENG L
    Press Keycode    40    metastate=None
ENG M
    Press Keycode    41    metastate=None
ENG N
    Press Keycode    42    metastate=None
ENG O
    Press Keycode    43    metastate=None
ENG P
    Press Keycode    44    metastate=None
ENG Q
    Press Keycode    45    metastate=None
ENG R
    Press Keycode    46    metastate=None
ENG S
    Press Keycode    47    metastate=None
ENG T
    Press Keycode    48    metastate=None
ENG U
    Press Keycode    49    metastate=None
ENG V
    Press Keycode    50    metastate=None
ENG W
    Press Keycode    51    metastate=None
ENG X
    Press Keycode    52    metastate=None
ENG Y
    Press Keycode    53    metastate=None 
ENG Z
    Press Keycode    54    metastate=None 
MINUS
    Press Keycode    69    metastate=None 