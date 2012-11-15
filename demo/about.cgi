#!/bin/bash

source lib.cgi

echo "Content-Type: text/html; charset=$CHARSET"
echo

title="$PROJECT - About"
main=about
layout_render demo
