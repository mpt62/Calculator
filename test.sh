#!/bin/bash
if [ -d ./target ]; then
 if [ -f ./target/$APPLICATION_NAME.jar ]; then
  exit 0
 else.
  if [ -f ./target/$APPLICATION_NAME*.jar ]; then
   mv ./target/$APPLICATION_NAME*.jar ./target/$APPLICATION_NAME.jar
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
