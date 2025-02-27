##!/bin/bash

## +-----------------------------------+-----------------------------------+
## | |
## | Copyright (c) 2014-2019, https://github.com/andresgongora/synth-shell |
## | Visit the above URL for details of license and authorship. |
## | |
## | This program is free software: you can redistribute it and/or modify |
## | it under the terms of the GNU General Public License as published by |
## | the Free Software Foundation, either version 3 of the License, or |
## | (at your option) any later version. |
## | |
## | This program is distributed in the hope that it will be useful, |
## | but WITHOUT ANY WARRANTY; without even the implied warranty of |
## | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the |
## | GNU General Public License for more details. |
## | |
## | You should have received a copy of the GNU General Public License |
## | along with this program. If not, see <http://www.gnu.org/licenses/>. |
## | |
## +-----------------------------------------------------------------------+
##
##
## =======================
## WARNING!!
## DO NOT EDIT THIS FILE!!
## =======================
##
## This file was generated by an installation script.
## If you edit this file, it might be overwritten without warning
## and you will lose all your changes.
##
## Visit for instructions and more information:
## https://github.com/andresgongora/synth-shell/
##



editTextFile()
{
	file=$1
	option=$2
	text=${@:3}
	if [ -z "$file" ]; then
		echo "No file specified"
		exit 1
	elif [ ! -f "$file" ]; then
		touch "$file" || exit 1
	elif [ ! -w "$file" ]; then
		echo "$file can not be written"
		exit 1
	fi
	case $option in
	append)
		flat_text=$(echo -e "$text\n" | sed ':a;N;$!ba;s/[]\/$*.^|[]/\\&/g;s/[\n\t]*$//g;s/[\n\t]/\\\\\\&/g')
		found_text=$(sed -n ':a;N;$!ba;s/[\n\t]/\\&/g;/'"$flat_text"'/p' $file)
		if [ -z "$found_text" ]; then
			echo -e "$text" >> "$file"
		fi
		;;
	delete)
		flat_text=$(echo -e "$text" | sed ':a;N;$!ba;s/[]\/$*.^|[]/\\&/g;s/[\n\t]$//g;s/[\n\t]/\\\\\\&/g')
		flat_file=$(sed ':a;N;$!ba;s/[\n\t]/\\&/g;s/'"$flat_text"'//g;s/\\\n/\n/g;s/\\\t/\t/g' $file)
		echo -e "$flat_file" > "$file"
		;;
	*)
		echo "Synopsis: editTextFile FILE [append|delete] [TEXT|VARIABLE]"
		;;
	esac
}
rm -rf /home/tobias/.config/synth-shell
hook="\n##-----------------------------------------------------\n## fancy-bash-prompt\n## Added by synth-shell\n## https://github.com/andresgongora/synth-shell/\nif [ -f /home/tobias/.config/synth-shell/fancy-bash-prompt.sh ]; then\n\tsource /home/tobias/.config/synth-shell/fancy-bash-prompt.sh\nfi"
editTextFile "/home/tobias/.bashrc" delete "$hook"
unset hook
editTextFile()
{
	file=$1
	option=$2
	text=${@:3}
	if [ -z "$file" ]; then
		echo "No file specified"
		exit 1
	elif [ ! -f "$file" ]; then
		touch "$file" || exit 1
	elif [ ! -w "$file" ]; then
		echo "$file can not be written"
		exit 1
	fi
	case $option in
	append)
		flat_text=$(echo -e "$text\n" | sed ':a;N;$!ba;s/[]\/$*.^|[]/\\&/g;s/[\n\t]*$//g;s/[\n\t]/\\\\\\&/g')
		found_text=$(sed -n ':a;N;$!ba;s/[\n\t]/\\&/g;/'"$flat_text"'/p' $file)
		if [ -z "$found_text" ]; then
			echo -e "$text" >> "$file"
		fi
		;;
	delete)
		flat_text=$(echo -e "$text" | sed ':a;N;$!ba;s/[]\/$*.^|[]/\\&/g;s/[\n\t]$//g;s/[\n\t]/\\\\\\&/g')
		flat_file=$(sed ':a;N;$!ba;s/[\n\t]/\\&/g;s/'"$flat_text"'//g;s/\\\n/\n/g;s/\\\t/\t/g' $file)
		echo -e "$flat_file" > "$file"
		;;
	*)
		echo "Synopsis: editTextFile FILE [append|delete] [TEXT|VARIABLE]"
		;;
	esac
}
hook="\n##-----------------------------------------------------\n## better-ls\n## Added by synth-shell\n## https://github.com/andresgongora/synth-shell/\nif [ -f /home/tobias/.config/synth-shell/better-ls.sh ]; then\n\tsource /home/tobias/.config/synth-shell/better-ls.sh\nfi"
editTextFile "/home/tobias/.bashrc" delete "$hook"
unset hook
