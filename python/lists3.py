#!/bin/python3
import boto3
s3_ob = boto3.resource('s3')
for bucket in s3_ob.buckets.all():
    print(bucket.name)
