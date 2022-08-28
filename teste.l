%{
#include <stdio.h>    
%}

VAR [a-z]+
NUM [0-9]+
VARNUM [a-zA-Z][a-zA-Z0-9]*
LPAR [(]
RPAR [)]
ADDOP [+]
SUBOP [-]
MULOP [*]
DIVOP [/]
LTOP [>]
STOP  [<]
EQ [=]
ASSIGNOP [:]


%%

{NUM} {printf("('%s', NUM, 2)\n", yytext);}
{VAR} {printf("('%s', VAR, 1)\n", yytext);}
{VARNUM} {printf("('%s', VAR, 1)\n", yytext);}
{LPAR} {printf("('%s', LPAR, 3)\n", yytext);}
{RPAR} {printf("('%s', RPAR, 4)\n", yytext);}
{ADDOP} {printf("('%s', ADDOP, 5)\n", yytext);}
{SUBOP} {printf("('%s', SUBOP, 6)\n", yytext);}
{MULOP} {printf("('%s', MULOP, 7)\n", yytext);}
{DIVOP} {printf("('%s', DIVOP, 8)\n", yytext);}
{LTOP} {printf("('%s', LTOP, 9)\n", yytext);}
{STOP} {printf("('%s', STOP, 10)\n", yytext);}
{EQ}+{EQ} {printf ("('%s', EQOP, 11)\n", yytext);}
{ASSIGNOP}+{EQ} {printf("('%s', ASSIGNOP, 12)\n", yytext);}

{NUM}{VAR} {printf("(Erro: Variáveis não podem começar com dígitos. '%s')\n", yytext);}
{NUM}[.]{NUM} {printf("(Erro: As expressões possuem apenas números inteiros. '%s')\n", yytext);}
{SUBOP}{NUM} {printf("(Erro: Não considera numero negativo. '%s')\n", yytext);}


[[:space:]]+ ;


%%

int main (){
    yylex();
    return 0;
}