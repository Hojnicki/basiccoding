#import package
import requests

#scrape data
search_url = 'https://buckets.peterbeshai.com/api/?player=201939&season=2015'
header = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36"}
response = requests.get(search_url, headers=header)

root=response.json()

#test response
#print(response.json())

#set count variables
jump_shot = 0
made_shot = 0
shots = root

#iterate through list
print(type(shots))
for shot in shots:
    for k,v in shot.items():
        if v == 'Jump Shot':
            jump_shot = jump_shot + 1
            for k,v in shot.items():
                if v == 'Made Shot':
                    made_shot = made_shot + 1

#calculate percentage and format it
percentage = made_shot/ jump_shot
percentage = "{:.2%}".format(percentage)

#print required data
print('W&M username: schojnicki')
print('Number of Jump Shots: ', jump_shot)
print('Number of Made Shots: ', made_shot)
print('Percentage of Jump Shots Made: ', percentage)