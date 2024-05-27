lexical : 
	flex task1.l
	gcc lex.yy.c
	a <  input.txt  >  output.txt

bison: 
	bison -d sa.y
	flex task2.l
	gcc sa.tab.c lex.yy.c
	a < input_task2.txt > output_task2.txt