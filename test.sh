#!/bin/bash
echo "Launching OpenAudible: "
# xauth --list
DIR="$(dirname "$(readlink -f "$0")")"
cd $DIR
./jre/bin/java -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -jar openaudible_gtk_x86_64.jar

