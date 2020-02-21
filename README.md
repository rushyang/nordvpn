## NordVPN auto Connect/Restart with OpenVPN, Preferred Servers & Systemd Unit
### Motivation:
Connecting to your preferred VPN Service provider (I prefer and use NordVPN) using OpenVPN on Raspberry Pi (or any {Li,U}nix OS from Command Line). Current examples everywhere on internet was mostly how to connect to a single server of your VPN Provider using OpenVPN via terminal. There were several drawbacks of this. 
- Choosing server & starting VPN Connection manually
- No auto-reconnect if connection is interrupted/lost
- And many more I do not even want to remember!
I did not want to keep connecting to the single server or not connected to VPN if connection is somehow lost. Hence, set something simple up by connecting pieces together. Not a rocket science!
### Steps:
- [x] Gather list of Preferred Servers ovpn from your provider in one location (I used: /etc/nordvpn/PreferredServers)
- [x] Know how to provide password in them (bulk-edit them via sed command and append "creds" at end of line: auth-user-pass - where "creds" has your - username in first line and password in second) - You may see [This Example](https://torguard.net/knowledgebase.php?action=displayarticle&id=138)
- [x] Download and edit ConnectVPN.sh as per needs. I keep preferred servers in au (Australia).
- [x] See nordvpn.service example here and prepare your Systemd unit file in /usr/lib/systemd/system and then reload systemd config manager (systemctl daemon-reload)
### Optional:
- Used cron to setup auto switch to different server via just restarting unit! 

** Have Fun! **
