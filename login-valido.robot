*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demodirectory.com.br/    

*** Test Cases ***
Acessar o Site
    Open Browser         ${url}          chrome
    Go To                ${url}/profile/login.php
    Input Text           css:input[id=username]     profile@demodirectory.com
    Input Text           css:input[id=password]     abc123
    Click Element        class:form-button

    Page Should Contain     Bem-vindo(a), Test Account!
