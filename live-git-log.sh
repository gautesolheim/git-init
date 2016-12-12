#!/bin/sh

heightslack=10

while :
do
	numlines="$(($(tput lines) - $heightslack))"

	clear
	git --no-pager log --graph --oneline --all --decorate -"$numlines" $*
	sleep 1
done
