###   ALIASES   ###

#navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

#ls
alias ls='ls -lF --color --show-control-chars'
#alias ls='ls -l'
alias ll='ls -l'
alias lsa='ls -a'

#apt
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt install'

#display
alias less='less -r'
alias cls='clear'

#grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#performance
alias cpu5='ps auxf | sort -nr -k 3 | head -n 5'
alias mem5='ps auxf | sort -nr -k 4 | head -n 5'

#git commands
alias gs='git status '
alias gss='git status -s'
alias gp='git pull -r'
alias gh='git push '
alias gho='git push -u origin '
alias up='git push '
alias upo='git push -u origin '
alias ga='git add '
alias gaa='git add -A'
alias gb='git branch '
alias gc='git commit '
alias gcm='git commit -m '
alias gd='git diff'
alias go='git checkout '
alias gob='git checkout -b'
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '
alias g='git '
alias gm='git merge '
alias gr='git reset '
alias gta='git tag -a '

#terraform
alias tfi='terraform.exe init '
alias tfp='terraform.exe plan '
alias ctfp='clear & terraform.exe plan '
alias tfa='terraform.exe apply '
alias tfaa='terraform.exe apply --auto-approve '
alias tfv='terraform.exe validate '
