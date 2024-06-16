# Ansible / RHCE Aliases and functions
alias a=ansible
alias ap=ansible-playbook
alias aps='ansible-playbook --syntax-check'
alias apc='ansible-playbook --check' 

# Ansible: Others
alias ag=ansible-galaxy
alias av="ansible-vault"
alias an=ansible-navigator
alias anr='ansible-navigator run -m stdout -i inventory --pp never'

# Ansible: debugging
adex() {
ansible-doc $1 | grep -A 120 "EXAMPLES" | less
}
alias ahv="ansible -m debug -a 'var=hostvars'"
alias af="ansible-playbook <pathToPlaybook>/ansible_facts.yml | less"
alias acv="ansible-playbook <pathToPlaybook>/check_var.yml"

# Ansible: Documentation
alias ad=ansible-doc
alias ads="ansible-doc -s"
alias adl="ansible-doc -l | grep -i"
alias akw="ansible-doc -t keyword -l | less"

# Ansible: Quick Directories
alias rsr="cd /usr/share/doc/rhel-system-roles/"
alias wd="cd <currentAnsibleDirectory>"

# bashrc
alias src="source ~/.bashrc"
alias vrc="vim ~/.bashrc"

# Personal aliases
alias gs='git status'
alias sc='systemctl'
alias findf="find . -type f 2>/dev/null | grep -i"
alias findd="find . -type d 2>/dev/null | grep -i"

## Use example: get-process %mem
get-process(){
        ps -eo pid,ppid,user,cmd,%cpu,%mem --sort=-$1 | less
}

