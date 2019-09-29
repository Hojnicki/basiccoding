from bs4 import BeautifulSoup  # Parsing HTML
import requests  # Internet information requests

#Bring in data from the website
htmlPath = 'http://publicinterestlegal.org/county-list/'
headers = {'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'}
htmlDoc = requests.get(htmlPath,headers=headers).content

#Parse the data
parsed_html = BeautifulSoup(htmlDoc,'lxml')

#Find all rows required
target_rows = parsed_html.find_all('tr') #used tr because there was no unique ids and I required all entries on the table
    
#Iterate through rows to build a list of just the data needed without tags
all_rows = []  # set up an empty list in which to store the data 
for row in target_rows:
    new_row = []   #create empty list to store the data from the next row
    for field in row.find_all('td'):
        new_row.append(field.text)   # append next data point to the current row list
    all_rows.append(new_row)        # append current row data list to overall list

#Print out required information
print('WM username: schojnicki')
print('Number of sublists found:',len(target_rows))
print('List of sublists: ', all_rows)