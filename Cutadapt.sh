#!/bin/sh

#  Cutadapt.sh
#  
#
#  Created by Kaoru Richard Komatsu on 2019/05/23.
#
#

cutadapt -e 0.2 -g GGACGTGACACGACGTGCGC 3_S3_L001_R1_001.fastq.gz > L3_53trim.fastq 2>L3_1stats.txt
cutadapt -e 0.2 -g GGACGTGACACGACGTGCGC 4_S4_L001_R1_001.fastq.gz > L4_53trim.fastq 2>L4_1stats.txt

# Adapter trim
cutadapt  -e 0.2 -a GCGTACGTCGGACCTCAGGTCGACCATGGACGCCC L3_53trim.fastq -o L3_RBNS_BICCd4.fastq --untrimmed-output L3_untrimmed.fastq >> L3_2stats.txt
cutadapt  -e 0.2 -a GCGTACGTCGGACCTCAGGTCGACCATGGACGCCC L4_53trim.fastq -o L4_Mock.fastq --untrimmed-output L4_untrimmed.fastq >> L4_2stats.txt

#Fastq2Fasta
#awk 'NR % 4 == 1 || NR % 4 == 2' *_53trim.fastq | sed -e 's/^@/\>/' > *_R1.fa

awk 'NR % 4 == 1 || NR % 4 == 2' L3_RBNS_BISSd4.fastq | sed -e 's/^@/\>/' > L3_RBNS_BICCd4.fa
awk 'NR % 4 == 1 || NR % 4 == 2' L4_Mock.fastq | sed -e 's/^@/\>/' > L4_Mock.fa

rm *trim.fastq
