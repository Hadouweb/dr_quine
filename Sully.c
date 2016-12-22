#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
int main(){
int v=5;
if (strstr(__FILE__,"Sully.c")){v++;}
char *str="#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%c#include <string.h>%cint main(){%cint v=%d;%cif (strstr(__FILE__,%cSully.c%c)){v++;}%cchar *str=%c%s%c;%cchar s[300];sprintf(s,%cSully_%%d.c%c,v-1);%cint fd=open(s,O_CREAT|O_WRONLY|O_TRUNC,0644);if (fd==-1){return(-1);}%cdprintf(fd,str,10,10,10,10,10,v-1,10,34,34,10,34,str,34,10,34,34,10,10,10,34,34,10,34,34,10);%csprintf(s,%cclang -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d%c,v-1,v-1);system(s);%csprintf(s,%c./Sully_%%d%c,v-1);if(v>1){system(s);}%c}";
char s[300];sprintf(s,"Sully_%d.c",v-1);
int fd=open(s,O_CREAT|O_WRONLY|O_TRUNC,0644);if (fd==-1){return(-1);}
dprintf(fd,str,10,10,10,10,10,v-1,10,34,34,10,34,str,34,10,34,34,10,10,10,34,34,10,34,34,10);
sprintf(s,"clang -Wall -Wextra -Werror Sully_%d.c -o Sully_%d",v-1,v-1);system(s);
sprintf(s,"./Sully_%d",v-1);if(v>1){system(s);}
}