import csv
import json

csvf = open('slump.csv', 'r')
jsonf = open('slump.json', 'w')
field_Names = ("id","title")
reader = csv.DictReader( csvf, field_Names)
for row in reader:
    json.dump(row, jsonf)
    jsonfile.write('\n')
