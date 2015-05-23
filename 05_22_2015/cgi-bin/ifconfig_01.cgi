#!/bin/bash

echo "Content-type: text/html"
echo 

echo "<h1>ifconfig $QUERY_STRING</h1>"
echo "<hr>"
echo "<pre>"
ifconfig $QUERY_STRING
echo "</pre>"
