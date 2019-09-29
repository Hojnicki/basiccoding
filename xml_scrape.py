#Set up the template
template = 'https://www.ncdc.noaa.gov/cag/statewide/rankings/%s-tavg-%s%s/data.xml'
parameter = 'Average Temperature'
state = '44'
month = '08'
year = '2018'
URL = template  % (state, year, month)
period = 4 #Apr-Aug 2018 code number

#Check to ensure it works
#print(URL)

#import packages
import requests
from lxml import objectify

#pull data and put it in correct format
response = requests.get(URL).content
root = objectify.fromstring(response)

#Check work
#print(response)

#Print out requested data for homework
print('W&M username: schojnicki')
print('Value: ', root.data[period].value)
print('Mean: ', root.data[period].mean)
print('Departure: ', root.data[period].departure)
print('Low Rank: ', root.data[period].lowRank)
print('High Rank: ', root.data[period].highRank)