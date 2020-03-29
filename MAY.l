%{

#include <stdio.h>

int a=0;
int e=0;
int i=0;
int u=0;
int uu=0;
int ii=0;
int o=0;
int oo=0;

int dot=0;
int comma=0;
int semiColon=0;
int parenthesis1=0; 
int parenthesis2=0;
int question=0;
int x=0;
int interjection=0;

int words=0;
int lines=0;
int numbers=0;

%}

%%

a {a++;}
A {a++;}
e {e++;}
E {e++;}
i {i++;}
İ {i++;}
ı {ii++;}
I {ii++;}
u {u++;}
U {u++;}
ü {uu++;}
Ü {uu++;}
ö {oo++;}
Ö {oo++;}
o {o++;}
O {o++;}

\, {comma++;}
\; {semiColon++;}
\. dot++;
\( parenthesis1++;
\) parenthesis2++;
\? question++;
\" x++;
\! interjection++;

[\n] {lines++;words++;}
[\t ' '] {words++;}
[0-9] numbers++;
 
%%

main(){

yyin=fopen("file.txt","r");

yylex();

printf("\nThis file has:");

printf("\n%d words\n",words);
printf("\n%d lines\n",lines);
printf("\n%d digit\n",numbers);

printf("\n%d comma\n",comma);
printf("\n%d semicolon\n",semiColon);
printf("\n%d dot\n",dot);
printf("\n%d question mark\n",question);
printf("\n%d quotation mark\n",x);
printf("\n%d (\n",parenthesis1);
printf("\n%d )\n",parenthesis2);
printf("\n%d interjection\n",interjection);

printf("\n%d a\n",a);
printf("\n%d e\n",e);
printf("\n%d i\n",i);
printf("\n%d u\n",u);
printf("\n%d ı\n",ii);
printf("\n%d ü\n",uu);
printf("\n%d o\n",o);
printf("\n%d ö\n",oo);


}

