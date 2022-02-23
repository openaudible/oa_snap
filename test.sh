#!/bin/bash
set -x
DIR="$(dirname "$(readlink -f "$0")")"
cd $DIR
UH=$SNAP_USER_COMMON
if [ -z "$" ] ; then 
UH=$HOME
fi

OA_MODE=snap 
args=""
debug=0

while [[ $# -gt 0 ]]; do
    case "$1" in
    -v|--version) args="--version"; shift;;
    -h|--help) 
	echo "OpenAudible is a GUI Audiobook Manager. Available arguments are -v|--version to get version, and -d|--debug to run in foreground mode with stderr/stdout"
	exit 0;
	;;
    -d|--debug) debug=1; shift;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;

    esac
done
echo "Starting OpenAudible: debug=$debug args=$args help=$help home=$UH"
exit 0

if [ $debug -eq 0 ] ; then 
   ./jre/bin/java -Duser.home=$UH -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -DOA_MODE=snap -jar openaudible_gtk_x86_64.jar $args > /dev/null 2>&1 &
else
   ./jre/bin/java -Duser.home=$UH -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -DOA_MODE=snap -jar openaudible_gtk_x86_64.jar $args 
fi


