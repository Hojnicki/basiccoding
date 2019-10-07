# -*- coding: utf-8 -*-
"""
@author: schojnicki
"""
# Determine start time
import time
start = time.time()

def loadKnapsack(items,knapsack_cap):
    bagged = []
    load = 0.0            # use this variable to keep track of how much volume is already loaded into the backpack
    value = 0.0           # value in knapsack
        
    #sort list by dividing value by volume to get a contribution ratio
    items = sorted(items, key=lambda tup:tup[2]/tup[1], reverse = True)
    
    #iterate through list adding items until knapsack is filled
    for item in items:
        #print('Capacity =', knapsack_cap)
        #print("item # ", item, ": ", load, "+ ", items[item][0], "= ", items[item][0] + load, "< ", knapsack_cap, " packed value = ", value)
        #print(value, "+ ", items[item][1], "= ", items[item][1] + value)
        if cap >= load + item[1]:
            pack_item = item
            bagged.append(pack_item)
            load += item[1]
            value += item[2]
            continue
items = (
    ("Item 1", 382745, 825594), ("Item 2", 799601, 1677009), ("Item 3", 909247, 1676628), ("Item 4", 729069, 1523970), ("Item 5", 467902, 943972), ("Item 6", 44328, 97426), ("Item 7", 34610, 69666), ("Item 8", 698150, 1296457), ("Item 9", 823460, 1679693), ("Item 10", 903959, 1902996), ("Item 11", 853665, 1844992), ("Item 12", 551830, 1049289), ("Item 13", 610856, 1252836), ("Item 14", 670702, 1319836), ("Item 15", 488960, 953277), ("Item 16", 951111, 2067538), ("Item 17", 323046, 675367), ("Item 18", 446298, 853655), ("Item 19", 931161, 1826027), ("Item 20", 31385, 65731), ("Item 21", 496951, 901489), ("Item 22", 264724, 577243), ("Item 23", 224916, 466257), ("Item 24", 169684, 369261),
    )
cap = 6404180 #capacity of the bag

print("Knapsack contains the following items\n  " +
      '\n  '.join(sorted(item for item,_,_ in bagged)))

print("For a total value of %i and a total volume of %i" % (value, load))

# Determine ending time
end = time.time()

# Print total time.
print("For a total time in seconds of ")
print(end - start)
