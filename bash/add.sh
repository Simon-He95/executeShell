#!/bin/bash

printFunction(){
  printf "Please enter a number!"
  exit 1
}

read -p "Enter your first number: " firstnum

if [ -n "`echo $firstnum|sed 's/[0-9]//g'`" ]
then
  printFunction
fi

read -p "Please enter a operator: " operator

if [ "$operator" != "+" ] && [ "$operator" != "-" ] && [ "$operator" != "*" ] && [ "$operator" != "/" ]
then
  printFunction
fi

read -p "Please enter your second number: " secondnum

if [ -n "`echo $secondnum|sed 's/[0-9]//g'`" ]
then
  printFunction
fi

echo "$firstnum $operator $secondnum的结果是: $(($firstnum $operator $secondnum))"