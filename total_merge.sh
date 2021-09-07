#!/bin/bash
cd ~/msisdn/csv
awk '(NR == 1) || (FNR > 1)' taukir_goodness*.csv > ~/msisdn/csv/taukir_msisdn_btrc.csv
