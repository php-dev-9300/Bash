clearpath2(){
#TRIMMED=$(echo "$scriptnp2" | sed 's#//*#/#g')
TRIMMED="$(pwd)/${0##*/}"
a=$TRIMMED
b=${a#/} # Remove possible leading /
c=${b%/} # Remove possible trailing /
echo $c
}

clearpath2
