#!/bin/bash

while read -r pair; do
	key=${pair%%=*}
	if [[ -z "$key" || -z "${key##*[\$"'"'`''"'.%]*}" ]]; then
		continue
	fi
	
	value=$(echo -e "$(echo "${pair#*=}" | sed 's/+/ /g; s/%\([0-9a-fA-F]\{2\}\)/\\x\1/g')")
	eval "_GET_$key=\$value"
	_GET[${#_GET[@]}]=$key
done < <(echo "$QUERY_STRING" | sed 's/\&/\n/g')

if [[ "$_RAW_DATA" -gt 0 ]]; then
	:
else
	if [[ "$REQUEST_METHOD" = POST ]]; then
		while read -r pair; do
			key=${pair%%=*}
			if [[ -z "$key" || -z "${key##*[\$"'"'`''"'.%]*}" ]]; then
				continue
			fi

			value=$(echo -e "$(echo "${pair#*=}" | sed 's/+/ /g; s/%\([0-9a-fA-F]\{2\}\)/\\x\1/g')")
			eval "_POST_$key=\$value"
			_POST[${#_POST[@]}]=$key
		done < <(echo "$(cat -)" | sed 's/\&/\n/g')
	fi
fi

while read -r pair; do
	key=${pair%%=*}
	if [[ -z "$key" || -z "${key##*[\$"'"'`''"'.%]*}" ]]; then
		continue
	fi
	
	value=$(echo -e "$(echo "${pair#*=}" | sed 's/+/ /g; s/%\([0-9a-fA-F]\{2\}\)/\\x\1/g')")
	eval "_COOKIE_$key=\$value"
	_COOKIE[${#_COOKIE[@]}]=$key
done < <(echo "$HTTP_COOKIE" |  sed 's/\&/\n/g')
