# Emby-Health-Checker
This script will automatically start Emby if detected as not running
Story
--
I was having a weird issue (on Debian 7 x64) that makes Emby crash everytime, so I made a simple bash script that will automatically start Emby once detected as not running. This script might help people who are facing the same issue.
I'm now running Emby on Ubuntu 14.04 x64 and I don't have this issue anymore.

Usage
--
* wget --no-check-certificate https://raw.githubusercontent.com/ArtyumX/Emby-Health-Checker/master/emby-health.sh
* chmod +x emby-health.sh
* ./emby-health.sh &
