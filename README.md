# Kmer Counting 


Data analysis of Bind-n-seq using Bicc1 protein.

Input files are two FASTQ files of target enriched reads and controls.   
The adapter sequences of the reads were trimmed by cutadapt 1.10 with parameter -e set to 0.2 (as Cutadapt.sh). 

The output contains relative frequencies and enrichment scores of k-mers.  
Sequencing data are available to download from Gene Expression Omnibus (GEO) under accession number GSE140931.

### Requirements:

Julia 1.6.0. 

### Preprocessing
Quality filters remove the following reads.
* Duplicated reads
* Average Qscore is less than 30.
* Length is not 20nt.

### Calculation
The frequency of each k-mer was determined and normalized by the sum of all frequencies. With k denoting each k-mer, the following formula defines relative frequency: relative frequency(k) = normalized frequency(k)Bicc1/normalized frequency(k) Control.
To identify Bicc1-bound sequence elements, we collected the hexamers whose Z-score for the relative frequency was >3.0.

### Reference
1. Fluid flow-induced left-right asymmetric decay of Dand5 mRNA in the mouse embryo requires Bicc1-Ccr4 RNA degradation complex. Minegishi K., Rothé B., Komatsu KR. _et al._, Nature Communications (2021)
