%option noyywrap
%{


%}
%%
"a" {printf("%s -> ID\n",yytext);}
"b" {printf("%s -> ID\n",yytext);}
"c" {printf("%s -> ID\n",yytext);}
"1" {printf("%s -> NUM\n",yytext);}
"2" {printf("%s -> NUM\n",yytext);}
"+" {printf("%s -> ADDOP\n",yytext);}
"=" {printf("%s -> ASSIGN\n",yytext);}
";" {printf("%s -> COLON\n",yytext);}
%%

int main(){

    yylex();
    return 0;
}