#!/bin/bash
CurrentPath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PreferredServers='/etc/nordvpn/PreferredServers' && cd ${PreferredServers}
echo `curl -s ifconfig.me` > ${CurrentPath}/RealPubIP
PreferredCountry=${1:-au}
Server=`ls | grep $PreferredCountry | sort -R | tail -1`
echo ${Server} > ${CurrentPath}/CurrentServer
/usr/sbin/openvpn --daemon --writepid /var/run/openvpn/nordvpn.pid --config ${Server}
