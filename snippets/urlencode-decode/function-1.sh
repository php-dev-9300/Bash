#!/bin/bash
function urlencode {
  local LANG=C i c e=''
  for ((i=0;i<${#1};i++)); do
    c=${1:$i:1}
    [[ "$c" =~ [a-zA-Z0-9\.\~\_\-] ]] || printf -v c '%%%02X' "'$c"
    e+="$c"
  done
  echo "$e"
}

function urldecode2() {
        echo -ne $(echo -n "$1" | sed -E "s/%/\\\\x/g")
}
function urldecode {
  : "${*//+/ }"
  echo -e "${_//%/\\x}"
}

urldecode="%C3%A9l%C3%A9";

urldecode "$urldecode"
echo ""
urldecode2 "$urldecode"
echo ""
urlencode "éléphant"
echo ""
str="éléphant"
#ENCODEDMESSAGE="$(php -r 'echo rawurlencode($argv[1]);' -- "$str")"
#echo $ENCODEDMESSAGE
#DECODEDMESSAGE="$(php -r 'echo rawurldecode($argv[1]);' -- "$urldecode")"
#echo $DECODEDMESSAGE
