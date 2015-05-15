#!/bin/bash

clear

traco="-----------------------------------------------------------------------"

dados_cpu[0]=$(cat /proc/cpuinfo | grep "model name" | cut -d":" -f2)
dados_cpu[1]=$(cat /proc/cpuinfo | grep "MHz" | cut -d":" -f2)
dados_cpu[2]=$(cat /proc/cpuinfo | grep "cache size" | cut -d":" -f2)
dados_cpu[3]=$(cat /proc/cpuinfo | grep "cpu cores" | cut -d":" -f2)

echo ${traco}
echo "INFORMACOES SOBRE O PROCESSADOR"
echo ${traco}
echo "Relatorio emitido em $(date +%d/%m/%Y) - $(date +%H:%M:%S)"
echo
echo "Modelo            :${dados_cpu[0]}"
echo "Clock (MHz)       :${dados_cpu[1]}"
echo "Tamanho do Cache: :${dados_cpu[2]}"
echo "Qte. de Nucleos   :${dados_cpu[3]}"
echo ${traco}
