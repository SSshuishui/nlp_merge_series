#!/bin/bash
export PYTHONPATH="$PYTHONPATH:$PWD"

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 {task_arithmetic|ties|ada_task_wise|ada_task_wise_pp|ada_layer_wise|ada_layer_wise_pp|
    emr|localize_stitch|dataless_localize_stitch}"
    exit 1
fi

# 根据传入的参数执行不同的命令
case $1 in
    task_arithmetic)
        python src/main_task_arithmetic.py
        ;;
    ties)
        python src/main_ties_merging.py
        ;;
    ada_task_wise)
        python src/main_task_wise_adamerging.py
        ;;
    ada_task_wise_pp)
        python src/main_task_wise_adamergingpp.py
        ;;
    ada_layer_wise)
        python src/main_layer_wise_adamerging.py
        ;;
    ada_layer_wise_pp)
        python src/main_layer_wise_adamergingpp.py
        ;;
    emr)
        python src/main_emr_merging.py
        ;;
    localize_stitch)
        python src/main_localize_stitch.py
        ;;
    dataless_localize_stitch)
        python src/main_dataless_localize_stitch.py
        ;;
    *)
        echo "Invalid parameter: $1"
        echo "Usage: $0 {task_arithmetic|ties|ada_task_wise|ada_task_wise_pp|ada_layer_wise|ada_layer_wise_pp|emr|localize_stitch|dataless_localize_stitch}"
        exit 1
        ;;
esac