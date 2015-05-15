/*************************************************************************************************** 
prog05.c - Exemplo de como utilizar a instrucao pthread_create e pthread_join
Prof. Dr. José Luís Zem
Faculdade de Tecnologia de Americana - Fatec
****************************************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void* filho (void* mensagem) {
   printf("Processo-Filho: Iniciando Execução.\n");
   printf("Processo-Filho: Recebendo a mensagem \"%s\".\n", mensagem);
   printf("Processo-Filho: Encerrando Execução.\n");	
}

main() {
  pthread_t	thread_id;
  char mensagem[80]="MSG do Proc. Pai";
  system("clear");
  printf("Processo-Pai: Iniciando Execução.\n");
  pthread_create(&thread_id,NULL,&filho,&mensagem);
  pthread_join(thread_id,NULL);
  printf("Processo-Pai: Encerrando Execução.\n");  
}