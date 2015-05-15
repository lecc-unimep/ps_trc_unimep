#!/bin/bash

if [ $# -ne 0 ]
then
   retorno=$(ifconfig $1 2> /dev/null)
   if [ $? -eq 0]
   then
      ifconfig $1
   else
      echo "A interface de rede informada n�o existe."
   fi
else
   echo "Voc� n�o informou um nome de interface de rede."
fi