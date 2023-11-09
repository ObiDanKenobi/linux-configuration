#load default .bashrc file
test -f ~/.bashrc && . ~/.bashrc

export AZURE_CONFIG_DIR=C:\\Users\\dan\\.azure-corendon;

#Tenant Corendon
alias azlg='az login --tenant 0e702811-a4a9-4bbb-9e52-33dcc3acb3d3 --use-device-code'

#switch between environments
alias go-snonp='az account set --subscription "non prod"'
alias go-sprod='az account set --subscription "prod"'
alias go-snonp-dr='az account set --subscription "non prod disaster recovery"'
alias go-sprod-dr='az account set --subscription "prod disaster recovery"'

alias go-nonp='go-snonp && rm -rf .terraform && terraform.exe init -backend-config=../deployments/nonp/nonp.tfbackend'
alias go-nonp-dr='go-snonp-dr && rm -rf .terraform && terraform.exe init -backend-config=../deployments/nonp-dr/nonp-dr.tfbackend'
alias go-prod='go-sprod && rm -rf .terraform && terraform.exe init -backend-config=../deployments/prod/prod.tfbackend'
alias go-prod-dr='go-sprod-dr && rm -rf .terraform && terraform.exe init -backend-config=../deployments/prod-dr/prod-dr.tfbackend'

#terraform commands
alias tfp-nonp='tfp -var-file=../deployments/nonp/variables.tfvars'
alias tfp-nonp-dr='tfp -var-file=../deployments/nonp-dr/variables.tfvars'
alias tfp-prod='tfp -var-file=../deployments/prod/variables.tfvars'
alias tfp-prod-dr='tfp -var-file=../deployments/prod-dr/variables.tfvars'

alias tfaa-nonp='tfaa -var-file=../deployments/nonp/variables.tfvars'
alias tfaa-nonp-dr='tfaa -var-file=../deployments/nonp-dr/variables.tfvars'
alias tfaa-prod='tfaa -var-file=../deployments/prod/variables.tfvars'
alias tfaa-prod-dr='tfaa -var-file=../deployments/prod-dr/variables.tfvars'
