#! /bin/bash

# Run crab for E ch samples
for i in 2016_preVFP 2016_postVFP 2017 2018;
do
    cd $i
    echo $i
    for j in *
    do
        cd $j
        echo $j
        crab submit -c crab_cfg_$j.py
        cd ..
    done
    cd ..
done

# # Check status of crab jobs
# for i in 2016_preVFP 2016_postVFP 2017 2018;
# do
#     cd $i
#     echo $i
#     for j in *
#     do
#         cd $j
#         echo $j
#         crab status -d crab_$j
#         cd ..
#     done
#     cd ..
# done

# # Resubmit failed jobs
# for i in 2016_preVFP 2016_postVFP 2017 2018;
# do
#     cd $i
#     echo $i
#     for j in *
#     do
#         cd $j
#         echo $j
#         crab resubmit -d crab_$j
#         cd ..
#     done
#     cd ..
# done