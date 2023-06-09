#!/usr/bin/env bash

for account in $(cat /Users/chrskly/.aws/profiles); do
    for region in `aws ec2 describe-regions --profile ${account} --region us-east-1 --output text | cut -f4`; do
        aws rds describe-db-instances --profile ${account} --region ${region}
    done
done
