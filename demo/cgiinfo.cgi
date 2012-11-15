#!/bin/bash

source lib.cgi

echo "Content-Type: text/html; charset=$CHARSET"
echo

context_render cgiinfo
