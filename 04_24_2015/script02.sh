#!/bin/bash

if [ $# -ne 0 ]
then
   ifconfig $1
else
   echo "Voc� n�o informou o nome da interface de rede."
fi
