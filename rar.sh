#!/bin/bash
cd ~/msisdn/csv

now=$(date +"%m_%d_%Y")

rar a ~/msisdn/daily_rar/taukir_goodness_$now.rar taukir_msisdn_btrc.csv
