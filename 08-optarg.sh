#!/bin/bash

# Script to display different greeting messages based on user input

case $1 in
  morning)
    echo "Good Morning, $2!"
    ;;
  evening)
    echo "Good Evening, $2!"
    ;;
  *)
    echo "Hello, $2!"
    ;;
esac