ID=$(uuidgen) && aws route53 create-hosted-zone --name k8s.o4sstag.com --caller-reference $ID --vpc vpc-48f4992f | \
    jq .DelegationSet.NameServers