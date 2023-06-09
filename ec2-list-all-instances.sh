
for account in $(cat /Users/chrskly/.aws/profiles); do
    for region in `aws ec2 describe-regions --profile ${account} --region us-east-1 --output text | cut -f4`; do
        aws ec2 describe-instances --profile ${account} --region ${region} | jq '.Reservations[].Instances[].Tags' | grep -A1 Name | grep Value | sort | uniq | cut -d':' -f2 | sed 's/\"//g'
    done
done
