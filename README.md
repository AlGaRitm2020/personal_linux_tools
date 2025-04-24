

# Set of my tiny programs/scrips for daily linux use

This programs makes frequient commands to be executable simplier

## 1. vpn.c (Wireguard)
I use wg-quick, and I need to type my password to enable/disable vpn every time. It's kinda annoying, so I created simple C program, that do the same but with SUID priveledges, so there's no need to type password. 
*instructions in **[source code:](vpn/vpn.c)***


## 2. histclear
Clears last N lines from history **(NOT ADDED)**

## 3. envv.sh
Simple allocation of permit variable in bash
Installation: `git clone https://github.com/AlGaRitm2020/personal_linux_tools; cd personal_linux_tools; chmod +x envv.sh; echo .$(pwd)/envv.sh >> ~/.bashrc;`
Usage:
- `envv.sh --new VAR VALUE` - adding new variable to 
- `envv.sh --show` - shows all variables

## 4. forw.c
Sending symbols or or entire string arrays to other terminals(with custom typing speed). Look magically **(NOT ADDED)**
