all: begin

begin: MAY.l
	lex MAY.l
	
mid: lex.yy.c
	gcc lex.yy.c -lfl -o output.may

end: output.may 
	./output.may

clean: 
	rm -rf *o ./output.may
