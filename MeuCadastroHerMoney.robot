*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}              https://hermoney.com.br/
${BROWSER}          chrome
${LINK_COMECE}      id:menu-item-464
${Name}             css:input[name=fullName]
${email}            css:input[name=email]
${companyName}      css:input[name=companyName]
${cpf_cnpj}         css:input[name=cnpj]
${number}           css:input[name=phoneNumber]
${password}             css:input[name=password]
${passwordconfirmation}         css:input[name=passwordConfirmation]
${locator_list}                 class:sc-iCfMLu.dkvyUF
${locator_outros}               class:sc-pVTFL.cSBscQ
${checkbox}                     css:input[name=checkPolicy]
${button}                       class:sc-hGPBjI.kidBKP
                  


*** Keywords ***
Acessar pagina da plataforma HerMoney

    Open browser    url=${URL}    browser=${BROWSER}

    Click Element       ${LINK_COMECE}  

    Maximize Browser Window
    

Realizar cadastro
    
    
    Wait Until Page Contains Element        ${Name}
    Click Element                           ${Name}
    Input Text                              ${Name}        jose
    Click Element                           ${email}
    Input Text                              ${email}            teste@teste.com.br
    Click Element                           ${companyName}
    Input Text                              ${companyName}        Use K2                 
    Input Text                              ${cpf_cnpj}                 12345678912
    Input Text                              ${number}                   8599999999
    Click Element                           ${password}
    Input Text                              ${password}                Casa12345678*
    Click Element                           ${passwordconfirmation}
    Input Text                              ${passwordconfirmation}         Casa12345678*
    Click Element                           ${locator_list}        
    Get Element Count                       ${locator_list}          
    Click Element                           ${locator_outros}       
    Get Element Count                       ${locator_outros}
    Select Checkbox                         ${checkbox}
    Click Button                            ${button}
    
    

    Capture page screenshot
