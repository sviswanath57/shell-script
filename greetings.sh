#!/bin/bash
NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: ${basename $0} -n <name> -w <winshes>"
    echo "Options::"
    echo "-n give names"
    echo "-w give wishes"
}

while getopts ":n:w:h" opt;do
    case $opt in
        n) NAME="$OPTORG";;
        w) WISHES="$OPTORG";;
        h) USAGE; exit;;
        :) USAGE; exit;;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
    esac
done