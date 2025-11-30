#!/bin/bash
# from Barry A Scott - https://discussion.fedoraproject.org/u/barryascott/summary
URL=https://discord.com/api/download/stable?platform=linux&format=tar.gz
DT=~/tmpdir/discord.tmp
rm -rf ${DT}
mkdir -p ${DT}
cd ${DT}
curl -L "https://discord.com/api/download/stable?platform=linux&format=tar.gz" -o discord.tar.gz
tar xf discord.tar.gz
if ! diff -u ~/bin/Discord/resources/build_info.json Discord/resources/build_info.json
then
    echo "Discord Needs update"
    rm -rf ~/bin/Discord.previous
    if [[ -e ~/bin/Discord ]]
    then
        mv ~/bin/Discord ~/bin/Discord.previous
    fi
    mv ${DT}/Discord ~/bin
    echo "Updated!"
else
    echo "Discord is up to date"
    cat ~/bin/Discord/resources/build_info.json
fi
