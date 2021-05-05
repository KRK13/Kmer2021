# KmerCounting_NatureCommun2021

Jupyter notebook for data analysis of Bind-n-seq using Bicc1 protein.

Input files are two FASTQ files of target enriched reads and controls.   
The adapter sequences of the reads were trimmed by cutadapt 1.10 with parameter -e set to 0.2. 

The output contains relative frequencies and enrichment scores of k-mers.  
Sequencing data are available to download from Gene Expression Omnibus (GEO) under accession number GSE140931.

### Requirements:

Julia 1.6.0. 

### Preprocessing
Quality filters remove the following reads.
* Duplicated reads
* Average Qscore is less than 30.
* Length is not 20nt.

