import requests as r
import colorama as cl
import time as t
from steampy.client import SteamClient

steam_key = ''
api_key = ''
login = ''
password = ''

savemessage= ''


print(cl.Fore.RED +'Start = ' + t.ctime(t.time()))
  

while True:
    def ping():
        URL = 'https://market.csgo.com/api/v2/ping?3key=' + api_key
        response = r.get(URL).json()
    
        if response['success'] == True :
            print(cl.Fore.GREEN + 'Включил продажи ')
            print(cl.Fore.YELLOW + 'Перезапустил продажи ')


    def get_money():
        URL = 'https://market.csgo.com/api/v2/get-money?key=' + api_key
        response_get_money = r.get(URL).json()
        print(cl.Fore.RED + '---------------------------------')
        print(cl.Fore.RED + 'Ваш баланс ' + str(response_get_money['money']) + str(response_get_money['currency']) )

   
    def get_my_steam_id():
        URL = 'https://market.csgo.com/api/v2/get-my-steam-id?key=' + api_key
        response = r.get(URL).json()
        print(cl.Fore.RED +'Ваш STEAMID64 ' + str(response['steamid64'] ))
        print(cl.Fore.RED + '---------------------------------')
    

    
   
    def rename_prices():
        URL = 'https://market.csgo.com/api/v2/items?key='+ api_key 
        respone_items = r.get(URL).json()
        print(respone_items)
        if respone_items['items'] == None:
            print('Предметы не выставлены вами на продажу')
        for i in respone_items['items']:
            URL= 'https://market.csgo.com/api/v2/search-item-by-hash-name?key='+ api_key + '&hash_name=' + i['market_hash_name']
            respone_search = r.get(URL).json()
            for j in respone_search['data']:
                URL = 'https://market.csgo.com/api/v2/set-price?key='+ api_key + '&item_id='+ i['item_id']+ '&price=' + str(j['price']/100-0.01)+'&cur=RUB'
                respone_set_price = r.get(URL).json()
        
                if respone_set_price['success'] == True:
                    print(cl.Fore.GREEN + 'Цена обновлена',i['market_hash_name'],j['price']/100-0.01)
                else:
                    print(cl.Fore.RED + 'Цена не обновлена') 
    def check_na_trade():
        URL = 'https://market.csgo.com/api/v2/items?key=' + api_key
        response = r.get(URL).json()    
        for i in response['items']:
            if i['status'] == 2 : 
                URL = 'https://market.csgo.com/api/v2/trade-request-give-p2p?key=' + api_key
                response_trade_tm = r.get(URL).json() 
                if response_trade_tm['success'] == True : 
                    print(response_trade_tm['offer'])
                    for q in response_trade_tm['offer']: 
                        steam_client = SteamClient(steam_key) 
                        steam_client.login(login, password, 'C:/Users/Олег/Desktop/say1j_1047dh0g6lah3e8ip47.mafile') 
                        my_offers = steam_client.get_trade_offers()['response']['trade_offers_received'] 
                        for offer in my_offers: 
                            if offer['message'] == q['tradeoffermessage']: 
                                offer_id = offer['tradeofferid']
                                steam_client.accept_trade_offer(offer_id) 
                else:
                    rename_prices()  
           

        
    
    

    ping()
    get_money()
    get_my_steam_id()
  
  
    check_na_trade()
    rename_prices()
    t.sleep(180)
  
   

