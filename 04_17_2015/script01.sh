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

clear
echo ${traco}

case $opcao in
   1) echo "Nome do Sistema: $(uname)" ;;
   2) echo "Atividade: $(uptime)" ;;
   3) echo "Nome do host: $(hostname)" ;;
   4) echo "Data e Hora: $(date)" ;;
   *) echo "A opcao escolhida nao e valida." ;;
esac

echo ${traco}
sleep 3