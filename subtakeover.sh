#!/bin/bash

# You can use this tool to search for subdomains.
# I created it to use as my own tool to find Subdomain Takeover
# vulnerabilities.
# You might are asking yourself "how can I use it to do that?".
# Let me explain. It will search for subdomains and will it will filter the
# alias row by row. When we find something dealing with clouds, we can
# test the Subdomain Takeover attack.

echo "_______________________________________________________________"
echo  "____    ___        ___   _"
echo "|  _ \  / \ \      / / \ | |"
echo "| | | |/ _ \ \ /\ / /|  \| |"
echo "| |_| / ___ \ V  V / | |\  |"
echo "|____/_/   \_\_/\_/  |_| \_|"
echo ""

echo "hello, happy hacking"

echo ""

echo "GitHub account: https://github.com/daniloalbuqrque"
echo "_______________________________________________________________"
echo ""
echo ""
echo "for the [ -a ] option we have to specify an URL, for example:"
echo ""
echo "./subtakeover.sh -a URL [e.g. google.com]"
echo ""

while [ -n "$1" ]
 do
  case "$1" in
     -a)for word in $(cat 11m_sub_wordlist.txt);do
        host -t cname $word.$2 | grep "alias for"
        done;;
     -*) echo "I'm still doing it.";;
  esac
 shift
done
