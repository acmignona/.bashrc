# Personal aliases
alias ap='ansible-playbook'
alias gs='git status'

# Personal functions
## Use example: findd /etc ssh
findd(){
        find $1 -type d -name $2 2>/dev/null | grep -i $2
}

## Use example: findf /etc ssh
findf() {
    if [ $# -ne 2 ]; then
        echo "Usage: find_files_with_pattern <directory> <pattern>"
        return 1
    fi

    local directory="$1"
    local pattern="$2"

    find "$directory" -type f -iname "*$pattern*" 2>/dev/null | grep -i $pattern
}

## Use example: get-process %mem
get-process(){
        ps -eo pid,ppid,user,cmd,%cpu,%mem --sort=-$1 | less
}



## Archived 
# findr is basically the find command, but modified to be easier for my use. 
# Use example: findr ssh /etc
#findr(){find $1 $2 2>/dev/null | grep $1 }
