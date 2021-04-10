#!/bin/python3
from datetime import date
 
 
today = date.today()
fdate = date.today().strftime('%d/%m/%Y')
 
print("Today's current date is -", today)
print("Date in dd/mm/YYYY format -", fdate)
