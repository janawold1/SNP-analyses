#!/bin/bash
WORK=/mnt/c/Users/Jana/Dropbox/Data/VCFs/chrW/GdaughterVSmaternalGmother/GTcheck/
WORK2=/mnt/c/Users/Jana/Dropbox/Data/VCFs/scripts/
while IFS= read -r line;
	do bcftools gtcheck --GTs-only 1 "$WORK$line"_W.vcf.gz > "$WORK"GToutputs/"$line".gtout
done < "$WORK2"GranddaughterVSmaternalgrandmother.csv
