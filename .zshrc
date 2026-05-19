alias tf="terraform"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfi="terraform init"
alias tfd="terraform destroy"

eval "$(starship init zsh)"

# Enable Zsh completion system and Bash compatibility
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

# Enable AWS CLI autocomplete
complete -C '/usr/local/bin/aws_completer' aws

# Load zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
