#include <stdio.h>
#include <fcntl.h>
#define NAME_FILE "Grace_kid.c"
#define MODE O_CREAT | O_WRONLY
/*
	main
*/
#define M int main(){int fd=open(NAME_FILE,MODE,0644);if (fd==-1){return(-1);}char *str="#include <stdio.h>%c#include <fcntl.h>%c#define NAME_FILE %cGrace_kid.c%c%c#define MODE O_CREAT | O_WRONLY%c/*%c%cmain%c*/%c#define M int main(){int fd=open(NAME_FILE,MODE,0644);if (fd==-1){return(-1);}char *str=%c%s%c;dprintf(fd,str,10,10,34,34,10,10,10,9,10,10,34,str,34,10);}%cM";dprintf(fd,str,10,10,34,34,10,10,10,9,10,10,34,str,34,10);}
M