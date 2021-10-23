#!/bin/bash

# You can use this tool to search for subdomains.
# I created it to use as my own tool to find Subdomain Takeover
# vulnerabilities.
# You might are asking yourself "how can I use it to do that?".
# Let me explain. It will search for subdomains and will it will filter the
# alias row by row. When we find something dealing with clouds, we can
# test the Subdomain Takeover attack.

echo "---------------------------------------------------------------"
echo  "____    ___        ___   _"
echo "|  _ \  / \ \      / / \ | |"
echo "| | | |/ _ \ \ /\ / /|  \| |"
echo "| |_| / ___ \ V  V / | |\  |"
echo "|____/_/   \_\_/\_/  |_| \_|"
echo ""

echo "hello, have a great hacking! if you need something, you can"
echo "send me a direct message in my GitHub account."
echo "https://github.com/daniloalbuqrque"
echo "_______________________________________________________________"
echo ""
echo "Get there and see my others repos, you might find something"
echo "interesting."
echo ""
echo ""

echo "for the [ -a ] option we'll have to specify an URL, for example:"
echo ""
echo "./bruteforcedomains.sh -a URL [e.g. google.com]"
echo ""

while [ -n "$1" ]
 do
  case "$1" in
     -a)for word in $(cat 11m_sub_wordlist.txt);do
        host -t cname $word.$2 | grep "alias for"
        done;;
     -b) echo "I'm still doing it.";;
     -c) echo "Keep calm.";;
     -d) echo "Relax and use the first option for awhile";;
     -e) echo "To be continued";;
     -f) echo "Wait for more!";;
  esac
 shift
done
