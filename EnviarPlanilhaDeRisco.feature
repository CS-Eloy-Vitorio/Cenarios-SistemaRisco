#language: pt

Funcionalidade: EnviarPlanilhaDeRisco

Para fazer o upload da planilha, o usuário deve estar logado com o perfil de
Governança de TI.
Esta planilha de riscos para ser enviada deve conter:
-Três abas denominadas “ID do projeto”, “Nome do risco” e “Status do Risco”.
-Os status devem ser: não iniciado, vermelho, amarelo e verde.
-Os riscos devem ser: Escopo, Prazo, Orçamento, Qualidade, Falta de Recursos,
Solução Técnica, Participação do Usuário, Definições, Carência de Skills,
Performance da Solução Ambiente Técnico, Facilities, Projetos Associados,
Pendências Contratuais, Outros.
-Cada projeto contido na planilha deve ter os 15 riscos associados.
Caso ocorra alguma inconsistência dos itens (abas, status e riscos), deve exibir
uma mensagem de erro informando sobre o respectivo item inconsistente.

Contexto:
 Dado que estou logado com um usuário do perfil Governança de TI.
 E que estou na tela de envio da planilha de riscos de projeto.

 Cenário: Realizar o envio da planilha de riscos com sucesso
 Quando realizar o envio da planilha.
 Então devo visualizar a mensagem informativa de que a planilha foi enviada com
 sucesso.

 Cenário: Realizar o envio da planilha de riscos com abas inválidas
 Quando realizar o envio da planilha com abas de nomes inválidos.
 Então devo visualizar a mensagem de erro informando que as abas da planilha
 contém nomes diferentes de
 | ID do projeto   |
 | Nome do risco   |
 | Status do risco |

 Cenário: Realizar o envio da planilha de riscos com quantidade de abas inferior a 3.
 Quando realizar o envio da planilha com um número de abas inferior a 3.
 Então devo visualizar a mensagem de erro informando que a planilha contém
 número de abas diferente de 3.

 Cenário: Realizar o envio da planilha de riscos com quantidade de abas superior a 3
 Quando realizar o envio da planilha com um número de abas superior a 3.
 Então devo visualizar a mensagem de erro informando que a planilha contém
 número de abas diferente de 3.

 Cenário: Realizar o envio da planilha de riscos com status de riscos inválidos
 Quando realizar o envio da planilha contendo nomes de status inválidos.
 Então devo visualizar a mensagem de erro informando que a planilha contém nomes
de status diferentes de
| Não iniciado |
| Vermelho     |
| Amarelo      |
| Verde        |

Cenário: Realizar o envio da planilha de riscos com tipos de risco inválidos
 Quando realizar o envio da planilha contendo tipos de riscos inválidos.
 Então devo visualizar a mensagem de erro informando a planilha contém tipos de
 riscos diferentes de
| Escopo                  |
| Prazo                   |
| Orçamento               |
| Qualidade               |
| Falta de Recursos       |
| Solução Técnica         |
| Participação do Usuário |
| Definições              |
| Carência de Skills      |
| Performance da Solução  |
| Ambiente Técnico        |
| Facilities              |
| Projetos Associados     |
| Pendências Contratuais  |
| Outros                  |

Cenário: Realizar o envio da planilha de riscos com quantidade de riscos vinculados a um projeto inferior a 15
 Quando realizar o envio da planilha com um número de riscos vinculados a um
 projeto inferior a 15.
 Então devo visualizar a mensagem de erro informando que "Cada projeto existente
 no sistema deve ter apenas os 15 tipos de riscos vinculados a ele.".

Cenário: Realizar o envio da planilha de riscos com quantidade de riscos vinculados a um projeto superior a 15
 Quando realizar o envio da planilha com um número de riscos vinculados a um
 projeto superior a 15.
 Então devo visualizar a mensagem de erro informando "Cada projeto existente no
 sistema deve ter apenas os 15 tipos de riscos vinculados a ele."

Cenário: Realizar o envio da planilha de riscos com tipos de risco duplicados
 Quando realizar o envio da planilha contendo tipos de risco duplicados.
 Então devo visualizar a mensagem de erro informando a planilha contém tipos de
 riscos duplicados.
