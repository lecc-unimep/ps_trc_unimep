#!/bin/bash

read -p "Nome:  " nome
read -p "Email: " email
mysql -e "insert into usuarios values ('','${nome}','${email}'); " test
