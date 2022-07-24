#!/bin/zsh

option="${1}"
case ${option} in
   8)
      rm /usr/lib/jvm/default-jvm
      ln -s /usr/lib/jvm/java-1.8-openjdk /usr/lib/jvm/default-jvm
      ;;
   11)
      rm /usr/lib/jvm/default-jvm
      ln -s /usr/lib/jvm/java-11-openjdk /usr/lib/jvm/default-jvm
      ;;
   17)
      rm /usr/lib/jvm/default-jvm
      ln -s /usr/lib/jvm/java-17-openjdk /usr/lib/jvm/default-jvm
      ;;
   *)
      echo "`basename ${0}`:usage: 8 | 11 | 17"
      exit 1 # Command to come out of the program with status 1
      ;;
esac