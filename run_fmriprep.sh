# example code for FMRIPREP
# runs FMRIPREP on input subject
# usage: bash run_fmriprep.sh sub
# example: bash run_fmriprep.sh 102

sub=$1

docker run -it --rm \
-v /data/projects/srndna/bids:/data:ro \
-v /data/projects/srndna/fmriprep:/out \
-v /data/projects/srndna/fs_license.txt:/opt/freesurfer/fs_license.txt \
poldracklab/fmriprep:latest \
/data /out \
participant --participant_label $sub --use-aroma --fs-no-reconall --fs-license-file /opt/freesurfer/fs_license.txt

# need to select a version and stick with it instead of poldracklab/fmriprep:latest
