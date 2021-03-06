#!/bin/bash


echo "parsing 03_fitness_normalizing"


strindex() { 
  x="${1%%$2*}"
  [[ $x = $1 ]] && echo -1 || echo ${#x}
}

declare -a files=`find /dissertation_output/05_enhanced_expansion -name pge_errs.log -exec ls -d {} \;`


rm -f table.txt

for file in ${files[@]}; do
	if [ ! -f "table.txt" ]; then
		cols=`head -n 1 $file`
		# echo "problem $cols" 
		echo "group problem $cols" > table.txt
	fi

	idx1=`strindex $file "config"`
	idx2=`strindex $file "clean"`
	let idx1+=7
	let end=idx2-idx1-1
	group=${file:idx1:end}


	idx1=`strindex $file "clean"`
	idx2=`strindex $file "pge_errs.log"`
	let idx1+=6
	let end=idx2-idx1-1
	short=${file:idx1:end}

	echo "$group $short"

	# contents=`tail -n +2 $file`
	
	while read -r line
	do
		echo "$group $short $line" >> table.txt
	done < <(tail -n +2 $file)


done

python3 parse.py

