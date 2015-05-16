#!/bin/bash
echo "$$" > /var/run/nic_inf.pid
interface=eth0
while [ -n ${interface} ]
do 
   #clear
   # echo "Informacoes sobre a interface ${interface}"
   # echo "==============================================================="

   endereco_ip=$(ifconfig ${interface} | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1)
   endereco_mac=$(ifconfig ${interface} | grep "HWaddr" | cut -d" " -f11)
   pac_rec_nor=$(ifconfig ${interface} | grep "RX packets" | cut -d":" -f2 | cut -d" " -f1)
   pac_rec_err=$(ifconfig ${interface} | grep "RX packets" | cut -d":" -f3 | cut -d" " -f1)
   pac_rec_des=$(ifconfig ${interface} | grep "RX packets" | cut -d":" -f4 | cut -d" " -f1)
   pac_tra_nor=$(ifconfig ${interface} | grep "TX packets" | cut -d":" -f2 | cut -d" " -f1)
   pac_tra_err=$(ifconfig ${interface} | grep "TX packets" | cut -d":" -f3 | cut -d" " -f1)
   pac_tra_des=$(ifconfig ${interface} | grep "TX packets" | cut -d":" -f4 | cut -d" " -f1)
   bytes_rec=$(ifconfig ${interface} | grep "RX bytes" | cut -d":" -f2 | cut -d" " -f1)
   bytes_tra=$(ifconfig ${interface} | grep "TX bytes" | cut -d":" -f3 | cut -d" " -f1)
   data_leitura=$(date +%d/%m/%Y)
   hora_leitura=$(date +%H:%M:%S)

   # echo "Endereco IP: ${endereco_ip}"
   # echo "Endereco MAC: ${endereco_mac}"
   # echo "Pacotes Recebidos: ${pac_rec_nor}"
   # echo "Pacotes Recebidos com Erros: ${pac_rec_err}"
   # echo "Pacotes Recebidos mas Descartados: ${pac_rec_des}"
   # echo "Pacotes Enviados: ${pac_tra_nor}"
   # echo "Pacotes Enviados com Erros: ${pac_tra_err}"
   # echo "Pacotes Enviados mas Descartados: ${pac_tra_des}"
   # echo "Bytes Recebidos: ${bytes_rec}"
   # echo "Bytes Enviados: ${bytes_tra}"
   # echo "Data da Leitura: ${data_leitura}"
   # echo "Hora da Leitura: ${hora_leitura}"
   # echo "==============================================================="

   mysql -e "insert into nic_inf values ('','${endereco_ip}','${endereco_mac}',${pac_rec_nor},${pac_rec_err},${pac_rec_des},${pac_tra_nor},${pac_tra_err},${pac_tra_des},${bytes_rec},${bytes_tra},'${data_leitura}','${hora_leitura}');" test 
   sleep 180
done
