*** Keywords ***
Check Phone Number
    [arguments]     ${phone_number}
    Create Session  checkPhoneSession   ${COMMON.base_url}
    ${body}=    Create Dictionary   phone=${phone_number}
    ${header}=  Create Dictionary   Content-Type=application/json
    ${response}=    POST On Session     checkPhoneSession   /v1/phone/check     json=${body}    headers=${header}
    ${status_code}=     convert to string   ${response.status_code}
    ${res_body}=    convert to string     ${response.content}
    Set Test Variable       ${status_code}
    Set Test Variable       ${res_body}

Result Should Be Success Of P1
    should be equal     ${status_code}     200
    should contain  ${res_body}     home phone

Result Should Be Success Of P2
    should be equal     ${status_code}     200
    should contain  ${res_body}     mobile phone