#!/usr/bin/env python
# coding: utf-8

# In[2]:


from stackapi import StackAPI
SITE = StackAPI('stackoverflow')
comments = SITE.fetch('comments')


# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import wbgapi as wb


# In[2]:


import matplotlib.pyplot as plt


# In[4]:


import wbgapi as wb


# In[5]:


wb.source.info()


# In[5]:


wb.economy.info()


# In[6]:


wb.series.info()


# In[7]:


wb.series.info(q="gender")


# In[8]:


wb.series.info(q="gender")


# In[9]:


wb.series.info(q='business')


# In[5]:


business = wb.data.DataFrame('IC.REG.DURS', wb.region.members('ECS'))
ren = wb.data.DataFrame('IC.REG.DURS', ['FRA','UKR','EST'], time=range(2003,2019))
business


# In[8]:


#ren = wb.data.DataFrame('IC.REG.DURS', ['FRA','UKR','EST'], time=range(2003,2019))
#ren.plot.bar()
wb.data.DataFrame('IC.REG.DURS', ['FRA','UKR','EST'], time=range(2000,2019,3)).T.plot();
#g5 = business.sort_values(by=['YR2019'],ascending=True)[:3]
#ax = business.T.plot(color='lightgray', legend=False)
g5.T.plot(ax=ax, figsize=(15,5))


# In[9]:


business = wb.data.DataFrame('IC.REG.DURS', wb.region.members('ECS'))
ren = wb.data.DataFrame('IC.REG.DURS', ['FRA','UKR','EST', 'KXK', 'SWE'], time=range(2003,2019))
business


# In[10]:


#ren = wb.data.DataFrame('IC.REG.DURS', ['FRA','UKR','EST','KXK', 'SWE'], time=range(2003,2019))
#ren.plot.bar()
wb.data.DataFrame('IC.REG.DURS', ['FRA','UKR','EST'], time=range(2000,2019,3)).T.plot();
#g5 = business.sort_values(by=['YR2019'],ascending=True)[:3]
#ax = business.T.plot(color='lightgray', legend=False)
g5.T.plot(ax=ax, figsize=(15,5))


# In[ ]:




