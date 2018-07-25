FROM rocker/tidyverse:latest

RUN R -e "source('https://bioconductor.org/biocLite.R');biocLite();biocLite(c('GenomicFeatures', 'DESeq2', 'Rsamtools', 'AnnotationDbi','GenomicAlignments', 'BiocParallel','tximport', 'devtools', 'remotes', 'GenomeInfoDbData'));biocLite('hbc/bcbioRNASeq', dependencies = c('Depends', 'Imports', 'Suggests'))" 
