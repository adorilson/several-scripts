# -*- coding: utf-8 -*-

import requests, json
from collections import Counter

"""
    Tarefa:
    Descobrir de onde os usuarios vem (país)
"""

lista = list()
has_more = True
page = 0
while has_more:
    page = page + 1
    key='8RIrpOz8rP2K8S4cIvZ*0g(('
    target_url = 'http://api.stackexchange.com/2.2/users?order=desc&sort=reputation&site=pt.stackoverflow&key=%s&page=%s&pagesize=100'
    response = requests.get(target_url % (key, page))
    items = json.loads(response.content)
    languages_in_all_repo = list()

    has_more = items['has_more']
    items = items['items']

    for item in items:
        location = item.get('location', 'ND')
        lista.append(location)
    
    
    
print(Counter(lista))
