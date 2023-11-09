#load default .bashrc file
test -f ~/.bashrc && . ~/.bashrc

export AZURE_CONFIG_DIR=C:\\Users\\dan\\.azure-cacao;

#Tenant AgoraSys
alias azlg='az login --tenant d27f5ae3-1ffc-4ffa-9593-a3e09246d33c --use-device-code'

#switch between environments
alias go-nonp='az account set --subscription "CACAO NON-PRODUCTION"'
alias go-prod='az account set --subscription "CACAO PRODUCTION"'
alias go-nonp-dev='go-nonp && rm -rf .terraform && terraform.exe init -backend-config=../environments/dev/dev.tfbackend'
alias go-nonp-tst='go-nonp && rm -rf .terraform && terraform.exe init -backend-config=../environments/tst/tst.tfbackend'
alias go-prod-acc='go-prod && rm -rf .terraform && terraform.exe init -backend-config=../environments/acc/acc.tfbackend'
alias go-prod-prd='go-prod && rm -rf .terraform && terraform.exe init -backend-config=../environments/prd/prd.tfbackend'

#terraform commands
alias tfp-dev='tfp -var-file=../environments/dev/variables.tfvars'
alias tfp-tst='tfp -var-file=../environments/tst/variables.tfvars'
alias tfp-acc='tfp -var-file=../environments/acc/variables.tfvars'
alias tfp-prd='tfp -var-file=../environments/prd/variables.tfvars'
alias tfaa-dev='tfaa -var-file=../environments/dev/variables.tfvars'
alias tfaa-tst='tfaa -var-file=../environments/tst/variables.tfvars'
alias tfaa-acc='tfaa -var-file=../environments/acc/variables.tfvars'
alias tfaa-prd='tfaa -var-file=../environments/prd/variables.tfvars'
