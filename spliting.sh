#!/bin/bash

# if its necessary to split the data split acording to your format, here i have collected A party , duration, operator, a party and cause code, it can vary acording to your vcdr forat.
cd ~/msisdn/yesterday

awk '/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/IGW/' >> /home/pvm3/msisdn/csv/incom.csv

awk '/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '!/IGW/' >> /home/pvm3/msisdn/csv/out.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/BNLINK/' >> /home/pvm3/msisdn/csv/bl.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/GP/' >> /home/pvm3/msisdn/csv/gp.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/ROB/' >> /home/pvm3/msisdn/csv/robi.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/TELE/' >> /home/pvm3/msisdn/csv/tltk.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/IPT_DHK/' >> /home/pvm3/msisdn/csv/dcom.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/IPT_AGNI/' >> /home/pvm3/msisdn/csv/agni.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/IPT_FSNNET/' >> /home/pvm3/msisdn/csv/fusion.csv

awk '!/IGW/' VCDR.* | awk -F, 'int($6) == 16' | awk -F , -v OFS='\t' 'NR == 0 || $6 > 4 {print $53,$15,$55,$6}' | awk '/IPT_BEX/' >> /home/pvm3/msisdn/csv/bex.csv
