# README

# Programming Language MAY

  We have three people in the group. Mustafa Onur Başer, Ahmet Burak Karadoğan and Yusuf Çelik. Our languages name is "MAY" refers to the initials of our names.

### Syntax

NOT AVAILABLE RIGHT NOW

### Explanations about th language

Our language has specific aim. Main aim of this language is to examine text files and generate some numerical data. We inspared from the given examples in the slides. And we tried our best by examining the examples.
Our language takes a file in the main method with yyin= fopen("filename.txt", "r").In the upside and first method, we declare our variables like words and lines, etc. In the second method, we increment our variables if there is a new line we increment words and lines if there is space we increment words, etc. In the main method, we print variables with printf. In Makefile all send us to the begin and in begin command we call MAY.l file and if we write mid we call lex.yy.c file in a mid command. In mid we write gcc lex.yy.c  -lfl -o output.may output.may our output file and in the end command, we call this output file. In clean command we delete output.may file.

- Language takes a file with extention .may
- You can run your program by running the makefile and giving it to myprog input: 

make begin
make mid
make end