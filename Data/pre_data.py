#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pathlib
import pandas as pd
import numpy as np
import os

import h3


# In[ ]:





# In[2]:


EGRUL=pd.read_excel('./data/Реестр ЕГРЮЛ г.Челябинск.xlsx', sheet_name=0)
EGRUL


# In[3]:


EGRUL['Вид деятельности'].unique()


# In[4]:


EGRUL_my=EGRUL[['Название','ИНН','Адрес', 'Вид деятельности','Телефоны']]


# In[5]:


EGRUL_my


# In[ ]:





# In[6]:


doc1=pd.read_excel('data/20.10.2021 Реестр лицензий на заготовку, хранение, переработку и реализацию лома черных металлов, цветных металлов.xlsx', sheet_name=0,header=2)
doc1=doc1[pd.isnull(doc1['Основание и дата прекращения\nдействия лицензии\n'])]
doc1


# In[7]:


doc1.columns


# In[8]:


doc1_my=doc1[['Наименование предприятия (полное и (в случае, если имеется) сокращенное наименование, организационно-правовая форма)','ИНН            ОГРН','ИНН            ОГРН','Вид работ','Место осуществления деятельности']]
doc1_my.columns=['name','inn','ogrn','type','adres']

doc1_my


# In[ ]:





# In[ ]:





# In[9]:


doc2=pd.read_excel('./data/Реестр лицензий на обращение с отходами 1.xls', sheet_name=0,header=1)
doc2=doc2[pd.isnull(doc2['Unnamed: 13'])]
doc2=doc2.dropna(subset=['Наименование предприятия (полное, сокращенное, фирменное), ФИО индивидуального предпринимателя'])
doc2


# In[10]:


doc2.columns


# In[11]:


doc2_my=doc2[['Наименование предприятия (полное, сокращенное, фирменное), ФИО индивидуального предпринимателя','ОГРН','Unnamed: 6','Unnamed: 17','Unnamed: 18']]
doc2_my.columns=['name','inn','ogrn','type','adres']

doc2_my


# In[ ]:





# In[12]:


doc3=pd.read_excel('./data/Реестр лицензий на обращение с отходами 2.xls', sheet_name=0,header=1)
doc3=doc3[pd.isnull(doc3['Unnamed: 13'])]
doc3=doc3.dropna(subset=['Наименование предприятия (полное, сокращенное, фирменное), ФИО индивидуального предпринимателя'])

doc3


# In[ ]:





# In[13]:


doc3.columns


# In[14]:


doc3_my=doc3[['Наименование предприятия (полное, сокращенное, фирменное), ФИО индивидуального предпринимателя','ОГРН','Unnamed: 6','Unnamed: 17','Unnamed: 18']]
doc3_my.columns=['name','inn','ogrn','type','adres']

doc3_my


# In[15]:


doc4=pd.read_excel('./data/Реестр ПТО НВОС.xlsx', sheet_name=0)
doc4=doc4[pd.isnull(doc4['Дата исключения из реестра'])]
doc4=doc4.dropna(subset=['Местонахождение объекта'])

doc4


# In[16]:


doc4.columns


# In[ ]:





# In[17]:


doc4_my=doc4[['Наименование объекта','ИНН', 'ОГРН','Категория \nобъекта НВОС','Местонахождение объекта']]
doc4_my.columns=['name','inn','ogrn','type','adres']

doc4_my


# In[18]:


doc5=pd.read_excel('./data/Реестр разрешений на выбросы загрязняющих веществ -Минэкология.xlsx', sheet_name=0)
doc5=doc5.dropna(subset=['Юридический адрес / фактический адрес месторасположения'])

doc5


# In[19]:


doc5['vred']=str(doc5['(разбивка по веществам в тоннах)'])+str(doc5['Unnamed: 7'])+str(doc5['Unnamed: 8'])


# In[20]:


doc5['vred']


# In[21]:


doc5.columns


# In[22]:


doc5_my=doc5[['Наименование юридического лица (филиала по субъекту Российской Федерации), фамилия, имя, отчество индивидуального предпринимателя','Идентификационный номер налогоплательщика', 'Номер и дата выдачи разрешения на выброс вредных (загрязняющих) веществ в атмосферный воздух','vred','Юридический адрес / фактический адрес месторасположения']]
doc5_my.columns=['name','inn','ogrn','type','adres']
doc5_my


# In[23]:


my_data=pd.concat([doc1_my, doc2_my,doc3_my,doc4_my,doc5_my], axis=0)
my_data['adres']=my_data['adres'].str.replace('\n', ' ')


# In[24]:


my_data.to_excel("my_data.xlsx",
             sheet_name='Sheet_name_1')  

