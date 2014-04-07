import csv
import sys
with open(slump_file, "rb") as infile, open(slump_csv_file, 'wb') as outfile:
    in_txt = csv.reader(infile, delimiter = ',')
    out_csv = csv.writer(outfile)
    out_csv.writerows(in_txt)
