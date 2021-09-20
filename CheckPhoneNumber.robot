*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variable ***
${base_url}=    http://localhost:6969/customer

*** Test Cases ***
Check Phone Number - P1
    Create Session  p1session   ${base_url}
    ${body}=    Create Dictionary   phone=027071588
    ${header}=  Create Dictionary   Content-Type=application/json
    ${response}=    POST On Session     p1session   /v1/phone/check     json=${body}    headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}

    #VALIDATIONS
    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}     200

    ${res_body}=    convert to string   ${response.content}
    should contain  ${res_body}     home phone

Check Phone Number - P2
    Create Session  mysession   ${base_url}
    ${body}=    Create Dictionary   phone=0648763436
    ${header}=  Create Dictionary   Content-Type=application/json
    ${response}=    POST On Session     mysession   /v1/phone/check   json=${body}   headers=${header}

    # log to console  ${response.status_code}
    # log to console  ${response.content}

    #VALIDATIONS
    ${status_code}=     convert to string   ${response.status_code}
    should be equal  ${status_code}     200
    
    ${res_body}=    convert to string     ${response.content}
    should contain  ${res_body}  mobile phone


*** Keywords ***
