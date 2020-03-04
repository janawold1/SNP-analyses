#!/bin/sh
##################################
##Calculating medelian inheritance
##################################

for vcf in VCFs/S*; 
do 
    echo "Working with file $vcf" 
    base=$(basename $vcf .vcf) 
    echo "base name is $base"
    vcftools --vcf $vcf --mendel named_ped.ped --out vcftools/calc_mendelian/$base
done