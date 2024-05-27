%option noyywrap
%{
#include<stdio.h>
#include "sa.tab.h"
int i=0;
%}
digits[0-9]
character[a-zA-Z]
%%
[ \n\t] {}
"int" {  return INT    ;}
"float" {  return FLOAT    ;}
"char" {  return CHAR    ;}
"main" {  return MAIN    ;}
"return" {  return RETURN    ;}
")" {  return FBL    ;}
"(" {  return FBR    ;}
"{" {  return SBL    ;}
"}" {  return SBR    ;}
"+" {  return ADD    ;}
";" {  return SEMICOLON    ;}
"=" {  return ASSIGN    ;}
{digits}* {  return INT_VAL    ;}
[a-zA-Z_][a-zA-Z0-9$_]* {  return ID    ;}
[*] {  return ASTERISK    ;}
. {  return UNRECOGNISED    ;}
%%
