#!/bin/bash

# Script to display different greeting messages based on user input

case $1 in
  morning)
    echo "Good Morning, $2 $3!"
    ;;
  evening)
    echo "Good Evening, $2 $3!"
    ;;
  *)
    echo "Hello, $2 $3!"
    ;;
esac