try:
    import requests
    import time
    import re
    import os
    def trash_log(text):
        with open('erorr','a',encoding="UTF-8") as f:
            f.write(str(text)+'\n')
    def quality_oip(ttt):
        yyy = {'Well-Worn':'WW','Field-Tested':'FT','Minimal Wear':'MW','Factory New':'FN','Battle-Scarred':'BS'}
        return yyy[str(ttt)]
    head = {'user-agent': "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 YaBrowser/21.2.3.100 Yowser/2.5 Safari/537.36"}  
    
    with open('example.txt','r',encoding='UTF-8') as f:
        guns = f.read().split('\n')
        guners_name = []
        ful_gun = []
        for gun in guns:
            if len(gun) < 5:
                continue
            gun_name = gun.split(':')[0]
            if gun_name in guners_name:
                continue
            else:
                guners_name.append(gun_name)
                ful_gun.append(gun)
    
    with open('result__0.txt','a',encoding='UTF-8') as f:
        f.write('\n'.join(ful_gun))
    # input()
    checking_price_in_steam = []
    del_guns = []
    item_del_count = 0
    for gun in guners_name:
        if not len(gun) > 3:
            continue
        try:
            try:
                ggunn = str(gun).split(' (')
                quality = ggunn[-1].replace(')','')
            except:
                trash_log(gun)
                continue
            gun_name = str(gun).replace(f' ({quality})','')
            code_quality = quality_oip(quality)
            gun0 = f'{gun_name}&exact=0&exterior={code_quality}'.replace('|','%7C').replace(' ','%20')
            if 'StatTrak' in gun_name:
                url = f'https://waxpeer.com/api/data/index/?skip=0&sort=asc&game=csgo&all=0&search={gun0}&stat_trak=1'
            else:
                url = f'https://waxpeer.com/api/data/index/?skip=0&sort=asc&game=csgo&all=0&search={gun0}&stat_trak=0'
            resp = requests.get(url, headers=head)
            try:
                first_position = resp.json()['items'][0]
                price_gun = first_position['price']
                price0 = str(int(price_gun)/1000)+'$'
                if price_gun > 2000:
                    pass
                    # no_del_guns_sorted.append(gun)
                else:
                    item_del_count += 1
                    del_guns.append(gun)
                    print(f'del_item = {item_del_count} del = {gun} price = {price_gun}')
                print(f'working pars on waxpeer gun = {gun}')
            except:
                print(f'NO ITEMS ON WAXPEER {gun}')
                checking_price_in_steam.append(gun)
            time.sleep(1)
        except Exception as e:
            trash_log(gun)

    for gun_insteam in checking_price_in_steam:
        i = 0
        while i < 12:
            try:
                i += 1
                print(f'trying pars on steam... gun = {gun_insteam}')
                resp = requests.get(f'https://steamcommunity.com/market/search?',params={'appid':'730','q':f"{gun_insteam}"},headers=head)
                hre0 = r'data-appid="730" data-hash-name="(.*?)".*?class="normal_price".*?data-currency=".*?">(.*?)<'
                ala = re.findall(hre0,resp.text,re.DOTALL)
                for gun in ala:
                    if gun[0] == gun_insteam:
                        price0 = str(gun[1]).replace(',','')
                        print(f'success pars on steam price = {price0}')
                        i = 13
                time.sleep(7+i)
                if i == 10:
                    print('erorr on pars steam price')
                    trash_log(gun)
                    break
            except:
                pass
        price = int(price0.replace('USD','').replace(' ','').replace('$','').replace('.',''))
        if price > 200:
            pass
            # no_del_guns_sorted.append(gun_insteam)
        else:
            item_del_count += 1
            del_guns.append(gun_insteam)
            print(f'del_item = {item_del_count} del = {gun_insteam} price = {price0}')
        time.sleep(5)





    with open('result__0.txt','r',encoding='UTF-8') as f:
        gun00 = f.read().split('\n')
    for checking in ful_gun:
        try:
            checking0 = str(checking).split(':')[0]
            # print(checking)
            if checking0 in del_guns:
                gun00.remove(checking)
                print(f'remove {checking}')
        except:
            trash_log(checking)
    with open('result_Number=1.txt','a',encoding='UTF-8') as f:
        f.write('\n'.join(gun00))
    # print(no_del_guns_sorted)
    input('complete')
    os.remove('result__0.txt')
except Exception as e: 
    print(e)
    input()
'''
gun_name = ''
quality = '' # to FT MW and other!!!!!!!!!!!
gun = f'{gun_name}&exact=0&exterior={quality}'    #'AK-47 | Bloodsport&exact=0&exterior=FT'

 # AK-47%20%7C%20Bloodsport&exact=0&exterior=FT



'''