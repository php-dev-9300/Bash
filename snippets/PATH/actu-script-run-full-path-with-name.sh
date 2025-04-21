clearpath2(){
TRIMMED="$(pwd)/${0##*/}"
a=$TRIMMED
b=${a#/} # Remove possible leading /
c=${b%/} # Remove possible trailing /
echo $c
}

clearpath2
