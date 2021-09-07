#!/usr/bin/python3
import pandas as pd
import numpy as np
data = pd.read_csv("~/msisdn/csv/incom.csv",
                             sep="\t",
                             header=None,
                             names=["Duration","Aparty","Operator's Name","Count"])
count = data.groupby(['Aparty'])['Count'].count().reset_index()
sum = data.groupby(['Aparty'])['Duration'].sum().reset_index()
ac = pd.merge(count, sum, on='Aparty', how='inner')
dfn = data [["Aparty", "Operator's Name"]]
df = dfn.drop_duplicates(subset=['Aparty'])
acd = pd.merge(df, ac, on='Aparty', how='inner')
acd['ACD'] = acd['Duration']/acd['Count']
final = acd[(acd['Duration']>=300000) & (acd['ACD']>24000)][['Aparty',"Operator's Name",'Count','Duration','ACD']]
final['ACD'] = final['ACD']/6000
final['Duration'] = final['Duration']/6000
final.to_csv(r'~/msisdn/csv/t_incoming.csv', index = False)
