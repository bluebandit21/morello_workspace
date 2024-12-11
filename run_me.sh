#!/bin/bash

curr_dir=`pwd`
script_dir=$(dirname $(readlink -f "${0}"))
cd ${script_dir}

### Run w/out mount of local files

#./run-scripts/run_model.sh -m ../fvp_morello/FVP_Morello/models/Linux64_GCC-6.4/FVP_Morello -f busybox

### Run w/ mount of local files

./run-scripts/run_model.sh -m ../fvp_morello/FVP_Morello/models/Linux64_GCC-6.4/FVP_Morello -f busybox -v "${script_dir}/../ltp_workspace/ltp_install/"
## (Run inside running busybox) 
# See commands to run in ltp_commands.txt



cd ${curr_dir}
