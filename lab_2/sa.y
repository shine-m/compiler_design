%{
#include<stdio.h>
void yyerror(char *s);
extern int yylex();
%}
%token INT FLOAT MAIN CHAR RETURN FBR FBL SBL SBR ADD SEMICOLON ASSIGN INT_VAL ASTERISK UNRECOGNISED ID
%start program
%%
program: INT ID SEMICOLON {printf("matched\n");};
%%
int main(){
    yyparse();
    printf("parsing complete.\n");
}


void yyerror( char *s){
    fprintf(stderr,"error:%s",s);
}