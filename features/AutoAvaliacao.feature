As a Estudante.
I want to capaz de me avaliar nas metas especificadas.
So that eu possa comparar minha avalia��o com a do professor.

Scenario: Auto-avalia��o completa.
Given Eu estou logado como estudante �Jo�o� 
And estou na p�gina �p�gina de autoavalia��o�.
When Eu preencho o campo �Student� das atividades �Goal 1�  com �MPA�.
And  Eu preencho o campo �Student� da atividade �Goal 2� com �MA�.
And Eu preencho o campo �Student� da atividade �Goal 3� com �MA�.
And Completo minha autoavalia��o.
Then Aparece a mensagem �Self-Evaluation is Complete� na p�gina �p�gina de autoavalia��o�.


Scenario: Auto-avalia��o completa.
Given O estudante �Jo�o� est� logado
And Est� na �p�gina de autoavalia��o�
When A atividade �Goal 1� no campo reservado para �Student� � preenchidas pelo usu�rio �Jo�o�.
And A atividade �Goal 2� no campo reservado para �Student� � preenchidas pelo usu�rio �Jo�o�.
And A atividade �Goal 3� no campo reservado para �Student� � preenchidas pelo usu�rio �Jo�o�.
And O usu�rio confirma a autoavalia��o
Then O sistema salva a avalia��o. 

Scenario: Auto-avalia��o incompleta.
Given Eu estou logado como estudante �Cristiano�
And estou na �p�gina de autoavalia��o�.
When Avalio o campo �Student� de �Goal 1� com �MPA�
And Avalio o campo �Student� de �Goal 2� com �MPA�
And O campo �Student� de �Goal 3� permanece em branco.
And Completo minha autoavalia��o
Then Aparece a mensagem de erro �Incomplete Self-Evaluation� na p�gina �p�gina de autoavalia��o�.
And passo adicional da questao 7


Scenario: Auto-avalia��o incompleta
Given o usu�rio �Cristiano� est� logado. 
And Est� na �p�gina de autoavalia��o�.
When A atividade �Goal 3� no campo reservado para �Student� n�o � preenchida pelo usu�rio.
Then O sistema n�o permite n�o permite que a avalia��o seja salva.
And aparece a mensagem de erro �Incomplete Self-Evaluation�.
And passo adicional da questao 7

