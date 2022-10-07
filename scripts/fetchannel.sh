#!/bin/sh

API_KEY=yourapikey
CHANNEL_ID=channelid

fetchSubCount () {
  curl "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=${CHANNEL_ID}&fields=items/statistics/subscriberCount&key=${API_KEY}" 2>/dev/null | grep "subscriberCount" | cut -d ':' -f 2 | xargs
}

fetchSubCount;
