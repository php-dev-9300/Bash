clearpath(){
TRIMMED=$(echo "$1" | sed 's#//*#/#g')
a=$TRIMMED
b=${a#/} # Remove possible leading /
c=${b%/} # Remove possible trailing /
echo $c
}
clearpath "//fff//fff/f/"
