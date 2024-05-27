%option noyywrap
%{
#include<stdio.h>
int i=0;
%}
digits[0-9]
character[a-zA-Z]
%%
[ \n\t] {}
"int" {printf("INT\n");}
"float" {printf("FLOAT\n");}
"char" {printf("CHAR\n");}
"main" {printf("MAIN\n");}
"return" {printf("RETURN\n");}
"(" {printf("FBL\n");}
")" {printf("FBR\n");}
"{" {printf("SBL\n");}
"}" {printf("SBR\n");}
"+" {printf("ADD\n");}
";" {printf("SEMICOLON\n");}
"=" {printf("ASSIGN\n");}
{digits}* {printf("INT_VAL\n");}
[a-zA-Z_][a-zA-Z0-9$_]* {printf("ID\n");}
[*] {printf("ASTERISK\n");}
. {printf("unrecognised\n");}
%%

int main()
{
    yylex();
    return 0;
}