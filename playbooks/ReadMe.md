
# How to use playbooks

create file

        .vault_password 

with our lab password

set vault password env:

        export ANSIBLE_VAULT_PASSWORD_FILE=.vault_password

list available tags:

        ansible-playbook -i ../inventory/inventory.yml openshift-post-install.yaml --list-tags

run specific tag:

        ansible-playbook -i ../inventory/inventory.yml \
        openshift-post-install.yaml --tag="auth"
