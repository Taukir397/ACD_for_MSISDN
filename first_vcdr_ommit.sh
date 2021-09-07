#!/bin/bash
cd ~/msisdn/yesterday
# ommit the first vcdr if necessery as it can contain previous days data
mv `ls | head -1` ~/msisdn/firstvcdr/
