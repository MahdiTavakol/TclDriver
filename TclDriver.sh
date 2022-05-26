#!/bin/bash

#Simulations list
Sims=("1-Sim#1"  "2-Sim#2"  "3-Sim#3"  "4-Sim#4"  "5-Sim#5")
Scripts=("SMD-COM.tcl"  "MaxBondLength_v02.tcl"   "ResCloseCal.tcl" "SASA.tcl" )

for folder in "${Sims[@]}"
do
	for script in "${Scripts[@]}"
	do
		cp $script $folder/$script
	done
done
 

cd ${Sims[0]}


for sim in "${Sims[@]}"
do
	cd ../$sim
	for script in "${Scripts[@]}"
	do
		vmd -dispdev text -e $script
	done
done

cd ../

#for folder in "${Sims[@]}"
#do
#	for script in "${Scripts[@]}"
#	do
#		rm ./$folder/$script
#	done
#done

