#!/bin/bash
python API_search_youtube.py
echo $1 
echo "$(sed 's/}/\n/g' log.txt)" > log.txt
cat log.txt | sed 's/, {//g' | sed -e 's/\[{//g;s/\]//g' | sed -e "s/k': '/k: https:\/\/youtube.com/g" |sed -e "s/'title': '/\nTÍTULO --> /g" | sed -e "s/'//g" |sed -e 's/, id:.*//g'
rm log.txt