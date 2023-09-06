clear
echo ""
echo -e "\033[1;31m.	░██████╗░██╗░░██╗░█████╗░██████╗░░█████╗░████████╗░██████╗░░█████╗░██████╗░\033[0m"
echo -e "\033[1;31m.	██╔════╝░██║░░██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝░██╔══██╗██╔══██╗\033[0m"
echo -e "\033[1;33m.	██║░░██╗░███████║███████║██████╔╝███████║░░░██║░░░██║░░██╗░███████║██████╔╝\033[0m"
echo -e "\033[1;33m.	██║░░╚██╗██╔══██║██╔══██║██╔══██╗██╔══██║░░░██║░░░██║░░╚██╗██╔══██║██╔══██╗\033[0m"
echo -e "\033[1;32m.	╚██████╔╝██║░░██║██║░░██║██║░░██║██║░░██║░░░██║░░░╚██████╔╝██║░░██║██║░░██║\033[0m"
echo -e "\033[1;32m.	░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝\033[0m"
echo ""
read -p "Does you want to install Name Termux ( Yes / No ) ? " input

if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
    clear
    cp bash.bashrc $HOME
    cd /data/data/com.termux/files/usr/etc
    rm -rf motd
    rm -rf bash.bashrc
    cd $HOME
    mv bash.bashrc /data/data/com.termux/files/usr/etc
    echo -e "\e[1;36mSuccessfully Installed\e[0m"
    echo -e "\e[1;32mRestart Termux\e[0m"
    exit  3
elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
exit 2
else
echo -e "\e[1;91mInvalid Option"
exit 1
fi
