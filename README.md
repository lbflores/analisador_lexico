# analisador_lexico
Analisador léxico simples - Lex/Flex

Disciplina: Linguagens de Programação
Esta atividade prática consiste em projetar e construir um analisador léxico simples para os tipos de tokens de uma gramática de aritmética básica.

Para desenvolvimento da atividade foi utilizada a ferramenta Lex/Flex.
A solução consta no arquivo teste.l que contém três divisões: 


Definições

%%

Regras

%%

Código

A função yylex() irá aplicar as regras definidas no arquivo.



Comando para compilar e executar:

flex teste.l

gcc -oteste lex.yy.c -ll

./teste

