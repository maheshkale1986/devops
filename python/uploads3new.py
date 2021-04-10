#!/bin/python3
import os
import boto3

basepath = '/mnt/'

with os.scandir(basepath) as entries:
         for entry in entries:
             if entry.is_file():
                 print(entry.name)

                 s3_ob = boto3.client('s3')
                 s3_ob.upload_file("entry.name","maheshkale1186","entry.name")

