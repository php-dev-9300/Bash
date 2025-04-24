

scriptnp=$c
date=$(date +%F)
FILE="/script-path-save.log"
grep -qxF "$scriptnp :: $date" "$FILE" || echo "$scriptnp :: $date" >> "$FILE"
