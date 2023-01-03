# if [ -f ~/.bashrc ]; then
#   . ~/.bashrc
# fi

test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc