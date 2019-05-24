#! /bin/bash

cd E:/reciept

while true 
do 
	fc="$(ls|wc -l)" 
	if [ $fc -gt 0 ]; 
		then 
		FILES=E:/reciept/* 
		for f in $FILES 
		do 
			/mingw64/bin/git add $f 
			/mingw64/bin/git commit -m "DATE=$(date +%d-%m-%Y)" 
			/mingw64/bin/git remote add origin https://github.com/k8376654/reciept.git
			/mingw64/bin/git push -u origin master 
			/mingw64/bin/git remote remove origin 
		done 
	fi; 
	
	sleep 3 
done
