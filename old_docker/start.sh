#!bin/bash

conda info
echo 'activate hail'
conda activate hail;
echo 'Starting  Lupyter Lab'
jupyter lab --ip='0.0.0.0' --port=8888  --allow-root --NotebookApp.token=''
