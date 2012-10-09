#!/bin/bash

source template.cgi
source param.cgi

echo "Content-Type: text/html"
echo

visitor="momo"
render_template templates/demo.t
