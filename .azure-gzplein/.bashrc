#load default .bashrc file
test -f ~/.bashrc && . ~/.bashrc

export AZURE_CONFIG_DIR=C:\\Users\\dan\\.azure-gzplein;
export HISTFILE=C:\\Users\\dan\\.azure-gzplein\\.bash_history;


#Tenant Gz Plein
# --use-device-code is not working for Gz Plein
#alias azlg='az login --tenant 5420e26f-2cd5-4d71-91b8-1a5e952b5025 --use-device-code'
alias azlg='az login --tenant 5420e26f-2cd5-4d71-91b8-1a5e952b5025'

#switch between environments
alias go-snonp='az account set --subscription "PLEIN NON-PRODUCTION"'
alias go-sprod='az account set --subscription "PLEIN PRODUCTION"'
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
