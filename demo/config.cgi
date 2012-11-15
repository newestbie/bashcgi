#!/bin/bash

TEMPLATE_DIR=templates
DOCUMENT_PREFIX=/demo
CHARSET="UTF-8"
PROJECT="Bash CGI"
LAYOUT=bootstrap
COPYRIGHT="&copy;2012 momo"
SPLIT_STYLE=(2 7 3)

NAVBAR=(
    "Home|$DOCUMENT_PREFIX/"
    "About|$DOCUMENT_PREFIX/about.cgi"
)

ACTION_URLS=(
    "Action 1|$DOCUMENT_PREFIX/act1.cgi"
    "Action 2|$DOCUMENT_PREFIX/act2.cgi"
)

LINKS=(
    "GNU|http://www.gnu.org"
    "GitHub|http://github.com"
    "ShellBlog|http://www.shellblog.info"
)
