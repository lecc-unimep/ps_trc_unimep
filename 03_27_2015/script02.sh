#!/bin/bash

clear

traco="-----------------------------------------------------------------------"

dados_memoria[0]=$(cat /proc/meminfo | grep "MemTotal" | cut -d":" -f2 | cut -d"k" -f1 | cut -d" " -f8)
dados_memoria[1]=$(cat /proc/meminfo | grep "MemFree" | cut -d":" -f2 | cut -d"k" -f1 | cut -d" " -f11)
dados_memoria[2]=$(cat /proc/meminfo | grep "SwapTotal" | cut -d":" -f2 | cut -d" " -f6)
dados_memoria[3]=$(cat /proc/meminfo | grep "SwapFree" | cut -d":" -f2 | cut -d" " -f7)

dados_memoria[4]=$((${dados_memoria[0]} - ${dados_memoria[1]}))
dados_memoria[5]=$((${dados_memoria[2]} - ${dados_memoria[3]}))

echo ${traco}
echo "INFORMACOES SOBRE O USO DA MEMORIA"
echo ${traco}
echo "Relatorio emitido em $(date +%d/%m/%Y) - $(date +%H:%M:%S)"
echo
echo "Memoria RAM (Total em KB): ${dados_memoria[0]}"
echo "Memoria RAM (Usada em KB): ${dados_memoria[4]}"
echo "Memoria RAM (Livre em KB): ${dados_memoria[1]}"
echo "Swap (Total em KB)       : ${dados_memoria[2]}"
echo "Swap (Usado em KB)       : ${dados_memoria[5]}"
echo "Swap (Livre em KB)       : ${dados_memoria[3]}"
echo ${traco}
