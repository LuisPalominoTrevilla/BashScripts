#!/bin/bash

add(){
    echo $(($1 + $2))
}

subtract(){
    echo $(($1 - $2))
}

multiply(){
    echo $(($1 * $2))
}

divide(){
    echo $(($1 / $2))
}

op=$1 ; arg1=$2 ; arg2=$3

[[ $# -lt 3 ]] && \
    echo "Usage: Provide an operation (a,s,m,d) and two numbers" && exit 1

[[ $op != a ]] && [[ $op != s ]] && [[ $op != d ]] && [[ $op != m ]] && \
    echo operator must be a, s, m, or d, not $op as supplied

# ok, do the work!

if [[ $op == a ]] ; then echo "The result is "; add $arg1 $arg2
elif [[ $op == s ]] ; then echo "The result is "; subtract $arg1 $arg2
elif [[ $op == m ]] ; then echo "The result is "; multiply $arg1 $arg2
elif [[ $op == d ]] ; then echo "The result is "; divide $arg1 $arg2
else
echo $op is not a, s, m, or d, aborting ; exit 2 
fi
