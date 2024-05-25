# Personal aliases
alias gs='git status'
alias sc='systemctl'
alias findf="find . -type f 2>/dev/null | grep -i"
alias findd="find . -type d 2>/dev/null | grep -i"

# Ansible related aliases  
alias ad=ansible-doc
alias adl="ansible-doc -l"
alias akw=ansible-doc -t keyword | less # use -l to list them all, use adk <keyword> to see notes on that keyword
alias ap=ansible-playbook
alias af="ansible -m setup" # think ansible facts. Put hostname at end
alias ahv="ansible -m debug -a 'var=hostvars'" # think ansible host vars. Put hostname at end 


## Use example: get-process %mem
get-process(){
        ps -eo pid,ppid,user,cmd,%cpu,%mem --sort=-$1 | less
}

