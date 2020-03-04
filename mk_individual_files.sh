#!/bin/bash

while IFS= read -r line; do
    bcftools view -O v -o key_individuals_Z_no_missing.vcf -g ^miss -s "$line" all_Z_no_missing.vcf
done < key_individuals2.csv
