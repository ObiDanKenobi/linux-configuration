# for kubernetes context switch shortcuts
#export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
#source /home/dan/kube-ps1/kube-ps1.sh
#PS1='[\u@\h \W $(kube_ps1)]\$'

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

# disk usage
alias du='du -h --max-depth=1'
alias dus='du -h --max-depth=1 | sort -hr'

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
alias tfibc='terraform.exe init -backend-config'
alias tfp='terraform.exe plan '
alias ctfp='clear & terraform.exe plan '
alias tfa='terraform.exe apply '
alias tfaa='terraform.exe apply --auto-approve '
alias tfv='terraform.exe validate '

#azure cli
alias azas='az account show'
alias azass='az account set --subscription '
alias azld='az login --use-device-code '

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

#home
alias restart-yacht='ssh dan@192.168.70.30 "docker compose --project-directory /mnt/docker/actuale/yacht restart"'
