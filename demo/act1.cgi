#!/bin/bash

source lib.cgi

echo "Content-Type: text/html; charset=$CHARSET"
echo

title="$PRJECT - Action 1"
main=act1
layout_render demo
