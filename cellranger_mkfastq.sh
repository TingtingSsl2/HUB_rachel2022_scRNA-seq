
# cellranger mkfastq
conda activate scrnaseq
module load cellranger/6.0
bsub -Is -R 'rusage[mem=10000]' -n 4 /bin/bash

nohup cellranger mkfastq --id=01_cellranger_mkfastq \
                     --run=/data/bioinformatics/projects/rachel2022/data/FC_07296/220316_A01061_0269_BH7KGTDMXY \
                     --csv=/data/bioinformatics/projects/rachel2022/data/FC_07296/220316_A01061_0269_BH7KGTDMXY/BPF_library_Feany_lab_mod.csv

                                        
