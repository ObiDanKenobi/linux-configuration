parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom prompt settings
#PROMPT_DIRTRIM=8                         # Shorten deep paths in the prompt
#PS1='\[\033]0;Git | Bash v\v | \W\007\]' # set window title
PS1='\[\033]0;\W]'                       # set window title
PS1="$PS1"'\n'                           # new line
PS1="$PS1"'\[\033[30;45m\] [\A] '        # black text, magenta, 24h time
PS1="$PS1"'\[\033[30;42m\] \u '          # black text, green, user
PS1="$PS1"'\[\033[30;42m\]@\h '          # black text, green, @host
PS1="$PS1"'\[\033[30;43m\] \w '          # black text, yellow, working director
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'\[\033[97;46m\]' 
    PS1="$PS1"'`parse_git_branch`'
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $

# Git status options
# Shows * or + for unstaged and staged changes, respectively.
export GIT_PS1_SHOWSTASHSTATE=true

# shows $ if there are any stashes.
export GIT_PS1_SHOWDIRTYSTATE=true

# Shows % if there are any untracked files.
export GIT_PS1_SHOWUNTRACKEDFILES=true

# shows <, >, <>, or = when your branch is behind, ahead, diverged from,
# or in sync with the upstream branch, respectively.
export GIT_PS1_SHOWUPSTREAM="auto"
