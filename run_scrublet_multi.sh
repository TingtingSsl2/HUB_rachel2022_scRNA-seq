PREFIX="/Volumes/bioinformatics/projects/rachel2022/output/02_cellranger_count_expectedCells/"
SUFFIX="/outs/filtered_feature_bc_matrix"
OUTS="/Volumes/bioinformatics/projects/rachel2022/output/03_scrublet/"
#SAMPLES=("QTau-2")
SAMPLES=("Control-1" "Control-2" "Control-3" "QTau-1" "QTau-2" "QTau-3" "QASyn-1" "QASyn-2" "QASyn-3" "P251L-1" "CTRL-2" "Tau-KO-1" "P251L-2" "w3")

~/anaconda3/bin/python scrublet_multi.py $PREFIX $SUFFIX $OUTS "${SAMPLES[@]}" # if run scripts on server
#/Users/tingtingzhao/anaconda3/bin/python3 scrublet_multi.py $PREFIX $SUFFIX $OUTS "${SAMPLES[@]}"

# "QTau-2" causes a problem for running the script
