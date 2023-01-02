***Settings***
Library               Collections
Library               RequestsLibrary
Variables             ./constants.py

***Keywords***
Criar Sessão
    [Arguments]        ${BASE_URL}=${api_running_url}          ${PORT}=${host_port}
    ${URL}=            Set Variable         ${BASE_URL}${PORT}
    Create Session     Session              ${URL}              verify=true     max_retries=10

Enviar Requisição GET
    [Arguments]         ${URI}
    ${resp}=           GET On Session         Session                  ${URI}       expected_status=any
    Set Test Variable       ${resp}

Validar Resultado
    Request Should Be Successful    ${resp}
