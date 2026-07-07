#!/bin/bash

echo "Testing Host A -> Host B"

docker exec host-a ping -c 4 10.222.20.100

echo
echo "Checking IPsec status"

docker exec gateway-a ipsec status

echo
echo "Checking XFRM policies"

docker exec gateway-a ip xfrm state
