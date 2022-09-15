#!/usr/bin/env bash

TYPE=$1

if [ "$TYPE" = "all" ]; then
    FLAG=""
elif [ "$TYPE" = "selection" ]; then
    FLAG="-s"
else
    return 1 #invalid type
fi

# screenshot directory
DIR="$HOME/Pictures/screenshots"
mkdir -p $DIR

CMD="scrot ${FLAG} 'screenshot_%Y%m%d_%H%M%S.png' -e 'mv \$f $DIR &&"
CMD="${CMD} xclip -selection clipboard -t image/png -i $DIR/\$f'"
eval $CMD
