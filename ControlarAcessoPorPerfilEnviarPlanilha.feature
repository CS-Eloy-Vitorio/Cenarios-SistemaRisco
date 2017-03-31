#language: pt

Funcionalidade: ControlarAcessoPorPerfilEnviarPlanilha

Para acessar a funcionalidade de envio da planilha de riscos, o usuário deve
estar logado com o perfil de Governança de TI, caso esteja logado com um
perfil inválido, esta funcionalidade não deve aparecer para o usuário.

Cenário: Restringir o acesso a funcionalidade de enviar planilha de risco
 Dado que estou logado com um usuário de perfil inválido.
 E que não estou na tela de envio da planilha de risco.
 Quando selecionar a funcionalidade de enviar a planilha de risco.
 Então não devo visualizar esta funcionalidade.
