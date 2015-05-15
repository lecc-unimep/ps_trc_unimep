#!/bin/bash

if [ $# -ne 0 ]
then
   ifconfig $1
else
   echo "Você não informou o nome da interface de rede."
fi
