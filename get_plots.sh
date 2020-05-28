#!/bin/bash
echo "Server/mnt/Drive/Folder/FileName"

server=chia00
drives=(4TB_01 4TB_02 4TB_03 4TB_04 4TB_05 4TB_06 4TB_07 4TB_08)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done

server=chia01
drives=(4TB_01 4TB_02 4TB_03 4TB_04 4TB_05 4TB_06 4TB_07 4TB_08 4TB_09 4TB_10 4TB_11 4TB_12 4TB_13 3TB_01 3TB_02 3TB_03)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done

server=chia02
drives=(600GB_01 600GB_02 600GB_03 600GB_04 600GB_05 600GB_06 600GB_07 600GB_08 600GB_09 600GB_10 600GB_11 600GB_12 600GB_13 600GB_14 600GB_15 600GB_16)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done

server=chia03
drives=(3000GB_01 3000GB_02 2000GB_01 2000GB_02 2000GB_03 2000GB_04 600GB_01 600GB_02 600GB_03 600GB_04 600GB_05 600GB_06 600GB_07 600GB_08 600GB_09 600GB_10)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done

server=chia04
drives=(1000_01GB 1000_02GB 1000_03GB 2000_01GB 2000_02GB 4000_01GB 4000_02GB 4000_03GB)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done

server=chia05
drives=(600GB_01 600GB_02 600GB_03 600GB_04 600GB_05 600GB_06 600GB_07 600GB_08 600GB_09 600GB_10 600GB_11 600GB_12)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done

server=chia06
drives=(1200GB_RAID0 250GB_01 320GB_01_SATA 320GB_02_SATA 320GB_04 320GB_05 320GB_06 400GB_BIG 500GB_01_SATA 500GB_02_SATA 500GB_03_SATA 500GB_BIG 450GB_01 450GB_02)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done

server=lxcfarmer
drives=(zz_10TB_01 zz_10TB_02 zz_10TB_03 zz_10TB_04 zz_10TB_05 zz_10TB_06 W)
for i in "${drives[@]}"
do
    ssh $server "ls /mnt/$i/Plots/*.dat" | sed "s/^/$server/"
done
