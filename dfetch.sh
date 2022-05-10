#!/bin/bash 

#Colors
CYAN="\033[1;36m"
GREEN="\033[0;32m"
RED="\033[1;31m"
END="\e[0m"

#Print Info

# OS Info
echo -e "------------------------------------------------------"
echo -e "\t ${GREEN}OS INFO${END}\n"
echo -e "\t ${CYAN}OS${END} : ${RED}$(lsb_release -d|awk '{print $2}')${END}"
echo -e "\t ${CYAN}Release${END} : ${RED}$(lsb_release -rs)${END}"
echo -e "\t ${CYAN}Codename${END} : ${RED}$(lsb_release -cs)${END}"
echo -e "\t ${CYAN}Architecture${END} : ${RED}$(uname -m)${END}"
echo -e "\t ${CYAN}Uptime${END} : ${RED}$(uptime -p)${END}"
echo -e "\t ${CYAN}Hostname${END} : ${RED}$(hostname)${END}"
echo -e "\t ${CYAN}User${END} : ${RED}$(whoami)${END}"
echo -e "\t ${CYAN}DE${END} : ${RED}$(echo $XDG_CURRENT_DESKTOP)${END}"
echo -e "\t ${CYAN}Session${END} : ${RED}$(echo $XDG_SESSION_TYPE)${END}"
echo -e "\t ${CYAN}Kernel${END} : ${RED}$(uname -r)${END}"
echo -e "------------------------------------------------------"

# Network Info
echo -e "\t ${GREEN}NETWORK INFO${END}\n"
echo -e "\t ${CYAN}IP${END} : ${RED}$(hostname -I | awk '{print $1}')${END}"
echo -e "------------------------------------------------------"

# Hardware Info
echo -e "\t ${GREEN}HARDWARE INFO${END}\n"
echo -e "\t ${CYAN}Manufacturer${END} : ${RED}$(sudo dmidecode -s system-manufacturer)${END}"
echo -e "\t ${CYAN}Product Name${END} : ${RED}$(sudo dmidecode -s system-product-name)${END}"
echo -e "\t ${CYAN}CPU${END} : ${RED}$(lscpu | grep "Model name" | awk '{print $3,$4,$5}') | Core(s): $(nproc)${END}"
echo -e "\t ${CYAN}Architecture${END} : ${RED}$(lscpu | grep "Architecture" | awk '{print $2}')${END}"
echo -e "\t ${CYAN}RAM Usage${END} : ${RED}$(free -h | grep "Mem" | awk '{print $3}') / $(free -h | grep "Mem" | awk '{print $2}')${END}"
echo -e "\t ${CYAN}Disk Used${END} : ${RED}$(df -h | grep "/$" | awk '{print $3}')/$(df -h | grep "/$" | awk '{print $2}') ($(df -h | grep "/$" | awk '{print $5}'))${END}"
echo -e "------------------------------------------------------"