#!/bin/bash

rm ttt.txt

echo "Server/mnt/Drive/Folder/FileName"
server=chia00
ssh $server "ls /mnt/4TB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_03/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_04/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_05/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_06/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_07/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_08/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"


server=chia01
ssh $server "ls /mnt/4TB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_03/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_04/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_05/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_06/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_07/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_08/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_09/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_10/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_11/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_12/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4TB_13/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/3TB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/3TB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/3TB_03/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"


server=chia03
ssh $server "ls /mnt/3000GB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/3000GB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/2000GB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/2000GB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/2000GB_03/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/2000GB_04/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_03/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_04/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_05/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_06/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_07/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_08/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_09/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_10/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"


server=chia04
ssh $server "ls /mnt/1000_01GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/1000_02GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/1000_03GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/2000_01GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/2000_02GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4000_01GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4000_02GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/4000_03GB/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"



server=chia05
ssh $server "ls /mnt/600GB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_03/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_04/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_05/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_06/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_07/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_08/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_09/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_10/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_11/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/600GB_12/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"




server=lxcfarmer
ssh $server "ls /mnt/zz_10TB_01/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/zz_10TB_02/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/zz_10TB_03/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/zz_10TB_04/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/zz_10TB_05/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
ssh $server "ls /mnt/zz_10TB_06/Plots/*.dat" > ttt.txt
cat ttt.txt  | sed "s/^/$server/"
