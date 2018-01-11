FROM rocker/tidyverse:latest

RUN R -e "biocLite();biocLite(c('GenomicFeatures', 'DESeq2', 'Rsamtools', 'AnnotationDbi','GenomicAlignments', 'BiocParallel'))" \
&& install2.r --error \
    --deps TRUE \
    tximport \ 
    readr
