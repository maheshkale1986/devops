#!/bin/python3
import boto3
s3_ob = boto3.resource('s3')
for bucket in s3_ob.buckets.all():
    print(bucket.name)

my_bucket = s3_ob.Bucket('maheshkale1186')
for s3_obj in my_bucket.objects.all():
    files = s3_obj.key
    my_bucket.download_file(s3_obj.key, files)
