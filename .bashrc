# Ansible / RHCE Aliases and functions
alias ap=ansible-playbook
alias aps='ansible-playbook --syntax-check'

# Ansible: Others
alias ag=ansible-galaxy
alias av="ansible-vault"

# Ansible: debugging
adex() {
ansible-doc $1 | grep -A 120 "EXAMPLES" | less
}
alias ahv="ansible -m debug -a 'var=hostvars'"
alias af="ansible-playbook <pathToPlaybook>/ansible_facts.yml"
alias acv="ansible-playbook <pathToPlaybook>/check_var.yml"

# Ansible: Documentation
alias ad=ansible-doc
alias ads="ansible-doc -s"
alias adl="ansible-doc -l | grep -i"

# Quick Directories
alias rsr="cd /usr/share/doc/rhel-system-roles/"
alias wd="cd /home/ansible/tasks/task10/"

# Personal aliases
alias gs='git status'
alias sc='systemctl'
alias findf="find . -type f 2>/dev/null | grep -i"
alias findd="find . -type d 2>/dev/null | grep -i"

## Use example: get-process %mem
get-process(){
        ps -eo pid,ppid,user,cmd,%cpu,%mem --sort=-$1 | less
}

