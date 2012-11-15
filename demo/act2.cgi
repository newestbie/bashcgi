#!/bin/bash

source lib.cgi

echo "Content-Type: text/html; charset=$CHARSET"
echo

title="$PROJECT - Action 2"
main=act2
layout_render demo
