if [ "$#" -ne 1 ]; then
    echo "Usage: $0 modality # cfp or oct"
    exit
fi
modality=$1

cd code/
device=2
checkpoint="weights/"$modality".pth"
collection="VisualSearch/mmc-amd-splitA-train"
configs_name="config-"$modality".py"
num_workers=4

python gencam.py --collection $collection --checkpoint $checkpoint\
  --model_configs $configs_name  \
  --device $device --num_workers $num_workers

