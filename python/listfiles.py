#!/bin/python3
import os


basepath = '/mnt/'

def filelist():
    with os.scandir(basepath) as entries:
         for entry in entries:
             if entry.is_file():
                 print(entry.name)
  
                
    return entry.name


files = filelist()
print(files)
