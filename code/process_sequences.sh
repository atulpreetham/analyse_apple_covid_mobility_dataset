#!/bin/bash

# Creating a bash script to analyse different aspects of the sars cov sequence data. This bash 
# script take the path to a compressed fasta file. The script calculates and reports out the 
# total number of sequences in the file.The script also tally up the number of SARS-CoV-2 
# sequences in the dataset from each country and sort this output from largest to smallest.

# Atul Preetham
# November 2021
# apreetham@dons.usfca.edu

# defensive check to make sure an input is given
if [ $# -eq 0]
then
	echo "To run the script supply an arguement."
	echo "The arguement is a compressed fasta file containing SARS-CoV-2 sequences"
	exit 1
fi

# defining the input of the file
input=$1

# tool for calculating the total sequences in the file and assigning the total to the output 
# folder as a .txt file
echo "The total number of sequences in the file are"
bioawk -c fastx '{print $seq}' $1 | wc -l


