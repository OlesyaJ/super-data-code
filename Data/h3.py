#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('pip install seaborn')
get_ipython().system('pip install h3')
get_ipython().system('pip install folium')
get_ipython().system('pip install shapely')


# In[2]:


import pathlib
import pandas as pd
import numpy as np

import h3


# In[3]:


data=pd.read_excel('my_data.xlsx', sheet_name=0)
data_adress_cl=pd.read_excel('data_adress_cl.xlsx', sheet_name=0)


# In[ ]:





# In[4]:


data=data.drop_duplicates(subset=['name'])
data


# In[5]:


data_adress_cl


# In[6]:


data=data.merge(data_adress_cl, left_on='adres', right_on='adres')
data=data[data['longitude']>55]
data


# In[7]:


get_ipython().run_cell_magic('time', '', "h3_level = 7\n \ndef lat_lng_to_h3(row):\n    return h3.geo_to_h3(\n      row['latitude'], row['longitude'], h3_level)\n \ndata['h3'] = data.apply(lat_lng_to_h3, axis=1)")


# In[8]:


data_count=pd.DataFrame(data.value_counts(['h3'])).reset_index()
data_count


# In[ ]:





# In[9]:


data_count['color']=data_count[0]
data_count['color'][data_count['color']>200]=200
data_count['color']=round(250*(1-data_count[0]/data_count[0].max())).astype(int).apply( hex )
data_count['color']='#ff'+data_count['color'].astype(str).str[2:]+data_count['color'].astype(str).str[2:]

data_count


# In[ ]:





# In[10]:


get_ipython().run_cell_magic('time', '', '#Тепловая карта для СПб\nimport pandas as pd\nfrom folium.plugins import HeatMap\nfrom folium.plugins import FastMarkerCluster\nfrom shapely.geometry import Polygon\n\n\nimport folium\nV=[]\nHeat=[]\n\n#Создание карты\nhmap = folium.Map(location=[55.0 ,61.23], zoom_start=7)\n\n\n\nfor i in data_count.index: \n\n    polygon_geom = Polygon(h3.h3_to_geo_boundary(data_count[\'h3\'].loc[i], True)[:6])\n    \n\n    fillColor=data_count[\'color\'].loc[i]\n    color=data_count[\'color\'].loc[i]\n\n    list_h3=data[[\'name\',\'inn\']][data[\'h3\']==data_count[\'h3\'].loc[i]].to_html(index=False,)\n\n    folium.GeoJson(\n        polygon_geom,\n        style_function=lambda x,fillColor=fillColor, color=color: {\n            "fillColor": fillColor,\n            "color": "#000000",\n            \'weight\' :0.3,\n            \'fillOpacity\': 0.5 \n        },\n    ).add_child(folium.Popup(list_h3, min_width=500, max_width=500)).add_to(hmap)\n    \n \n  \n    \ndisplay(hmap)')


# In[ ]:





# In[11]:


get_ipython().run_cell_magic('time', '', "hmap.save('h3.html')")


# In[12]:


get_ipython().system('pip install  cdsapi')


# In[13]:


import cdsapi
c = cdsapi.Client()


# In[ ]:





# In[14]:


latitude = 55.0 # North, South
longitude = 61.23 # West , East


# In[ ]:





# In[ ]:





# In[15]:


get_ipython().system('pip install xarray')


# In[ ]:


import cdsapi
import xarray as xr

# settings
filename = "here.nc"

# request
c = cdsapi.Client()
res = c.retrieve(
    "reanalysis-era5-single-levels",
    {
        "product_type": "reanalysis",
        "variable": "2m_temperature",
        "year": "2021",
        "month": "01",
        "day": "01",
        "time": [
            "00:00",
        ],
        'area': [
             55.0, 61.0, 
            56.0, 62.0,
        ],
        "format": "netcdf",
    },
    filename,
)

nc = xr.open_dataset(filename, decode_cf=False)
df = nc.to_dataframe().reset_index(drop=False)
print(df)


# In[ ]:




