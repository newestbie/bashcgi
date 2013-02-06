#!/bin/bash

source config.cgi
source param.cgi
source template.cgi

function context_render {
	render_template "$TEMPLATE_DIR/$1.t"
}

function layout_render {
	local content="$(context_render $1)"
	render_template "$TEMPLATE_DIR/layouts/$LAYOUT.t"
}

function = {
	echo -n $@
}

function indent_filter {
    sed "2,\$s/^/$TL_LEAD_STR/"
}
