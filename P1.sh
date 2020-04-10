#!/bin/bash
cd ~
source ./chia-blockchain/activate

cd chia-blockchain

chia-create-plots -k 31 -i 46520 -n 10 -t /mnt/512GBNVME/Plots -d /mnt/zz_10TB_06/Plots/


~/send_task_complete_email.sh
