import requests as r
import time as t
import base64
import rsa
from bs4 import BeautifulSoup as bs
import uuid
import json
import colorama as cl
import steampy.guard
from json import JSONDecodeError


guard_shared = ''
login = ''
password = ''
pin = ''
url = ''
api_key = ''
with open ('dannie.txt','r') as f:
    pars = f.read().splitlines()
guard_shared = pars[0]
login = pars[1]
password = pars[2]
pin = pars[3]
url = pars[4]
api_key = pars[5]
custom = pars[6]


def auth(login,password):
    s = r.Session()
    guard = steampy.guard.generate_one_time_code(guard_shared) #указыаем shared secreet
    URL = 'https://steamcommunity.com/login/getrsakey/'
    t.sleep(4)
    req_one = s.post(URL,data={'donotcache':t.time()*1000, 'username':login})
    j = req_one.json()
    mod = int(j['publickey_mod'], base=16)
    exp = int(j['publickey_exp'], base=16)
    code = base64.b64encode(rsa.encrypt(password, rsa.PublicKey(mod, exp)))
    URL = 'https://steamcommunity.com/login/dologin/'
    data = {
        'donotcache':t.time()*1000,
        'password':code ,
        'username':login,
        'twofactorcode' : guard ,
        'captchagid':str(str(-1)),
        'rsatimestamp':j['timestamp'],
    }
    s.post(URL, data=data)
    req = s.get('https://csgoempire.com/login') # url in auth
    resp = req.text
    soup = bs(resp, 'html.parser')
    action = soup.select('input[name="action"]')[0]['value']
    openidmode = soup.select('input[name="openid.mode"]')[0]['value']
    openidparams = soup.select('input[name="openidparams"]')[0]['value']
    nonce = soup.select('input[name="nonce"]')[0]['value']
    datas = {
        "action":action,
        "openid.mode":openidmode,
        "openidparams":openidparams,
        "nonce":nonce
    }
    s.post('https://steamcommunity.com/openid/login',data=datas)
    t.sleep(4)
    data_url = data_url = {
    "trade_url":url,
    'steam_api_key':api_key}
    url_post = s.post('https://csgoempire.com/api/v2/trade/steam/url',data=data_url).json
    t.sleep(4) 

    #with open('base.json','r', encoding='utf8') as base: 
    #    decoded = json.load(base)
    #items = [item['name'] for item in decoded['items']]   
    #t.sleep(4)

    while True:
        data_token =  {"code":pin ,"uuid":str(uuid.uuid4())}
        token = s.post('https://csgoempire.com/api/v2/user/security/token',data=data_token).json()
        
        for i in token:
            if 'error' in i:
                s = r.Session()
                guard = steampy.guard.generate_one_time_code(guard_shared) #указыаем shared secreet
                URL = 'https://steamcommunity.com/login/getrsakey/'
                t.sleep(4)
                req_one = s.post(URL,data={'donotcache':t.time()*1000, 'username':login})
                j = req_one.json()
                mod = int(j['publickey_mod'], base=16)
                exp = int(j['publickey_exp'], base=16)
                code = base64.b64encode(rsa.encrypt(password, rsa.PublicKey(mod, exp)))
                URL = 'https://steamcommunity.com/login/dologin/'
                data = {
                'donotcache':t.time()*1000,
                'password':code ,
                'username':login,
                'twofactorcode' : guard ,
                'captchagid':str(str(-1)),
                'rsatimestamp':j['timestamp']}
                s.post(URL, data=data)
                req = s.get('https://csgoempire.com/login') # url in auth
                t.sleep(4)
                resp = req.text
                soup = bs(resp, 'html.parser')
                action = soup.select('input[name="action"]')[0]['value']
                openidmode = soup.select('input[name="openid.mode"]')[0]['value']
                openidparams = soup.select('input[name="openidparams"]')[0]['value']
                nonce = soup.select('input[name="nonce"]')[0]['value']
                datas = {
                "action":action,
                "openid.mode":openidmode,
                "openidparams":openidparams,
                "nonce":nonce}
                s.post('https://steamcommunity.com/openid/login',data=datas)
                t.sleep(4)
                data_url = data_url = {
                "trade_url":url,
                'steam_api_key':api_key}
                url_post = s.post('https://csgoempire.com/api/v2/trade/steam/url',data=data_url).json
                t.sleep(4)    
            if 'error' not in i:
                token_post = token['token']
                t.sleep(4)
                get_balance = s.get('https://csgoempire.com/api/v2/user').json()
                t.sleep(4)
                balance = get_balance['balance']
                try:
                    invent = s.get('https://csgoempire.com/api/v2/p2p/inventory/2').json()
                   
                except:
                    t.sleep(15)
                    invent = s.get('https://csgoempire.com/api/v2/p2p/inventory/2').json()
                print(invent)
                for i in invent: 
                    if i['market_name'] in items:
                    
                        bot_id = i['bot_id']
                        assetid = i['assetid']
                        if 'custom_price' not in i:
                            if 'bundle_id' in i:
                                if i['bundle_id'] == None:
                                    if i['market_value'] <= balance:
                                        data_withdraw = {
                                        "item_ids":[assetid],
                                        "bot_id":bot_id,
                                        "security_token":token_post}
                                        url_post = s.post('https://csgoempire.com/api/v2/trade/steam/url',data=data_url).json
                                        withdraw = s.post('https://csgoempire.com/api/v2/trade/withdraw',json=data_withdraw).json()
                                        print('Popitka vivoda',i['market_name'], i['market_value'])
                                        if withdraw['success'] == False:
                                            t.sleep(120)
                                        if withdraw['success'] == True:
                                            print('Vivod: ',i['market_name'], i['market_value'])
                                            t.sleep(800)
                                      
                        else:
                            buf = int(i['custom_price'])
                            if buf <= custom:
                                if 'bundle_id' in i:
                                    if i['bundle_id'] == None:
                                        if i['market_value'] <= balance:
                                            data_withdraw = {
                                            "item_ids":[assetid],
                                            "bot_id":bot_id,
                                            "security_token":token_post}
                                            url_post = s.post('https://csgoempire.com/api/v2/trade/steam/url',data=data_url).json
                                            withdraw = s.post('https://csgoempire.com/api/v2/trade/withdraw',json=data_withdraw).json()
                                            print('Popitka vivoda',i['market_name'], i['market_value'])
                                            if withdraw['success'] == False:
                                                t.sleep(120)
                                            if withdraw['success'] == True:                                            
                                                print('Vivod: ',i['market_name'], i['market_value'])
                                                t.sleep(800)       
        t.sleep(10)    

auth(login,password.encode()) 
