import requests as r
from urllib.parse import quote,unquote
import time as t
def get():
    with open('stikers.txt','r') as f:
        stikers = f.read().splitlines()
    for i in range(len(stikers)):  
        name = stikers[i]
        name_stiker = name
        chast = name.split('(')
        event = chast[1].split('|')
        first_chast = chast[0]
        pars_mid_chast = chast[1].split('|')
        a = pars_mid_chast[0]
        b = a.split(' ')
        mid_chast = '('+ b[0]
        end_chast = quote(' ')+ '|' + quote(event[1])
        last = quote(first_chast) + mid_chast + end_chast  
        print(last)
      

        try:
            search_get = r.get('https://vmarket.gg/api/marketplace/item-specs/browse?page=1&appId=730&csgoStickerSearch='+last,timeout=5)
            print(search_get.text)
            if len(search_get) != 0:
                parse = search_get[0]
                post_file = open ('search.txt','a')
                post_file.write('Стикер: '+str(name_stiker)+ ' Скин: '+ str(parse['name']) +'\n')
                t.sleep(0.1)
                post_file.close()

        except:
            
            t.sleep(1)
            get()
      

get()