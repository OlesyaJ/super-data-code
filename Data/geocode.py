#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pathlib
import pandas as pd
import numpy as np
import os

import h3


# In[2]:


import pandas as pd
from tqdm import tqdm
tqdm.pandas()
import time


# In[3]:


data=pd.read_excel('my_data.xlsx', sheet_name=0)


# In[4]:


data=data.drop_duplicates(subset=['adres'])
data['longitude']=0
data['latitude']=0

data_adress=data[['adres','longitude','latitude']]
data_adress['adres']=data_adress['adres'].str.replace('\n', ' ')

data_adress


# In[ ]:





# In[5]:


from decimal import Decimal
from yandex_geocoder import Client
client = Client("key")


coordinates = client.coordinates('г. Москва, ул. Красная Пресня, д. 31/2')
coordinates[0]


# In[70]:


import threading
import time
import random
from random import randint

colll=6

def worker(i):
    time.sleep(randint(0, 20)/100)
    data_adress.loc[i,'longitude'] =1
    data_adress.loc[i,'latitude'] =1
    
    coordinates = client.coordinates(data_adress['adres'].loc[i])
    print(coordinates)
    data_adress.loc[i,'longitude'] =coordinates[0]
    data_adress.loc[i,'latitude'] =coordinates[1]

    #print(i)

for k in tqdm(range(int(len(data_adress[data_adress['longitude']==0])/colll))):

    time.sleep(0.05)
    
    for i in data_adress[data_adress['longitude']==0][:colll].index:
        t = threading.Thread(target=worker, args=(i,))
        t.start()
data_adress.to_csv('my_data_geo.csv') 


# In[73]:


data_adress_cl=data_adress[data_adress['longitude']!=1]


# In[74]:


data_adress_cl


# In[75]:


data_adress_cl.to_excel("data_adress_cl.xlsx",sheet_name='Sheet_name_1')  


# In[ ]:




