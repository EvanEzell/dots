#!/usr/bin/env bash
# environment {{{1 ------------------------------------------------------------
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
SYM_DIR=$DIR/syms
SETUP_DIR=$DIR/setup
OLD_DOTS=~/dots_backup_"`date +"%s"`"
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
# move_sym function {{{1 ------------------------------------------------------
# backup old dot and create symbolic link to new dot
move_sym() {
    if [ "$#" -ne 2 ]; then
        echo "move_sym expects two arguments:"
        printf "\t%s\n\t%s\n" "source" "destination"
        exit 1
    fi

    # set directories
    _SOURCE="$SYM_DIR/$1"
    _DEST="$2"
    _BACKUP="$OLD_DOTS/$1"

    if [ -f "$_DEST" ]; then
        echo -e "moving \\e[33m$_DEST\\e[39m to \\e[32m$_BACKUP\\e[39m"
        mv "$_DEST" "$_BACKUP"
    fi
    
    if [ ! -f "$_DEST" ] && [ -f "$_SOURCE" ]; then
        echo -e "linking \\e[33m$_DEST\\e[39m to \\e[32m$_SOURCE\\e[39m\n"
        ln -s "$_SOURCE" "$_DEST"
    else
        echo 'unknown error'
        exit 1
    fi
}
# end move_sym function 1}}} --------------------------------------------------
# backup directory {{{1 -------------------------------------------------------
echo -e "creating backup directory \\e[32m$OLD_DOTS\\e[39m\n"
mkdir -p $OLD_DOTS
# end backup directory 1}}} ---------------------------------------------------
# execute move_sym on FILE_ARRAY {{{1 -----------------------------------------
echo "setting up the following configuration files:"
printf '%s\n' "${FILE_ARRAY[@]}"
echo ""

for i in "${FILE_ARRAY[@]}"; do
    echo -e "$i"
    move_sym "$i" "$HOME/.$i"
done
# 1}}} ------------------------------------------------------------------------
# setup scripts {{{1 ----------------------------------------------------------
echo -e "checking for setup scripts in $SETUP_DIR\n"
for i in "${FILE_ARRAY[@]}"; do
    SETUP_FILE="$SETUP_DIR/${i}_setup.sh"
    if [ -f $SETUP_FILE ]; then
        echo -e "$i: setup file exists: sourcing \\e[32m$SETUP_FILE\\e[39m"
        source $SETUP_FILE
    else
        echo "$i: no setup file found"
    fi
done
# end setup scripts 1}}} ------------------------------------------------------
