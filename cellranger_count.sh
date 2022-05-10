#!/bin/bash
annotation=$1
conda activate scrnaseq
module load cellranger/6.0
cellranger count  --id=$annotation \
                  --transcriptome=/data/bioinformatics/referenceGenome/Drosophila_Melanogaster/Ensembl/dm6/Drosophila_melanogaster.genome \
                  --fastqs=/data/bioinformatics/projects/hassan2022/output/01_cellranger_mkfastq/outs/fastq_path/ \
                  --sample=$annotation \
                  --expect-cells=10000

