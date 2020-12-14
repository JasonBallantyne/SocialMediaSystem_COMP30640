#!/bin/bash
# Error checking is done within the respective script it calls

while true; do
	read -a arr;
	request="${arr[0]}";
	case "$request" in
		create)
			echo "${arr[@]:1}"
			./create.sh "${arr[@]:1}"
			;;
		add)
			./add.sh "${arr[@]:1}"
			;;
		post)
			./post.sh "${arr[@]:1}"
			;;
		show)
			./show.sh "${arr[@]:1}"
			;;
		shutdown)
			exit 0
			;;
		*)
			echo "Error: bad request"
			exit 1
	esac
done
