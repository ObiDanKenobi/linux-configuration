#used when we run in docker
test -f ~/.common_bashrc && . ~/.common_bashrc

#used when we run local
test -f ~/../../environment-template/.common_bashrc && . ~/../../environment-template/.common_bashrc