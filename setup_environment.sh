##################################
#
#  Run the following command
#
#  wget -q --no-cache -O setup_environment.sh https://raw.githubusercontent.com/ObiDanKenobi/linux-configuration/main/setup_environment.sh && chmod +x setup_environment.sh && bash setup_environment.sh
#
##################################
rm .common_bashrc
wget -q --no-cache -O .bashrc https://raw.githubusercontent.com/ObiDanKenobi/linux-configuration/main/.common_bashrc

rm .bashrc
wget -q --no-cache -O .bashrc https://raw.githubusercontent.com/ObiDanKenobi/linux-configuration/main/.bashrc
source .bashrc

rm .bash_profile
wget -q --no-cache -O .bash_profile https://raw.githubusercontent.com/ObiDanKenobi/linux-configuration/main/.bash_profile
source .bash_profile

#more info about settings: https://dev.to/blikoor/customize-git-bash-shell-498l
mkdir -p .config
rm .config/git-prompt.sh
wget -q --no-cache -O .config/git-prompt.sh https://raw.githubusercontent.com/ObiDanKenobi/linux-configuration/main/.config/git-prompt.sh

wget -q --no-cache -O .config/ssh_icon.png https://raw.githubusercontent.com/ObiDanKenobi/linux-configuration/main/.config/ssh_icon.png
