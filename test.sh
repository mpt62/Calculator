#!/bin/bash
if [ -d ./target ]; then
 echo "dir exists"
 if [ -f ./target/$APPLICATION_NAME.jar ]; then
  echo "file exists"
  exit 0
 else
  if [ -f ./target/$APPLICATION_NAME*.jar ]; then
   echo "rename file"
   mv ./target/$APPLICATION_NAME*.jar ./target/${APPLICATION_NAME}.jar
   echo $!
   exit 0
  else
   echo "no $APPLICATION_NAME jar file"
   exit 1
  fi
 fi
else
 echo "no directory \"target\""
 exit 1
fi
