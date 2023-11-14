
# findr is basically the find command, but modified to be easier for my use. 
# Use example: findr ssh /etc
findr(){find $1 $2 2>/dev/null | grep $1 }

