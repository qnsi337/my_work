import requests as r
import json
from urllib.parse import quote
import time as t
from PyQt5 import uic
from PyQt5.QtWidgets import QApplication

tip = str(input('Введите тип предмета(1=knife,2=gloves):'))
if tip == '1':
    tip = 'knife'
elif tip == '2':
    tip = 'gloves'  
skip =  int(input('Сколько пропускам предметов на начальном этапе:'))
api =  str(input('Api:'))
count_items = '100'
max_price = int(input('Max price в $:')) * 1000
min_price = int(input('Min price в $:')) * 1000
update_price = int(input('На какую сумму повышать(1$-n$):')) * 1000
ordera =  str(input('Удаляем старые ордера(y/n):'))
if ordera == 'y':
    all_orders = r.get('https://api.waxpeer.com/v1/buy-orders?api='+api).json()
    for j in all_orders['offers']:
        delete = r.get('https://api.waxpeer.com/v1/remove-buy-order?api='+api+'&id='+str(j['id'])).json()
    print('Все ордера удалены!')

while True:
    items_get = r.get('https://api.waxpeer.com/v1/get-items-list?api='+api+'&skip='+str(skip)+'&brand='+tip+'&limit='+count_items+'&sort=desc&max_price='+str(max_price)+'&min_price='+str(min_price)+'&minified=0&game=csgo').json()    
    proverka = 0
    if items_get['items'] == []:
        print('Все найденные предметы выставлены')
        break
    for i in items_get['items']:
        name  = i['name']
        price_predmeta_0_65 = int(i['price']) * 0.65
        check_get = r.get('https://api.waxpeer.com/v1/buy-orders?api='+api).json()
        t.sleep(0.5)
        for poisk in check_get['offers']:
            if poisk['name'] == name:
                proverka = 1
        if proverka == 0:      
            price = 30000
            try:
                chast = name.split('(')
                first_chast = chast[0]
                end_chast = '('+chast[1]
                last = quote(first_chast) + end_chast
            except:
                last = quote(name) 
            create_order = r.post('https://api.waxpeer.com/v1/create-buy-order?api='+api+'&name='+ last +'&amount=1&price='+ str(price)).json()
         
            while create_order['msg'] == 'Please increase your buy order price':
                price = price + update_price
                create_order = r.post('https://api.waxpeer.com/v1/create-buy-order?api='+api+'&name='+ last +'&amount=1&price='+ str(price)).json()
                 
                if price > price_predmeta_0_65:
                    break
            if create_order['msg'] == 'Not enough funds!':
                print('Нехватает баланса')
            if create_order['msg'] == 'Placed order':
                print('Ордер создан:',name,price/1000,'$','Цена предмета:',i['price']/1000,'$')
        price = 30000
        proverka = 0
    skip = skip + 100

a = input('Нажмите enter для выхода:')