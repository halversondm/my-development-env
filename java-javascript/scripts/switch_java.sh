#!/bin/zsh

option="${1}"
case ${option} in
   17)
      rm /usr/lib/jvm/default-jvm
      ln -s /usr/lib/jvm/java-17-openjdk /usr/lib/jvm/default-jvm
      ;;
   21)
      rm /usr/lib/jvm/default-jvm
      ln -s /usr/lib/jvm/java-21-openjdk /usr/lib/jvm/default-jvm
      ;;
   *)
      echo "`basename ${0}`:usage: 17 | 21"
      exit 1 # Command to come out of the program with status 1
      ;;
esac