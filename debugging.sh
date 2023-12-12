#!/bin/bash
set -e
trap 'error_handling$LINENO' ERR


error_handling() {
  echo "enter occurred at line $1"
  exit 1
}


echo "string the script.."
echo "checking for vineetha.txt"
if [ ! -f"vineetha.txt" ]; then
  error_handling $LINENO
fi

echo "vineetha.txt found.processig"
#script actions here
echo "script completed successfully"
