# -*- coding: utf-8 -*-

import requests, json
from collections import Counter

import urllib.parse
import urllib3

"""
    Tarefa:
    Descobrir de onde os usuarios vem (país)
"""

lista = list()
has_more = True
page = 0
while has_more:
    page = page + 1
    data = urllib.parse.urlencode({
            'key':'8RIrpOz8rP2K8S4cIvZ*0g((',
            'order':'desc',
            'sort':'reputation',
            'site':'pt.stackoverflow',
            'page': page,
            'pagesize': 100
            })
    target_url = 'http://api.stackexchange.com/2.2/users'
    print(data)
    full_url = target_url + '?' + str(data)
    print(full_url)
    response = urllib.request.urlopen(full_url)
    #print(response.read()[:10])
    
    content = response.read()
    print(content[:10])
    items = json.loads(str(content, "utf-8"))
    languages_in_all_repo = list()

    has_more = items['has_more']
    items = items['items']

    for item in items:
        location = item.get('location', 'ND')
        lista.append(location)
    
    
    
print(Counter(lista))
