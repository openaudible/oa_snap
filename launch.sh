#!/bin/bash
DIR="$(dirname "$(readlink -f "$0")")"
cd $DIR
./jre/bin/java -Duser.home=$SNAP_USER_COMMON -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -jar openaudible_gtk_x86_64.jar

