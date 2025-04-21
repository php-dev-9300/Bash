clearpath(){
local path=$1
local scriptname=$(basename "$0")
if [[ "$path" ]];
then
current_dir=$path
echo "ok path $path "
else
#current_dir="$( cd "$(dirname "$0")"/ ; pwd -P )"
current_dir=$(pwd)
echo "path not set"
fi
TRIMMED=$(echo "$current_dir" | sed 's#//*#/#g')
a=$TRIMMED
b=${a#/} # Remove possible leading /
c=${b%/} # Remove possible trailing /
echo $c/$scriptname
}

clearpath
clearpath "///ff/ff//gg//"
