#!/bin/bash

traco="--------------------------------------"

clear
echo ${traco}
echo "Menu de Comandos"
echo ${traco}
echo "1. Nome do Sistema"
echo "2. Tempo de Atividade do Sistema"
echo "3. Nome do Host"
echo "4. Data e Hora"
echo ${traco}
read -p "Opcao: " opcao
case $opcao in
   1) uname ;;
   2) uptime ;;
   3) hostname ;;
   4) date ;;
   *)  echo "A opcao escolhida nao e valida." ;;
esac
