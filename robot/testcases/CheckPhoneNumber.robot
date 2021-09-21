*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot


*** Test Cases ***
Check Phone Number - P1
    Check Phone Number  021235469

Check Phone Number - P2
   Check Phone Number   0648763436

Check Phone Number - Other
    Check Phone Number  1233551478