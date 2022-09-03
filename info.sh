#!/bin/bash
# thanks for taking a look at my profile!

# terminal formatting:
__reset=$(tput sgr0)
__bold=$(tput bold)

# script:
# the below stars might not show up for you (for me they work in the terminal but not in nano!)
echo " "
echo "⭐️ gio's profile! ⭐️ ======================================= ⭐️"
echo "🏃🏾 ${__bold}about me${__reset}:         he/him; excitable programmer"
echo "🌎 ${__bold}location${__reset}:         Australia/Perth (AWST, +0800)"
echo "📖 ${__bold}current projects${__reset}: usbselfserial, DarwinPrint"
echo "📖 ${__bold}known languages${__reset}:  C++, C, Java, C#, JS, TS, HTML, CSS, Python, PHP, Bash"
echo "📖 ${__bold}contact${__reset}:          lotuspar0@gmail.com"
echo " "

# save more details to /tmp/gio.txt
echo "saving more details to /tmp/gio.txt..."

# see if we can make /tmp/gio.txt
touch /tmp/gio.txt &> /dev/null
if [ $? -ne 0 ]
then
    echo "🙁 couldn't make /tmp/gio.txt"
    echo "but that's ok! you can see it @ https://github.com/lotuspar"
    exit 0 # it shouldn't be a success but lets just exit like it was :)
fi

# remove the file we just made
rm /tmp/gio.txt

# check if we have curl and can just download the file from GitHub
which curl &> /dev/null
if [ $? -ne 0 ]
then
    echo "🙁 couldn't find curl to download extra info"
    echo "but that's ok! you can see it @ https://github.com/lotuspar"
    echo "and while I could bundle the extra info with this script (info.sh),"
    echo "updating the extra info would need to be replicated in 3 places!"
    exit 0
fi

# download extra info with curl to /tmp/gio.txt
curl -sL https://raw.githubusercontent.com/lotuspar/lotuspar/main/extrainfo.txt -o /tmp/gio.txt
if [ $? -ne 0 ]
then
    echo "🙁 failed to download extra info"
    echo "but that's ok! you can see it @ https://github.com/lotuspar"
    exit 0
fi  

echo "done!"
