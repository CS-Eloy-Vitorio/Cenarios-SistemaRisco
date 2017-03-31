#language: pt

Funcionalidade: VisualizarDashboard

Para visualizar o dashboard de riscos o usuário deve estar logado com o perfil
de CIO.
O CIO vai acessar a tela de dashboard, selecionar o projeto desejado dentre os
projetos disponíveis para a exibição.
O dashboard deve exibir as seguintes informações: Identificador do projeto,
todos os 15 tipos de riscos vinculados a este projeto e seus respectivos status.

Contexto:
 Dado que estou logado com um usuário do perfil Governança de TI.
 E que estou na tela de seleção de projetos para visualizar dashboard de riscos.

 Cenário: Posso visualizar a lista de projetos disponíveis
  Quando selecionar a lista de projetos disponíveis.
  Então devo visualizar a lista de projetos disponíveis para seleção
  | Projeto 1 |
  | Projeto 2 |
  | Projeto 3 |

 Cenário: Visualizar o dashboard de risco de um projeto específico
  Quando selecionar um projeto.
  Então devo visualizar o dashboard de riscos deste projeto com as seguintes
  informações atualizadas: Id do projeto, Nome de cada risco e seus respectivos
  status.
