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

#chown
alias chown='sudo chown'

#performance
alias cpu5='ps auxf | sort -nr -k 3 | head -n 5'
alias mem5='ps auxf | sort -nr -k 4 | head -n 5'

#docker-compose
alias dcu='docker-compose up'
alias dcd='docker-compose down'

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

#azure cli
alias azas='azure account show'
alias azass='azure account set --subscription '

#kubectl
alias k='kubectl'
alias kns='kubectl-ns'
alias kcx='kubectl-ctx'
alias kgde='kubectl get deployment'
alias kresde='kubectl rollout restart deployment'
alias krmde='kubectl delete deployment'
alias kdpo='kubectl describe pod'
alias kg='kubectl get'
alias kgpo='kubectl get pods'
alias kgpoojson='kubectl get pods -o=json'
alias kgnp='kubectl get networkpolicy'
alias kglo='kubectl logs'
alias ksysgpooyamll='kubectl --namespace=kube-system get pods -o=yaml -l'
alias krm='kubectl delete'
alias krmp='kubectl delete pod'
alias krmnp='kubectl delete networkpolicy'
alias krmf='kubectl delete -f'
alias krming='kubectl delete ingress'
alias krmingl='kubectl delete ingress -l'
alias ka='kubectl apply -f'
alias klo='kubectl logs -f'
alias kex='kubectl exec -i -t'
alias kroll='kubectl rollout restart deployment'
alias kdp='kubectl describe pod'