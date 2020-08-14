#!/bin/bash
cd ~
source ./chia-blockchain/activate

cd chia-blockchain

chia-create-plots -k 31 -i 4000 -n 10 -t /mnt/512GBNVME/T_Plots -2 /mnt/512GBNVME/T_Plots -d /mnt/zz_10TB_06/Plots/


~/send_task_complete_email.sh
