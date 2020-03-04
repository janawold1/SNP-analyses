#!/bin/sh
 
#################################
#Running g2 linkage stats with vcftools
#################################
 
cd /kakapo-data/
#mkdir bowtie/{reference,bam,sam,bcf,vcf}
 
echo "Calculating linkage..."
 
for vcf in VCFs/*.vcf
do
    echo "Working with file $vcf"
    base=$(basename $vcf .vcf)
    echo "base name is $base"
 
    vcf=/kakapo-data/VCFs/${base}.vcf
    vcftools_out=/kakapo-data/vcftools/linkage/${base}
     
    vcftools --vcf $vcf --geno-r2 --out $vcftools_out
    vcftools --vcf $vcf --geno-r2-positions --out $vcftools_out
done