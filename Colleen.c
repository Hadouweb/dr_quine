#include <stdio.h>
/*
	Start
*/
void f(){}
int main()
{
/*
	Comment1
*/
char *str="#include <stdio.h>%c/*%c%cStart%c*/%cvoid f(){}%cint main()%c{%c/*%c%cComment1%c*/%cchar *str=%c%s%c;%cprintf(str,10,10,9,10,10,10,10,10,10,9,10,10,34,str,34,10,10);%c}";
printf(str,10,10,9,10,10,10,10,10,10,9,10,10,34,str,34,10,10);
}