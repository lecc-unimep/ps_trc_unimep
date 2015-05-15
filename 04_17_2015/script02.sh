#!/bin/bash

case "$1" in
   'start')
      echo "Inicializando o servico ..." ;;
   'stop')
      echo "Interrompendo o servico ..." ;;
   'status')
      echo "Exibindo informacoes sobre o servico ..." ;;
   'restart')
      echo "Reinicializando o servico ..." ;;
   'pid')
      echo "Exibindo o pid atribuido ao servico ..." ;;
   *)
      echo "Digite $0 start|stop|status|restart|pid" ;;
esac
