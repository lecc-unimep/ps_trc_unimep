#!/bin/bash

read -p "Nome:  " nome
read -p "Email: " email
resultado=$(mysql -e "select nome from usuarios where nome = '${nome}';" test)
if [ -z "${resultado}" ]
then
   mysql -e "insert into usuarios values ('','${nome}','${email}'); " test
else
   echo "Já existe um registro com esse nome."
fi
