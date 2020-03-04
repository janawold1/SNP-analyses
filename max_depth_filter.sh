#!/bin/bash

bcftools filter -O z -o ../all_sites/max.depth50.vcf.gz ../Kakapo_snps_gvcf_merged.bcf -e 'DP>50'
bcftools filter -O z -o ../all_sites/max.depth100.vcf.gz ../Kakapo_snps_gvcf_merged.bcf -e 'DP>100'
bcftools filter -O z -o ../all_sites/max.depth150.vcf.gz ../Kakapo_snps_gvcf_merged.bcf -e 'DP>150'
bcftools filter -O z -o ../all_sites/max.depth200.vcf.gz ../Kakapo_snps_gvcf_merged.bcf -e 'DP>200'
