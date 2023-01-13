#!/usr/bin/env zsh

SCRIPT_PATH="`dirname \"$0\"`"

# set up password file locally as described here
# https://ansible-navigator.readthedocs.io/en/latest/faq/#how-can-i-use-a-vault-password-with-ansible-navigator
export ANSIBLE_VAULT_PASSWORD_FILE=.vault_password

ansible-navigator  run -v $@   -m stdout \
--eev $HOME/.kube:/home/runner/.kube --senv KUBECONFIG="/home/runner/.kube/config"
#\
# \ --senv AWS_CONFIG_FILE="/home/runner/.aws/credentials"
#--senv AWS_SHARED_CREDENTIALS_FILE="/home/runner/.aws/credentials"  $@
