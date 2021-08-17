#!/usr/bin/env bash
# environment {{{1 ------------------------------------------------------------
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
DEFAULT_FILES=($(cat $DIR/config_files.txt))
# end environment 1}}} --------------------------------------------------------
# file array {{{1 -------------------------------------------------------------
# can pass files to setup or program will use default files
if [ "$#" -gt 0 ]; then
    FILE_ARRAY=("$@")
else
    echo "no arguments given, setting up default config files"
    FILE_ARRAY=(${DEFAULT_FILES[@]})
fi
# end file array 1}}} ---------------------------------------------------------
# remove sym links {{{1 -------------------------------------------------------
echo "removing sym links for the following configuration files:"
printf '%s\n' "${FILE_ARRAY[@]}"
echo ""

for i in "${FILE_ARRAY[@]}"; do
    CONFIG_LINK="$HOME/.$i"
    if [ -f $CONFIG_LINK ]; then
        echo -e "$i: linked config file exists:"\
                "removing \\e[0;31m$CONFIG_LINK\\e[39m"
        rm $CONFIG_LINK
    else
        echo "$i: no linked config file found"
    fi
done
# end remove sym links 1}}} ---------------------------------------------------
