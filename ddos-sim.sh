#!/usr/bin/env bash

# ---------- CTRL+C HANDLER ----------
trap 'echo; echo "Simulation killed."; exit 0' INT

# ---------- VALIDATION ----------
is_valid_ip() {
local ip=$1
[[ $ip =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] || return 1
IFS='.' read -r a b c d <<< "$ip"
for o in $a $b $c $d; do
(( o >= 0 && o <= 255 )) || return 1
done
return 0
}

is_valid_port() {
[[ $1 =~ ^[0-9]+$ ]] && (( $1 >= 1 && $1 <= 65535 ))
}

# ---------- SCREENS ----------
rules_screen() {
printf "\033c"
echo " Made By sadsism | DDoS Simulation | Made in 2026"
echo "                                                                                   
RRRRRRRRRRRRRRRRR                     lllllll                                      
R::::::::::::::::R                    l:::::l                                      
R::::::RRRRRR:::::R                   l:::::l                                      
RR:::::R     R:::::R                  l:::::l                                      
  R::::R     R:::::Ruuuuuu    uuuuuu   l::::l     eeeeeeeeeeee        ssssssssss   
  R::::R     R:::::Ru::::u    u::::u   l::::l   ee::::::::::::ee    ss::::::::::s  
  R::::RRRRRR:::::R u::::u    u::::u   l::::l  e::::::eeeee:::::eess:::::::::::::s 
  R:::::::::::::RR  u::::u    u::::u   l::::l e::::::e     e:::::es::::::ssss:::::s
  R::::RRRRRR:::::R u::::u    u::::u   l::::l e:::::::eeeee::::::e s:::::s  ssssss 
  R::::R     R:::::Ru::::u    u::::u   l::::l e:::::::::::::::::e    s::::::s      
  R::::R     R:::::Ru::::u    u::::u   l::::l e::::::eeeeeeeeeee        s::::::s   
  R::::R     R:::::Ru:::::uuuu:::::u   l::::l e:::::::e           ssssss   s:::::s 
RR:::::R     R:::::Ru:::::::::::::::uul::::::le::::::::e          s:::::ssss::::::s
R::::::R     R:::::R u:::::::::::::::ul::::::l e::::::::eeeeeeee  s::::::::::::::s 
R::::::R     R:::::R  uu::::::::uu:::ul::::::l  ee:::::::::::::e   s:::::::::::ss  
RRRRRRRR     RRRRRRR    uuuuuuuu  uuuullllllll    eeeeeeeeeeeeee    sssssssssss    
"

echo
echo "• This is a visual simulation only"
echo "• No real packets are sent"
echo "• No network activity occurs"
echo "• Educational purposes only"
echo
echo "Press ENTER to return"
read
}

credits_screen() {
printf "\033c"
echo " Made By sadsism | DDoS Simulation | Made in 2026"
echo "                                                                                                                                
                                                                         dddddddd                                               
        CCCCCCCCCCCCC                                                    d::::::d  iiii          tttt                           
     CCC::::::::::::C                                                    d::::::d i::::i      ttt:::t                           
   CC:::::::::::::::C                                                    d::::::d  iiii       t:::::t                           
  C:::::CCCCCCCC::::C                                                    d:::::d              t:::::t                           
 C:::::C       CCCCCCrrrrr   rrrrrrrrr       eeeeeeeeeeee        ddddddddd:::::d iiiiiiittttttt:::::ttttttt        ssssssssss   
C:::::C              r::::rrr:::::::::r    ee::::::::::::ee    dd::::::::::::::d i:::::it:::::::::::::::::t      ss::::::::::s  
C:::::C              r:::::::::::::::::r  e::::::eeeee:::::ee d::::::::::::::::d  i::::it:::::::::::::::::t    ss:::::::::::::s 
C:::::C              rr::::::rrrrr::::::re::::::e     e:::::ed:::::::ddddd:::::d  i::::itttttt:::::::tttttt    s::::::ssss:::::s
C:::::C               r:::::r     r:::::re:::::::eeeee::::::ed::::::d    d:::::d  i::::i      t:::::t           s:::::s  ssssss 
C:::::C               r:::::r     rrrrrrre:::::::::::::::::e d:::::d     d:::::d  i::::i      t:::::t             s::::::s      
C:::::C               r:::::r            e::::::eeeeeeeeeee  d:::::d     d:::::d  i::::i      t:::::t                s::::::s   
 C:::::C       CCCCCC r:::::r            e:::::::e           d:::::d     d:::::d  i::::i      t:::::t    ttttttssssss   s:::::s 
  C:::::CCCCCCCC::::C r:::::r            e::::::::e          d::::::ddddd::::::ddi::::::i     t::::::tttt:::::ts:::::ssss::::::s
   CC:::::::::::::::C r:::::r             e::::::::eeeeeeee   d:::::::::::::::::di::::::i     tt::::::::::::::ts::::::::::::::s 
     CCC::::::::::::C r:::::r              ee:::::::::::::e    d:::::::::ddd::::di::::::i       tt:::::::::::tt s:::::::::::ss  
        CCCCCCCCCCCCC rrrrrrr                eeeeeeeeeeeeee     ddddddddd   dddddiiiiiiii         ttttttttttt    sssssssssss    
 "                                                                                                                              

echo
echo " Made by sadsism "
echo " Written in Bash "
echo
echo " Socials "
echo " Github: https://github.com/sadsism "
echo " Telegram: https://t.me/sadsism "
echo " Roblox: https://www.roblox.com/users/9969621487/profile "
echo " Tiktok: https://www.tiktok.com/@sadsism "
echo " Discord: https://discord.com/users/1467241320388231218 "
echo
echo "Press ENTER to return"
read
}

# ---------- TOOL ----------
run_tool() {
while true; do
printf "\033c"
echo " Made By sadsism | DDoS Simulation | Made in 2026"
echo "                                                              
                                                              
TTTTTTTTTTTTTTTTTTTTTTT                               lllllll 
T:::::::::::::::::::::T                               l:::::l 
T:::::::::::::::::::::T                               l:::::l 
T:::::TT:::::::TT:::::T                               l:::::l 
TTTTTT  T:::::T  TTTTTTooooooooooo      ooooooooooo    l::::l 
        T:::::T      oo:::::::::::oo  oo:::::::::::oo  l::::l 
        T:::::T     o:::::::::::::::oo:::::::::::::::o l::::l 
        T:::::T     o:::::ooooo:::::oo:::::ooooo:::::o l::::l 
        T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
        T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
        T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
        T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
      TT:::::::TT   o:::::ooooo:::::oo:::::ooooo:::::ol::::::l
      T:::::::::T   o:::::::::::::::oo:::::::::::::::ol::::::l
      T:::::::::T    oo:::::::::::oo  oo:::::::::::oo l::::::l
      TTTTTTTTTTT      ooooooooooo      ooooooooooo   llllllll
"
echo

read -p "Target IP: " IP
read -p "Port (e.g. 80, 443): " PORT

if ! is_valid_ip "$IP" || ! is_valid_port "$PORT"; then
echo
echo "ERROR: Invalid IP or PORT"
echo
echo "Press ENTER to try again"
echo "Press BACKSPACE to stop script"

read -rsn1 KEY
[[ $KEY == $'\x7f' ]] && echo && echo "Simulation stopped." && exit 0
return
fi
break
done

# ----- SIMULATION -----
printf "\033c"
echo "Streaming packets"
echo "Target → IP: $IP | PORT: $PORT"
echo "Press CTRL + C to kill simulation."
echo "---------------------------------------------------------------"

COUNT=0
while true; do
COUNT=$((COUNT + 1))
SIZE=$((RANDOM % 1461 + 40))
TIME=$(date +"%H:%M:%S")

printf "[%s] Packet %-6d | %4d bytes | IP: %-15s | PORT: %-5s | Press CTRL + C to kill simulation.\n" \
"$TIME" "$COUNT" "$SIZE" "$IP" "$PORT"
done
}

# ---------- MAIN MENU ----------
while true; do
printf "\033c"
echo " Made By sadsism | DDoS Simulation | Made in 2026"
echo "                                                                                                                                                                      
                                                                                                                                                                      
MMMMMMMM               MMMMMMMM                    iiii                        MMMMMMMM               MMMMMMMM                                                        
M:::::::M             M:::::::M                   i::::i                       M:::::::M             M:::::::M                                                        
M::::::::M           M::::::::M                    iiii                        M::::::::M           M::::::::M                                                        
M:::::::::M         M:::::::::M                                                M:::::::::M         M:::::::::M                                                        
M::::::::::M       M::::::::::M  aaaaaaaaaaaaa   iiiiiiinnnn  nnnnnnnn         M::::::::::M       M::::::::::M    eeeeeeeeeeee    nnnn  nnnnnnnn    uuuuuu    uuuuuu  
M:::::::::::M     M:::::::::::M  a::::::::::::a  i:::::in:::nn::::::::nn       M:::::::::::M     M:::::::::::M  ee::::::::::::ee  n:::nn::::::::nn  u::::u    u::::u  
M:::::::M::::M   M::::M:::::::M  aaaaaaaaa:::::a  i::::in::::::::::::::nn      M:::::::M::::M   M::::M:::::::M e::::::eeeee:::::een::::::::::::::nn u::::u    u::::u  
M::::::M M::::M M::::M M::::::M           a::::a  i::::inn:::::::::::::::n     M::::::M M::::M M::::M M::::::Me::::::e     e:::::enn:::::::::::::::nu::::u    u::::u  
M::::::M  M::::M::::M  M::::::M    aaaaaaa:::::a  i::::i  n:::::nnnn:::::n     M::::::M  M::::M::::M  M::::::Me:::::::eeeee::::::e  n:::::nnnn:::::nu::::u    u::::u  
M::::::M   M:::::::M   M::::::M  aa::::::::::::a  i::::i  n::::n    n::::n     M::::::M   M:::::::M   M::::::Me:::::::::::::::::e   n::::n    n::::nu::::u    u::::u  
M::::::M    M:::::M    M::::::M a::::aaaa::::::a  i::::i  n::::n    n::::n     M::::::M    M:::::M    M::::::Me::::::eeeeeeeeeee    n::::n    n::::nu::::u    u::::u  
M::::::M     MMMMM     M::::::Ma::::a    a:::::a  i::::i  n::::n    n::::n     M::::::M     MMMMM     M::::::Me:::::::e             n::::n    n::::nu:::::uuuu:::::u  
M::::::M               M::::::Ma::::a    a:::::a i::::::i n::::n    n::::n     M::::::M               M::::::Me::::::::e            n::::n    n::::nu:::::::::::::::uu
M::::::M               M::::::Ma:::::aaaa::::::a i::::::i n::::n    n::::n     M::::::M               M::::::M e::::::::eeeeeeee    n::::n    n::::n u:::::::::::::::u
M::::::M               M::::::M a::::::::::aa:::ai::::::i n::::n    n::::n     M::::::M               M::::::M  ee:::::::::::::e    n::::n    n::::n  uu::::::::uu:::u
MMMMMMMM               MMMMMMMM  aaaaaaaaaa  aaaaiiiiiiii nnnnnn    nnnnnn     MMMMMMMM               MMMMMMMM    eeeeeeeeeeeeee    nnnnnn    nnnnnn    uuuuuuuu  uuuu
"                                                                                                                                                                     
                                                                                                                                                                      
                                                                                                                                                                      

echo
echo "Choose your option:"
echo "1) Proceed to tool"
echo "2) Rules"
echo "3) Credits"
echo
read -p "> " CHOICE

case "$CHOICE" in
1) run_tool ;;
2) rules_screen ;;
3) credits_screen ;;
*) echo "Invalid option. Press ENTER to retry."; read ;;
esac
done