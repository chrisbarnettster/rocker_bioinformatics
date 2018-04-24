FROM rocker/tidyverse:latest

RUN R -e "source('https://bioconductor.org/biocLite.R');biocLite();biocLite(c('GenomicFeatures', 'DESeq2', 'Rsamtools', 'AnnotationDbi','GenomicAlignments', 'BiocParallel','tximport', 'ggplot2', 'clusterProfiler', 'biomaRt', 'ReactomePA', 'DOSE', 'KEGG.db', 'org.Mm.eg.db', 'org.Hs.eg.db', 'pheatmap', 'genefilter', 'RColorBrewer', 'GO.db', 'topGO', 'dplyr', 'gage', 'ggsci', 'pathview'))" 
