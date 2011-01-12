#include <stdio.h>
main()
{
  for(;;){
    int x = rand();
    int y = rand();
    if(x < 0x100000 && y < 0x100000){
      printf("%d %d\n",x & 0xff,y & 0xff);
    }
  }
}

