#!/bin/bash
host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
export https_proxy=http://$host_ip:33210 http_proxy=http://$host_ip:33210 all_proxy=socks5://$host_ip:33211
