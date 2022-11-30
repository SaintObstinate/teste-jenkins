***Settings***
Resource              ./get_clients.resource
Variables             ./constants.py

***Test Cases***
Validar Requisição GET
    Criar Sessão
    Enviar Requisição GET      /clients
    Validar Resultado