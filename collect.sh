#!/bin/bash
d=$(date +%Y%m%d -d yesterday) # d has been defined as previous day.
# collect the previous days vcdr from remote directory to local directory.
scp -P 22 root@192.168.10.65:/usr/local/RAWCDR_Processed/VCDR.$d.* ~/msisdn/yesterday/
