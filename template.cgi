#!/bin/bash

function render_template {
	local _flag=0
	local _line
	local _t
	local _code
	local TL_LEAD_STR

	local IFS=$'\n'
	while read -r _line; do
		if [[ -z "$_line" && $_flag -eq 0 ]]; then
			echo
			continue
		fi

		while [[ -n "$_line" ]]; do
			if [[ $_flag -eq 0 ]]; then
				_t=${_line%%<\?*}
				if [[ ${#_t} -lt ${#_line} ]]; then
					_flag=1
					TL_LEAD_STR=$_t
					echo -n "$_t"
					_line=${_line#*<\?}
				else
					echo "$_line"
					_line=""
				fi
			fi

			if [[ $_flag -eq 1 ]]; then
				_t=${_line%%\?>*}
				_code="$_code$_t
"
				if [[ ${#_t} -lt ${#_line} ]]; then
					_flag=0
					eval "$_code"
					_code=""
					_line=${_line#*\?>}
				else
					_line=""
				fi
			fi
		done
	done <$1
}
