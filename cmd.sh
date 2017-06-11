#!/usr/bin/env sh

echo 'determining files to clean'
filesToClean=$(git clean -n $"opts"| sed 's/Would remove *//')

echo 'cleaning files'
# 2 attempts because for unknown reasons the first regularly fails on osx w/ nfs enabled
i=2
while [ "$i" -gt 0 ]
do
  i=$((i-1))
  for f in "$filesToClean"; do rm -rf "$f" > /dev/null 2>&1; done
  if [ $? -eq 0 ]
  then
    echo "cleaning files succeeded"
    exit 0
  fi
done
echo "cleaning files failed"
exit 1