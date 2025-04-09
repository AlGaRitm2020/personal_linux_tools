#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

#define INTERFACE US
/*
 * 0. change 'US' (in define string) to your name of Wireguard interface
 * 1. compile this program: gcc -o vpn vpn.c
 * 2. change owner to root: sudo chown root:root vpn 
 * 3. set SUID permissions: sudo chmod 4775 vpn 
 * 4. now you can run "vpn up" or "vpn down" without entering your password (even if you're not root) 
 * P.S. soo, you can enable/disable vpn in dmenu or rofi directly
 */
int main(int args, char** argv) {
    setuid(0); // su root 
    if (strcmp(argv[1],"up")==0) 
      system("/usr/bin/wg-quick up INTERFACE");  // enable vpn connection 
    
    else if (strcmp(argv[1],"down")==0)
      system("/usr/bin/wg-quick down INTERFACE");  // disable vpn connection 
    
    else {
      printf("There is no option \"%s\"\n", argv[1]); 
      printf("Usage: %s <up|down>\n", argv[0]); 
    }
    return 0;
}
