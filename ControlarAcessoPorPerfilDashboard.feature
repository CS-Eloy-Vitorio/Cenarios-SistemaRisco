#language: pt

Funcionalidade: ControlarAcessoPorPerfilDashboard

Para visualizar o dashboard de riscos o usuário deve estar logado com o perfil
de CIO, se não estiver logado com este perfil, esta funcionalidade não deve
aparecer para o usuário.

Cenário: Restringir acesso à funcionalidade de visualizar dashboard para usuário de perfil inválido
  Dado que estou logado com um usuário de perfil inválido.
  E que não estou na tela de seleção de projetos para visualizar dashboard de
  riscos.
  Quando selecionar a funcionalidade de visualizar dashboard.
  Então não devo visualizar esta funcionalidade.
