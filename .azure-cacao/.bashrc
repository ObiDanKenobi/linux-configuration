#load default .bashrc file
test -f ~/.bashrc && . ~/.bashrc

####################################################################
#
#     git prompt
#
####################################################################

if test -f ~/.config/git-prompt.sh
then
    . ~/.config/git-prompt.sh
else
    # lines omitted
fi

export AZURE_CONFIG_DIR=C:\\Users\\dan\\.azure-cacao;
export HISTFILE=C:\\Users\\dan\\.azure-cacao\\.bash_history;

#Tenant AgoraSys
alias azlg='az login --tenant d27f5ae3-1ffc-4ffa-9593-a3e09246d33c --use-device-code'

#switch between environments
alias go-snonp='az account set --subscription "CACAO NON-PRODUCTION"'
alias go-sprod='az account set --subscription "CACAO PRODUCTION"'
alias go-dev='go-snonp && rm -rf .terraform && terraform.exe init -backend-config=../environments/dev/dev.tfbackend'
alias go-tst='go-snonp && rm -rf .terraform && terraform.exe init -backend-config=../environments/tst/tst.tfbackend'
alias go-acc='go-sprod && rm -rf .terraform && terraform.exe init -backend-config=../environments/acc/acc.tfbackend'
alias go-prd='go-sprod && rm -rf .terraform && terraform.exe init -backend-config=../environments/prd/prd.tfbackend'

#terraform commands
alias tfp-dev='tfp -var-file=../environments/dev/variables.tfvars'
alias tfp-tst='tfp -var-file=../environments/tst/variables.tfvars'
alias tfp-acc='tfp -var-file=../environments/acc/variables.tfvars'
alias tfp-prd='tfp -var-file=../environments/prd/variables.tfvars'
alias tfaa-dev='tfaa -var-file=../environments/dev/variables.tfvars'
alias tfaa-tst='tfaa -var-file=../environments/tst/variables.tfvars'
alias tfaa-acc='tfaa -var-file=../environments/acc/variables.tfvars'
alias tfaa-prd='tfaa -var-file=../environments/prd/variables.tfvars'
