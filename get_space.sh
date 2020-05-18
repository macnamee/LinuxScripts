#!/bin/bash


echo "Server Drive Total Used Avilable Percentage DriveName NrOfFiles"
server=chia00
space=$(ssh $server "df -k /mnt/4TB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_03" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_03/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_04" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_04/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_05" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_05/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_06" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_06/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_07" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_07/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_08" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_08/Plots/*.dat" | wc -l)
echo $server $space $files

server=chia01
space=$(ssh $server "df -k /mnt/4TB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_03" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_03/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_04" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_04/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_05" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_05/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_06" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_06/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_07" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_07/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_08" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_08/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_09" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_09/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_10" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_10/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_11" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_11/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_12" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_12/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4TB_13" | tail -n 1)
files=$(ssh $server "ls /mnt/4TB_13/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/3TB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/3TB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/3TB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/3TB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/3TB_03" | tail -n 1)
files=$(ssh $server "ls /mnt/3TB_03/Plots/*.dat" | wc -l)
echo $server $space $files


server=chia03
space=$(ssh $server "df -k /mnt/3000GB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/3000GB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/3000GB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/3000GB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/2000GB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/2000GB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/2000GB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/2000GB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/2000GB_03" | tail -n 1)
files=$(ssh $server "ls /mnt/2000GB_03/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/2000GB_04" | tail -n 1)
files=$(ssh $server "ls /mnt/2000GB_04/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_03" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_03/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_04" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_04/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_05" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_05/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_06" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_06/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_07" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_07/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_08" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_08/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_09" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_09/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_10" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_10/Plots/*.dat" | wc -l)
echo $server $space $files



server=chia04
space=$(ssh $server "df -k /mnt/1000_01GB" | tail -n 1)
files=$(ssh $server "ls /mnt/1000_01GB/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/1000_02GB" | tail -n 1)
files=$(ssh $server "ls /mnt/1000_02GB/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/1000_03GB" | tail -n 1)
files=$(ssh $server "ls /mnt/1000_03GB/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/2000_01GB" | tail -n 1)
files=$(ssh $server "ls /mnt/2000_01GB/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/2000_02GB" | tail -n 1)
files=$(ssh $server "ls /mnt/2000_02GB/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4000_01GB" | tail -n 1)
files=$(ssh $server "ls /mnt/4000_01GB/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4000_02GB" | tail -n 1)
files=$(ssh $server "ls /mnt/4000_02GB/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/4000_03GB" | tail -n 1)
files=$(ssh $server "ls /mnt/4000_03GB/Plots/*.dat" | wc -l)
echo $server $space $files


server=chia05
space=$(ssh $server "df -k /mnt/600GB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_03" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_03/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_04" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_04/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_05" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_05/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_06" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_06/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_07" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_07/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_08" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_08/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_09" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_09/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_10" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_10/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_11" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_11/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/600GB_12" | tail -n 1)
files=$(ssh $server "ls /mnt/600GB_12/Plots/*.dat" | wc -l)
echo $server $space $files

server=lxcfarmer
space=$(ssh $server "df -k /mnt/zz_10TB_01" | tail -n 1)
files=$(ssh $server "ls /mnt/zz_10TB_01/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/zz_10TB_02" | tail -n 1)
files=$(ssh $server "ls /mnt/zz_10TB_02/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/zz_10TB_03" | tail -n 1)
files=$(ssh $server "ls /mnt/zz_10TB_03/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/zz_10TB_04" | tail -n 1)
files=$(ssh $server "ls /mnt/zz_10TB_04/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/zz_10TB_05" | tail -n 1)
files=$(ssh $server "ls /mnt/zz_10TB_05/Plots/*.dat" | wc -l)
echo $server $space $files
space=$(ssh $server "df -k /mnt/zz_10TB_06" | tail -n 1)
files=$(ssh $server "ls /mnt/zz_10TB_06/Plots/*.dat" | wc -l)
echo $server $space $files
