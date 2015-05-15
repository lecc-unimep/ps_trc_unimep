/*************************************************************************************************** 
prog07.c - Exemplo de como utilizar a instrucao pthread_create e pthread_join
Prof. Dr. José Luís Zem
Faculdade de Tecnologia de Americana - Fatec
****************************************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>

char mensagem[80]="MSG do Proc. Pai";

void* filho () {
   printf("Processo-Filho: Iniciando Execução.\n");
   printf("Processo-Filho: A mensagem agora é \"%s\".\n", mensagem);
   strcpy(mensagem,"MSG do Proc. Filho");
   printf("Processo-Filho: A mensagem agora é \"%s\".\n", mensagem);
   printf("Processo-Filho: Encerrando Execução.\n");	
}

main() {
  pthread_t	thread_id;
  system("clear");
  printf("Processo-Pai: Iniciando Execução.\n");
  printf("Processo-Pai: A mensagem agora é \"%s\".\n", mensagem);
    pthread_create(&thread_id,NULL,&filho,NULL);
  pthread_join(thread_id,NULL);
  printf("Processo-Pai: A mensagem agora é \"%s\".\n", mensagem);
  printf("Processo-Pai: Encerrando Execução.\n");  
}