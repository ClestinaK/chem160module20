#!/bin/bash

if [ -f pi.out ]; then
  rm pi.out
fi

if [ ! -f pi.py ]; then
echo "No pi.py"
exit 1
elif [ $# -eq 0 ]; then
echo "No trials"
exit 1
else
for nt in $*; do
	mkdir $nt
	cd $nt
	for i in {1..10}; do
		../pi.py $nt >> pi.out
	done
	cd ..
done
fi

if [ -x pi.py ]
then
   echo "$1 is executable"
else
   echo "$1 is not executable"
fi

if [ ! -d $1 ]; then 
  mkdir $1
else   
  echo "Directory named $1 exists"
   
fi

echo "pi_loop3.bash | wc" >> pi.out
