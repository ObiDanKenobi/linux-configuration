#used when we run in docker
test -f ~/.common_bashrc && . ~/.common_bashrc

#used when we run local
test -f ~/../../environment-template/.common_bashrc && . ~/../../environment-template/.common_bashrc

# check if we use direnv and if so, find the .envrc file for current directory
# and source it to load the environment variables
if command -v direnv &>/dev/null; then
  eval "$(direnv hook bash)"
  echo "direnv hook set"

  #grep the command "direnv status" for "Found RC path" text
  foundPathLine=$(direnv status | grep -n "Found RC path")
  if [ -n "$foundPathLine" ]; then
    # Use direnv status to get the current status
    status_output=$(direnv status)

    # Extract the .envrc path from the output
    envrc_path=$(direnv status | grep "Found RC path" | awk -F'RC path ' '{print $2}')

    source "$envrc_path"
  fi
fi

#if FIZ_CLIENT is set, then we are in a FIZ environment-template
if [ -n "$FIZ_CLIENT" ]; then
  echo "found FIZ_CLIENT=$FIZ_CLIENT"
  # if there is a .bashrc file for the current enviroment, we source it
  if [ -f "/d/development/code-server/environments/code-server-$FIZ_CLIENT/.HOME/.bashrc" ]; then
    echo "sourcing /d/development/code-server/environments/code-server-$FIZ_CLIENT/.HOME/.bashrc"
    source /d/development/code-server/environments/code-server-$FIZ_CLIENT/.HOME/.bashrc
  else
    echo "no .bashrc file found for FIZ_CLIENT=$FIZ_CLIENT"
  fi
  export AZURE_CONFIG_DIR=/d/development/code-server/environments/code-server-$FIZ_CLIENT/.HOME/.azure-$FIZ_CLIENT
else
  echo "no FIZ_CLIENT set"
fi
